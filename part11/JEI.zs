# Part-11 
# JEI的兼容相关
# 作者：酒石酸
# 2017年8月5日

print("Initializing JEI...");

/*
	CraftTweaker还支持JEI；
	调用JEI，可以实现在JEI物品列表中隐藏物品
*/

// 首先需要调用JEI
import mods.jei.JEI;

// 接着就可以安装这个语法隐藏物品
JEI.hide(<minecraft:diamond>);


print("Initialized JEI");