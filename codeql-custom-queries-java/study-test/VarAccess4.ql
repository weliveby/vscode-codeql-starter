/**
 * Access:对变量或者方法的调用
 * 
 * 1.VarAccess(变量的调用)实例
 *  --getSourceDeclaration  获取该类型的源声明。
 *      对于泛型类型和原始类型的参数化有其他类型，源声明是类型本身。
 *  --getASourceSupertype   获取该类型的直接超类型
 *  --getType        获得变量的所属类型
 *  --getVariable    获取此变量调用所访问的变量
 * 
 * 2.MethodAccess（方法的调用)
 *  --getMethod 获取方法调用所访问的方法
 *  --getQualifier  获取方法调用的限定表达式
 *  --getEnclosingCallable  获取包含此方法调用的可调用方法
 */

//查询并选择所有访问 java.util.ArrayList 类型变量的变量访问
 import java
//  /**
//   * VarAccess va 表示变量访问（variable access）。
//   * Variable v 表示变量（variable）。
//   * RefType r 表示引用类型（reference type），即类、接口等。
//   */
 from VarAccess va,Variable v,RefType r
//  /**
//   * 这部分检查引用类型 r 是否有一个超级类型（supertype），其限定名称为 java.util.ArrayList。
//   * getSourceDeclaration() 获取类型声明。
//   * getASourceSupertype() 获取类型的一个超级类型。
//   * 用getASourceSupertype()直接类型是ArrayList的筛选不出来，我就去掉了。
//   * 想测试可以用.getASourceSupertype().hasQualifiedName("java.lang","AbstractStringBuilder")
//   * hasQualifiedName("java.util", "ArrayList") 检查类型的限定名称是否为 java.util.ArrayList。
//   */
 where r.getSourceDeclaration().hasQualifiedName("java.util","ArrayList")
 // 这部分检查变量 v 的类型是否等于引用类型 r
 and v.getType() =r 
 // 这部分检查变量访问 va 访问的变量是否等于变量 v
 and va.getVariable()=v
 select r.getName(),v.getName(),va