# Part-4 
# 矿物辞典修改与矿典合成
# 作者：酒石酸
# 2017年8月4日

print("Initializing OreDictRecipes...");

// 添加矿物辞典;
// 给生猪肉添加一个铁的矿物辞典。
<ore:ingotIron>.add(<minecraft:porkchop>);

// 移除矿物辞典；
// 将铁锭的矿物辞典移除。
<ore:ingotIron>.remove(<minecraft:iron_ingot>);

// 创建一个矿物辞典，和添加矿物辞典句法一致；
// 当矿物辞典不存在时，会自动创建一个新的，比如此处给钻石创建一个叫做 baka943 的矿物辞典。
<ore:baka943>.add(<minecraft:diamond>);

// 矿物辞典参与合成；
// 和上一部分讲过的合成句法一致，只不过将物品ID换成了矿物辞典而已。
recipes.addShaped(<minecraft:dirt>,
	[[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>],
	 [<ore:ingotIron>,              null, <ore:ingotIron>],
	 [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]]
);

print("Initialized OreDictRecipes");