import java

/**
 * 我不懂为什么isDemo2运行Quick Evaluation结果是1~12
 */
int isDemo2(int i){
    result =i+1 and i in [1..12]
}

string isDemo1(string s) {
    
    result=s and (s="zhangsan"
    or
    s="lisi"
    or
    s="ss")
}
    
from int x
select isDemo2(x),"测试有返回值的谓词"