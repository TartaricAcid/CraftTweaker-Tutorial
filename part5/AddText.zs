# Part-5 
# 名称修改与文本提示的添加
# 作者：酒石酸
# 2017年8月5日

print("Initializing AddText...");

// 将箱子命名成 社保 。
<minecraft:chest>.displayName = "社保";

// 给箱子添加一个文本提示（也就是所谓的 Tooltips）。
<minecraft:chest>.addTooltip("我TM社保");

// 如果要添加多行文本提示，需要重复好几次
<minecraft:porkchop>.addTooltip("味道好极喽");
<minecraft:porkchop>.addTooltip("巴适滴很");

// 还可以添加按下Shift才会显示的提示
<minecraft:chest>.addShiftTooltip("不！你只关心你的肾");

/*
	除此之外文本提示还可以设定字的颜色和样式
	
	颜色支持原版16种颜色：
	format.black
	format.darkBlue
	format.darkGreen
	format.darkAqua
	format.darkRed
	format.darkPurple
	format.gold
	format.gray
	format.darkGray
	format.blue
	format.green
	format.aqua
	format.red
	format.lightPurple
	format.yellow
	format.white
	
	样式有模糊，粗体，删除线，下划线，斜体：
	format.obfuscated
	format.bold
	format.strikethrough
	format.underline
	format.italic
*/

// 给拉杆添加一个红色的文本提示
<minecraft:lever>.addTooltip(format.red("这里是红色"));

// 多层样式镶套
// 给红石粉添加一个蓝色、删除线文本提示
<minecraft:redstone>.addTooltip(format.blue(format.strikethrough("蓝石粉")));

// 来几个更骚的操作
// 混合样式
<minecraft:elytra>.addTooltip(format.strikethrough("老子") + format.white("就是喜欢这个") + format.blue("天空"));

print("Initialized AddText...");










