import java

// 定义谓词，封装自己的查询语法，可以理解成函数
// 对这个谓词可以运行Quick Evaluation
predicate isDemo1(int i){
    i in [1 .. 9]
}

from int a
where isDemo1(a)
select a,"测试谓词的创建"