/**
 * hasName("xx") 筛选出那些名字为 "xx" 的方法
 * getDeclaringType() 返回了包含这个方法声明的类的信息。
 * hasQualifiedName(package, type) 时，通常会用来检查类型的限定名称是否符合特定的包名和类型名
 * 例如：使用hasQualifiedName("com.example", "Person") 来检查方法访问是否调用了属于 com.example 包下的 Person 类
 */

import java

from Method m

where m.hasName("uFile") and 
m.getDeclaringType()
.hasQualifiedName("org.bewhale.javasec.controller.basevul.file", "UploadVul")

select m,m.getDeclaringType(),m.getDeclaringType().getPackage()