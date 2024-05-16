/**
 * 1.类型：是一个数值集合 int为整数集合
 * 一个值可以属于多个集合
 * 基本类型 类 字符类型 类域类型 代数数据类型 类型联合 数据库类型·
 * 2.原始类型：
 * boolean float int string date
 * 
 * 3.类：属于类型的一种,使用class实现,不创建对象,只表示逻辑属性。
 * 4.类特征特征：允许多继承，不能继承本身，不能继承final类。可以使用this来指代类的本身。
 *
 * 定义类：
 *     --class 关键字
 *     --类的名称
 *     --extends基础超类型 int string method
 *     --类的主体
 * 例子：
 * class one extends int{    }
 */

import java

class DemoOne extends int {
  //相当于构造方法
  DemoOne() { this = [1 .. 10] }

  string getAll() { result = "测试类的成员谓词" + this.toString() }
}

class DemoTwo extends DemoOne {
  DemoOne demo1;

  DemoTwo() { this % demo1 = 0 }

  DemoOne getTest() { result = 2 + demo1 }
}

from DemoTwo i
select i,i.getTest(),i.getAll(),"测试类的使用"