import java

from Field f,Class  c

where c.getASupertype*().hasQualifiedName("java.lang", "Throwable")
and f.getDeclaringType() = c 
and f.getAModifier().getName() = "public"

select c.getQualifiedName(),f.getName(),f.getAModifier(),f.getDeclaringType()