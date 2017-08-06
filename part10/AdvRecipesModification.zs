# Part-10 
# 高级合成修改
# 作者：酒石酸
# 2017年8月5日

print("Initializing AdvRecipesModification...");

/*
	许多合成往往有特殊的要求；
	比如打板，需要返还工具，并且只消耗一点耐久；
	要么就是合成后不消耗任何耐久，直接返还
*/

// 合成后消耗一点耐久，记得一定要加anyDamage()，不然合成一次就没法合成了
recipes.addShapeless(<minecraft:gold_ingot>, 
	[<minecraft:golden_pickaxe>.anyDamage().transformDamage(), <minecraft:gold_ore>]
);

// 合成后直接返还，耐久不变
recipes.addShapeless(<minecraft:iron_ingot>, 
	[<minecraft:iron_pickaxe>.anyDamage().reuse(), <minecraft:iron_ore>]
);

// 合成后返还另外一个东西
// 比如石镐和煤矿石合成，得到煤炭，同时石镐变成了木棍
recipes.addShapeless(<minecraft:coal>, 
	[<minecraft:stone_pickaxe>.anyDamage().giveBack(<minecraft:stick>), <minecraft:coal_ore>]
);

print("Initialized AdvRecipesModification");







