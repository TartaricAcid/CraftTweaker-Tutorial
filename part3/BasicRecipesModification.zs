# Part-3 
# 基础合成修改
# 作者：酒石酸
# 2017年8月4日

/* 
	首先调用print函数，这个函数的目的是为了调试用；
	一开始就要养成良好的书写习惯，对于后期调试会极为方便；
	建议使用英文，当然中文也是可以的；
	这个函数会在游戏主文件夹下的 crafttweaker.log 中打印出这句话。
*/

print("Initializing BasicRecipesModification...");

/*
	接下来是添加一个有序合成，模板如下：
	recipes.addShaped(xxx, 
		[[xxx, xxx, xxx], 
		 [xxx, xxx, xxx], 
		 [xxx, xxx, xxx]]
	);
*/

// 8个铁锭围成一圈合成一个金锭
recipes.addShaped(<minecraft:gold_ingot>, 
		[[<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>], 
		 [<minecraft:iron_ingot>,                      null, <minecraft:iron_ingot>], 
		 [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]]
);
	
/*
	当然，对于ID比较长的物品，可以用变量名来代替；
	这里还是拿8个金锭围成一圈合成一个钻石举例子；
	首先设定一个名叫 gold 的变量名，来指代原版的金锭;
	接着设定一个名叫 diamond 的变量名，来指代原版的钻石。
*/
val gold = <minecraft:gold_ingot>;
val diamond = <minecraft:diamond>;

// 接下来合成表就可以这样写
recipes.addShaped(diamond, 
	[[gold, gold, gold], 
	 [gold, null, gold], 
	 [gold, gold, gold]]
);
	
/*
	那么如何获取物品ID呢？
	1. 游戏中按下 F3+H 可以显示物品ID，这是原版就有的功能。
	2. 【最为推荐】手持一个物品，输入 /mt hand 指令，即可输出手持物品ID，还能导出所持物品的NBT数据。
	3. 输入 /mt names 可以导出所有物品ID；输入 /mt blocks 可以导出所有方块ID，导出位置均在游戏主文件夹下的 crafttweaker.log 中。
*/

/* 
	无序合成
	recipes.addShapeless(xxx, 
		[xxx, xxx, xxx, xxx]
	);	
*/

/*
	比如这里就两个泥土换两个钻石吧；
	表示多个合成结果时候，只需要在后面加上 * 号并附上数量即可；
	空格是为了排版好看。
*/
recipes.addShapeless(<minecraft:gold_ingot> * 2, 
	[<minecraft:dirt>, <minecraft:dirt>]
);


/*
	合成的移除；
	合成也是可以移除的，使用方式和刚刚介绍的差不多。
	
	有三种移除方式
	1. 移除结果为xx的所有合成：
		recipes.remove(xxx);
	2. 移除特定有序合成：
		recipes.removeShaped(xxx, 
			[[xxx, xxx, xxx], 
			 [xxx, xxx, xxx], 
			 [xxx, xxx, xxx]]
		);
	3. 移除特定无序合成：
		recipes.removeShapeless(xxx, 
			[xxx, xxx, xxx, xxx]
		);
		
	需要注意的是，脚本是顺序执行的；
	如果要先移除合成，再添加合成，请务必注意顺序关系。
*/

// 移除铁块的合成
recipes.remove(<minecraft:iron_block>);

/*
	熔炉的合成修改；
	可以写成这样的形式，这样会移除符合输出条件的所有熔炉合成；
	furnace.remove(output);
	也可以这样写，这样只会移除符合输入输出条件的熔炉合成；
	furnace.remove(output, input);
	或者这样，直接移除熔炉的所有合成（我猜阿长一定会经常用这个）；
	furnace.removeAll();
*/

// 移除输出为铁锭的熔炉合成
furnace.remove(<minecraft:iron_ingot>);

/*
	添加熔炉合成：
	furnace.addRecipe(output, input, xp);
	其中xp一项是可以不写的。
*/

// 面包烧成木炭，还给99点经验
furnace.addRecipe(<minecraft:coal:1>, <minecraft:bread>, 99);

/*
	添加燃料：
	furnace.setFuel(input, burnTime);
	burnTime设置为0，和移除燃料是一个效果，燃烧时间为tick。
*/

// 一个可以燃烧10秒的面包
furnace.setFuel(<minecraft:bread>, 200);

// 最后，别忘记加个print的调试信息，告诉日志，脚本加载完了
print("Initialized BasicRecipesModification");



	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	