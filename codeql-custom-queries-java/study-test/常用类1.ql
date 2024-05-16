/**
 * exists:
 * exists子查询，根据内部的子查询返回true||false，筛选数据在引用新变量时使用
 * 
 * 语法：
 *  --exists(变量|公式)
 *  --exists(变量|公式1|公式2)
 *  --exists(变量|公式1 and 公式2）
 * 变量满足公式  exists子查询才会成立
 * 
 * 
 * 
 * 
 * codeql常用类：
 *      method：包含所有方法的集合
 *          --getDeclaringType 获取字段对应的定义类型
 *          --getASupertype获取类对应的父类
 * 
 *      class：包含所有类的集合
 * 
 *      field：包含所有字段的集合
 *          --getDeclaringType获取字段对应的定义类型
 *          --getAModifier获取字段对应的修饰符(public private 默认)
 * 
 *      constructor：方法的子集只包含构造方法
 */

 import java
 from Class c
 //查找类名中包含"User"的类
 where c.getQualifiedName().indexOf("User")>0
 select c.getQualifiedName()

