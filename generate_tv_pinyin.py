"""Regenerate the offline TV input table using pypinyin 0.55.0 (MIT).

Install the build-only dependency under tools/pinyin-build. The APK uses the
generated data file directly and does not contact a keyboard service.
"""
from pathlib import Path
from collections import Counter, defaultdict
import json
import shutil
import sys

ROOT = Path(__file__).resolve().parent
sys.path.insert(0, str(ROOT / "tools/pinyin-build"))
from pypinyin.constants import PINYIN_DICT, PHRASES_DICT
from pypinyin.contrib.tone_convert import to_normal

common = (
    "的一是不了人我在有他这为之大来以个中上们到说国和地也子时道出而要于就下得可你年生自会那后能对着事其里所去行过家十用发天如然作方成者多日都三小军二无同么经法当起与好看学进种将还分此心前面又定见只主没公从很最动间长使民次些向样"
    "现先线显仙新心信星行醒西喜希戏细系习险限逆你呢年南男难宁牛女内能人认任仁忍热日如入然让容荣若弱山上生声胜升深神身甚沈什手首受收守书数术树叔水谁说顺双世是十时实识事师诗士史试视市食始式石使示室时"
    "花华话化画划海还孩害高告搞各歌格哥给跟更工公共功古故谷顾关观管馆光广归鬼贵国果过王往网忘望为维微伟威卫位未文问闻温我握五无舞武物务吴悟西夕夏侠下仙先现贤线相想向乡香湘象像项肖小笑校晓孝新心欣信星兴醒修秀休许序续徐需雪学血寻巡迅训影应英鹰映音因银隐引印一以已意义亿易衣医依伊异亦艺翼忆乙益役译疑"
    "爱安暗案岸傲八巴把爸白百败拜班半办伴宝保包报暴北背被本奔比必毕笔便变边别冰兵病波播博步不部补布才财采彩菜参残藏草曹曾茶差查察长常场唱超朝车陈沉城成程承诚吃池迟赤冲充虫重宠丑愁仇出初楚处传川穿船窗床创春纯村存错达打答大代带待丹单担弹但当党刀倒到德登等低弟地帝第点电丁定东冬董动斗都独毒读渡杜段断队对多夺朵俄恶饿恩儿而尔耳二发法反翻凡烦繁范返犯饭方房防仿放飞非肥废分纷奋份风封疯峰冯锋逢佛否夫肤扶服浮福父付妇复副傅富负赴附该改盖干甘赶感刚岗钢港高稿告哥歌格隔革个各给根跟更耕工功攻公宫恭共供贡狗够构孤姑古骨谷股鼓顾故固挂怪关官观冠馆管惯光广归规鬼贵桂滚国果过还海害韩寒含汉航好号浩合何河和核黑很狠恨红洪宏鸿后候厚呼胡湖虎护户花华化话画怀坏欢环还缓幻黄皇凰回会汇婚魂活火伙或获机鸡积基激吉极即集及急级几己纪挤记计技继际季济既寄加家嘉佳假甲价架嫁坚间肩兼监简检减见件建剑健江姜将讲奖降交教角脚叫较接街阶结节杰解姐借介界今金津仅紧尽进近晋京经精惊睛景井警净敬竟镜九酒旧救就居局菊举剧巨句具拒据距君军均俊卡开凯看康抗考靠科可渴克客课肯空恐孔口苦库酷快宽款狂况矿亏葵困括拉啦来莱赖兰蓝栏篮懒烂狼郎廊朗浪老劳牢姥乐了雷累泪类冷离黎梨李里礼理力历立利丽励励连莲联恋练良梁粮凉两亮量辽聊了料列烈猎林临邻琳灵凌零龄令留流刘柳六龙隆楼露卢鲁路鹿录陆旅吕律虑绿乱论罗萝逻落洛络妈麻马码蚂吗买卖麦满慢漫忙毛矛茂冒貌么没梅美每妹门梦迷米密蜜秘免勉面妙灭民敏名明鸣命模摩魔末莫墨母木目幕慕拿哪那娜纳奶乃耐男南难囊闹呢内能你尼泥拟逆年念娘鸟宁牛农努怒暖诺女欧偶怕派排盘潘旁胖跑炮陪佩朋彭蓬碰皮疲匹篇偏片骗飘票拼贫频品平瓶坡破迫普铺朴七妻欺齐奇旗棋起企启岂气器弃汽千牵钱前浅潜欠枪强墙乔桥巧切且亲秦琴勤青轻清情晴请庆穷秋球求区曲取去全权泉拳却确群然燃染让饶绕热人仁忍任认仍日荣融容柔肉如入软瑞若弱三散桑丧扫色森杀沙莎啥山衫闪善伤商赏上少绍社涉谁什神沈深身申审甚生声胜省圣剩师诗失施狮十石时实识食史使始士示世市式事试视适室是释饰收手守首受授售瘦书叔舒输熟暑鼠属数术树束述率双水税睡顺说硕司思丝私斯死四寺似松宋送苏俗素速算虽随岁孙所锁索他她它台太态泰谈谭坛弹坦探唐堂糖倘躺趟涛逃陶桃讨套特疼腾提题体替天田甜填挑条调跳贴铁听厅停挺通同童铜统痛头投透图徒途土吐兔团推退腿吞托脱拖瓦外弯湾完玩王亡网往望忘危威微为围维伟尾委卫未位味温文闻稳问翁我沃握乌污屋无吴五午伍武舞物务误悟西希吸惜息溪习席袭洗喜戏系细隙夏霞侠狭峡下吓先仙鲜贤弦咸嫌显险县现线献乡香箱祥详享响想向项象像小晓笑校些协邪鞋写谢心辛欣新信星兴形型刑行醒幸性姓兄雄熊休修羞秀袖需徐许序续绪玄旋选宣悬学雪血寻巡询迅训压呀牙芽亚烟延严言炎沿研盐颜眼演验燕羊阳杨洋扬养氧样腰邀摇遥姚咬药要爷也野业叶页夜一衣医依伊仪宜疑移乙已以忆艺议亦亿义易意益异译翼因阴音银引隐饮印应英鹰迎赢营影映硬拥永勇用优忧尤由邮油游友有又右幼余鱼于予雨语宇玉遇育欲预誉原元园员圆源远愿院月约越乐云匀允运韵杂灾载再在咱暂赞早枣造则责择泽怎增曾扎炸宅债寨展张章长掌丈仗帐账障招找赵照折哲者这真珍诊阵镇争征整正政郑之支枝知芝织直职植执止只指纸至志制治质致智中忠钟终种众重周州舟洲轴竹逐主煮属助住注祝著朱珠诸猪专转赚庄装妆壮状追准桌卓着资滋姿子紫字自宗综总纵走奏族足祖组阻租最罪醉尊遵昨左作坐座做"
)
priority = {char: index for index, char in reversed(list(enumerate(common)))}
counts = Counter()
for phrase in PHRASES_DICT:
    counts.update(phrase)
table = defaultdict(set)
for codepoint, readings in PINYIN_DICT.items():
    if not 0x4E00 <= codepoint <= 0x9FFF:
        continue
    for reading in readings.split(","):
        normal = to_normal(reading, v_to_u=False).replace("ü", "v")
        if normal.isascii() and normal.isalpha():
            table[normal].add(chr(codepoint))
ranked = {
    key: "".join(sorted(chars, key=lambda c: (priority.get(c, 99999), -counts[c], ord(c))))
    for key, chars in sorted(table.items())
}
out = ROOT / "tv-adapter/tv-pinyin-data.js"
out.write_text(
    "/* Offline input data derived from pypinyin 0.55.0 / pinyin-data (MIT). */\n"
    "window.jpTvPinyin=" + json.dumps(ranked, ensure_ascii=False, separators=(",", ":")) + ";\n",
    encoding="utf-8",
)
shutil.copyfile(
    ROOT / "tools/pinyin-build/pypinyin-0.55.0.dist-info/licenses/LICENSE.txt",
    ROOT / "tv-adapter/pinyin-LICENSE.txt",
)
print(f"Generated {len(ranked)} syllables; {out.stat().st_size} bytes")
