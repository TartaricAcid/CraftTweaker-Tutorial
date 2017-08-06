# Part-9 
# 带NBT数据的物品
# 作者：酒石酸
# 2017年8月5日

print("Initializing NBTItems...");

/*
	NBT数据结构往往十分复杂，最简便的方式是在游戏中设计好某个物品，然后使用 /mt hand 指令导出即可；
	原版的很多物品均采用NBT数据，诸如药水和附魔书等；
	这一块也会顺便讲解下物品的耐久设定。
	
	由于带有NBT数据的物品写起来往往都十分长，所以这里均采用变量来指代这些物品。
*/

/*
	许多有耐久的物品参与合成往往需要有很多要求，这里拿木镐举例子：
	
	<minecarft:wood_pickaxe>.anyDamage();                表示任意耐久木稿
	<minecarft:wood_pickaxe>.withDamage(12);             消耗了12点耐久的木镐
	<minecarft:wood_pickaxe>.onlyDamageBetween(9, 18);   耐久介于9至18点的木镐
	
*/

// 一把拥有时运10，耐久已经被消耗了200点，名叫 河童的高科技铁镐 的铁镐。
val ironPickaxe = <minecraft:iron_pickaxe>.withTag({
	display: {
		Name: "河童的高科技铁镐",
	},
	ench: [{
			id: 35 as short,          // 附魔ID，wiki可以查到
			lvl: 10 as short,         // 附魔等级
		}]
}).withDamage(200);                  // 耐久，设定数值是消耗掉的

// 别忘记添加一个合成表
val iron = <minecraft:iron_ingot>;

recipes.addShaped(ironPickaxe,
	[[iron, iron, iron],
	 [iron, null, iron],
	 [iron, iron, iron]]
);


// 一瓶拥有自定义效果的药水
val potion = <minecraft:potion>.withTag({
	CustomPotionEffects:[{
		Id: 21 as byte,               // 药水效果ID，wiki可以查到
		Amplifier: 5 as byte,        // 药水效果等级，5代表是6级
		Duration: 1000 as int,       // 药水效果时长，单位为tick
		ShowParticles: 0 as byte,     // 药水是否显示粒子效果，0代表不显示，1代表显示
	},
	{
		Id: 22 as byte,
		Amplifier: 4 as byte,
		Duration: 2000 as int,
		ShowParticles: 0 as byte,
	},
	{
		Id: 10 as byte,
		Amplifier: 3 as byte,
		Duration: 4000 as int,
		ShowParticles: 0 as byte,
	}],
	display: {
		Name: "超级无敌药水"
	}
});

// 别忘记添加一个合成表
val gold = <minecraft:gold_ingot>;

recipes.addShaped(potion,
	[[gold, gold, gold],
	 [gold, null, gold],
	 [gold, gold, gold]]
);

// 一本成书，记得一页不要超过160个汉字，不能有空格、英文逗号、英文引号，否则会不显示
val book = <minecraft:written_book>.withTag({
	pages: [
		"酒石酸，即2，3-二羟基丁二酸，是一种羧酸。存在于多种植物中，如葡萄和罗望子，也是葡萄酒中主要的有机酸之一。作为食品中添加的抗氧化剂，可以使食物具有酸味。酒石酸最大的用途是饮料添加剂，也是药物工业原料。在制镜工业中，酒石酸是一个重要的助剂和还原剂，可以控制银镜的形成速度，获得非常均一的镀层。",
		"酒石酸分子中有两个不对称碳原子，故有3种光学异构体，即右旋酒石酸（D-酒石酸）、左旋酒石酸（L-酒石酸）、内消旋酒石酸。等量的左旋酒石酸与右旋酒石酸混合得外消旋酒石酸（DL-酒石酸）。天然酒石酸是右旋酒石酸。工业上生产量最大的是外消旋酒石酸。",
		"D型酒石酸为无色透明结晶或白色结晶粉末，无臭，味极酸，相对密度1.7598。熔点168～170℃。易溶于水，溶于甲醇、乙醇，微溶于乙醚，不溶于氯仿。DL型酒石酸为无色透明细粒晶体，无臭味，极酸，相对密度1.697。熔点204~206℃，210℃分解。溶于水和乙醇，微溶于乙醚，不溶于甲苯。酒石酸在空气中稳定。无毒。",
		"L-酒石酸广泛存在于水果中，尤其是葡萄。是最廉价的光活性酒石酸，常被称为“天然酒石酸”。工业上，L-酒石酸的主要甚至唯一来源仍然是天然产物。葡萄酒酿造工业产生的副产物酒石，通过酸化处理即可制得L-酒石酸。意大利是世界上L-酒石酸的最大生产国，这跟该国造葡萄酒的规模不无关系。"
		], 
	author: "《有机化学丛书》编写委员会", 
	title: "酒石酸是什么？"
});

// 别忘记添加一个合成表
val stick = <minecraft:stick>;

recipes.addShaped(book,
	[[stick, stick, stick],
	 [stick,  null, stick],
	 [stick, stick, stick]]
);


print("Initialized NBTItems");
