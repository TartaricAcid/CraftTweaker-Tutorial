# Part-11 
# ModTweaker简介
# 作者：酒石酸
# 2017年8月5日

/*	
	ModTweaker是CraftTweaker的一个附属模组；
	添加了许多模组的合成修改支持，目前1.10.2版本的支持这些模组：
		ActuallyAdditions
		BloodMagic
		Botania
		Chisel
		Embers
		Extrautils
		Forestry
		RandomThings
		RefinedStorage
		TinkerConstruct
	这一部分我们还会讲讲其他模组对CraftTweaker的支持。
		AstralSorcery
*/

// Actually Additions 实用拓展
/*
	原子再构机合成修改与移除
	mods.actuallyadditions.AtomicReconstructor.addRecipe(IItemStack output, 
		IItemStack input, 
		int energyUsed
	);
	mods.actuallyadditions.AtomicReconstructor.removeRecipe(IItemStack output);
*/
mods.actuallyadditions.AtomicReconstructor.addRecipe(
	<minecraft:fire_charge>,  // 输出物品
	<minecraft:coal:1>,       // 待转换的物品
	1000                        // 耗能
);
mods.actuallyadditions.AtomicReconstructor.removeRecipe(<minecraft:coal>);

/*
	毛球右击的掉落物修改与移除
	mods.actuallyadditions.BallOfFur.addReturn(IItemStack output, int chance);
	mods.actuallyadditions.BallOfFur.removeReturn(IItemStack output);
*/
mods.actuallyadditions.BallOfFur.addReturn(<minecraft:string>, 5);
mods.actuallyadditions.BallOfFur.removeReturn(<minecraft:coal>);

/*
	堆肥机修改与移除
	mods.actuallyadditions.Compost.addRecipe(
		IItemStack output, 
		IItemStack outputDisplay, 
		IItemStack input, 
		IItemStack inputDisplay
	);
	mods.actuallyadditions.Compost.removeRecipe(IItemStack output);
*/
mods.actuallyadditions.Compost.addRecipe(
	<minecraft:dirt>,      // 输出物品
	<minecraft:dirt>,      // 输出物品外观展示
	<minecraft:sugar>,     // 输入物品
	<minecraft:snow>       // 输入物品外观展示
);
mods.actuallyadditions.Compost.removeRecipe(<actuallyadditions:item_canola_seed>);

/*
	磨粉机配方修改与移除
	mods.actuallyadditions.Crusher.addRecipe(
		IItemStack output, 
		IItemStack input, 
		@Optional IItemStack outputSecondary, 
		@Optional int outputSecondaryChance
	);
	mods.actuallyadditions.Crusher.removeRecipe(IItemStack output);
*/
mods.actuallyadditions.Crusher.addRecipe(
	<minecraft:iron_ingot>,   // 输入物品
	<minecraft:iron_ore>,     // 输入物品
	<minecraft:stone>,        // 【可选】输出副产物
	50                          // 【可选】输出副产物几率，0~100
);
mods.actuallyadditions.Crusher.removeRecipe(<minecraft:gold_ore>);

/*
	充能台配方修改与移除
	mods.actuallyadditions.Empowerer.addRecipe(
		IItemStack output, 
		IItemStack input, 
		IItemStack modifier1, 
		IItemStack modifier2, 
		IItemStack modifier3, 
		IItemStack modifier4, 
		int energyPerStand, 
		int time, 
		@Optional float[] particleColourArray
	);
	mods.actuallyadditions.Empowerer.removeRecipe(IItemStack output);
*/
mods.actuallyadditions.Empowerer.addRecipe(
	<minecraft:gold_ingot>,     // 输出物品
	<minecraft:iron_ingot>,     // 充能台
	<minecraft:redstone>,       // 物品展示台1
	<minecraft:redstone>,       // 物品展示台2
	<minecraft:redstone>,       // 物品展示台3
	<minecraft:redstone>,       // 物品展示台4
	500,                          // 每个展示台耗能
	100,                          // 合成耗时
	[0.5, 0.3, 0.2]               // 可选项，标定粒子颜色，采用RGB码，范围0~1
);

mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:item_crystal_empowered:5>);

/*
	藏宝箱修改与移除
	mods.actuallyadditions.TreasureChest.addLoot(
		IItemStack returnItem, 
		int chance, 
		int minAmount, 
		int maxAmount
	);
	mods.actuallyadditions.Compost.removeRecipe(IItemStack output);
*/
mods.actuallyadditions.TreasureChest.addLoot(
	<minecraft:dirt>, // 掉落物品
	50,                 // 掉落几率
	1,                  // 掉落最小数量
	64                  // 掉落最大数量
);


// Astral Sorcery 星辉魔法
/*
	mods.astralsorcery.StarlightInfusion.addInfusion(
		InputStack, 
		OutputStack, 
		consumeMultiple (true/false), 
		consumptionChance, 
		craftTickTime
	);
*/
mods.astralsorcery.StarlightInfusion.addInfusion(
	<astralsorcery:itemjournal>, 
	<minecraft:bow>, 
	false, 
	0.7, 
	200
);

mods.astralsorcery.StarlightInfusion.removeInfusion(<minecraft:ice>);

/*
	富集矿物仪式	
*/
mods.astralsorcery.RitualMineralis.addOre(
	"blockMarble",    // 矿物名称
	6000                // 生成权重
);
mods.astralsorcery.RitualMineralis.removeOre("oreCoal");


// Thermal Expansion 热力膨胀


























