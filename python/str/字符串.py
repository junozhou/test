1、''、"" 都是对的，可以用反斜线（\）进行转义
2、拼接字符串用：+ 。如："hello，"+"world"
3、str、repr和反引号（python3.0，已经不再使用）将python值转换为字符串的三种方法
4、原始字符串。
    原始字符串不会把反斜线当作特殊字符。在原始字符串中输入的每个字符都会与书写方式保持一致。
    **不能在原始字符串末尾输入反斜线** 要实现这种方式：如：r'D:\now''\\'——》D:\now\
    **可以在原始字符串中同时使用单双三引号**
    如：r'C:\now'
5、Unicode字符串。字符串常量的最后一个类型就是Unicode字符串。
    Unicode字符串使用u前缀，就想原始字符串使用r一样