# Part-6 
# 掉落物修改
# 作者：酒石酸
# 2017年8月5日

print("Initializing AddDrops...");

// 使用 /mt seeds 指令可以查看当前打草会掉落的东西，以及权重。

// 打草时候有几率掉落金锭，权重为100（原版小麦种子权重为10）
vanilla.seeds.addSeed(<minecraft:gold_ingot>.weight(100));

// 禁止打草掉落小麦种子
vanilla.seeds.removeSeed(<minecraft:wheat_seeds>);

// 使用 /mt entities 指令，能够在日志中刷出全部的实体ID

/*
	自定义生物死亡掉落物，示例如下
	addDrop(item,min,max);

	羊死亡获得苹果1-5个
*/
<entity:sheep>.addDrop(<minecraft:apple>, 1, 5);

// 只有玩家杀死情况下才会掉落金苹果1-2个
<entity:sheep>.addPlayerOnlyDrop(<minecraft:golden_apple>, 1, 2);

// 羊死亡不再会掉落羊毛
<entity:sheep>.removeDrop(<minecraft:wool:*>);

print("Initialized AddDrops");










