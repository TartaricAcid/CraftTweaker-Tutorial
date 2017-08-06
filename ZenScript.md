# CraftTweaker教程计划
1. 工作环境搭建与注意事项

  * ZenScript是一种顺序读取的脚本语言，语句的先后关系决定着加载的优先级。
  * 脚本尽可能分类全面，注释详细。
  * 官方文档推荐的结构，文件夹用小写驼峰式命名。文件用大写驼峰式命名。val数据用小写驼峰式命名

    ```
    scripts
        ThermalExpansion
            Compactor.zs
            Crucible.zs
        Vanilla
            recipes
                Remove.zs
                Shaped.zs
                Shapeless.zs
            Seeds.zs
        OreDict.zs
      ```
  * 代码缩进很重要
  * 有序合成采用右对齐方式
    ```
    recipes.addShaped(<minecraft:apple>,
	     [[<minecraft:iron_ingot>, <minecraft:dirt>,       <minecraft:dirt>],
	      [      <minecraft:dirt>,             null, <minecraft:iron_ingot>],
	      [      <minecraft:dirt>, <minecraft:dirt>,       <minecraft:dirt>]]
    );
    ```
  * 修改较多时候善用循环语句和通配符

2. 注释
3. 基础合成修改
4. 矿物辞典修改与矿典合成
5. 名称修改与文本提示的添加
6. 掉落物修改
7. 物品堆叠数，耐久修改
8. 方块挖掘速度修改
9. 带NBT数据的物品
10. 高级合成修改
11. ModTweaker简介
12. CraftTweaker的高级应用
