import java
from Class c,MethodAccess   ma1

//查找调用名为 readObject 方法
where ma1.getMethod().hasName("readObject") 
// 调用者的类型是 java.io.InputStream 或其子类型
and ma1.getQualifier().getType() =c
and c.getASupertype*().hasQualifiedName("java.io","InputStream")
// // 合起来就是找有 inputStream.readObject()调用的地方
// --getEnclosingCallable  获取包含此方法调用的可调用方法
select ma1,ma1.getEnclosingCallable(),ma1.getQualifier()