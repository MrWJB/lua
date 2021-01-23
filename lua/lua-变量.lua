-- -- lua变量的三种类型
--     -- 1.全局变量：函数外的变量默认为全局变量，除非用local显示声明。
--     -- 2.局部变量：函数内的变量(用local声明的)与函数的参数默认为局部变量。
--         -- 2.1 局部变量的作用域：从声明位置开始到所在语句块结束（或者是直到下一个同名局部变量的声明）。
--     -- 3.表中的域
--     -- 变量的默认值均为：nil

--     a = 5   -- 全局变量
--     local b = 4 -- 局部变量
--     function joke()
--         c = 5   -- 全局变量
--         local d = 6 --局部变量
--     end

--     joke()

--     print(c,d)

--     do
--         local a = 6
--         b = 6
--         print(a,b)
--     end
--     print(a,b)


--     site = {}
--     site["key"] = "zhangsan"
--     print(site.key)
--     print(site["key"])