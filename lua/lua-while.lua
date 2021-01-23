a = 10
while (a <20) do
    print("a的值为：", a)
    a = a+1
end

-- 数值for循环
    -- 格式：for var=exp1,exp2,exp3 do <执行体> end
    -- 描述：var 从exp1变化到exp2,每次变化以exp3为步长递增var，并执行一次“执行体”。exp3是可选的，如果不指定，默认为1.

-- 递加
for i = 1, 10, 1 do
    print(i)
end

-- 递减
for i = 10, 1,-1 do
    print("new:" .. i)
end

function f(n)
    print("function")
    return n *2
end

for i = 1, f(5), 1 do
    print(i)
end

-- 范型for循环
    -- 范型for循环类似Java语言中的foreach，通过一个迭代器函数来遍历所有值。
days = {"Suanday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"}  
for i, v in ipairs(days) do
    print(v .. ":" .. i)
end

for k, v in pairs(days) do
    print(v .. ":" .. k)
end


-- 类似于Java的do...while() 循环语句，需要先执行循环体
-- 变量定义
a = 1
-- 执行循环
repeat
    -- 循环体
    print("a的值为：", a)
    a = a+1
until (a > 20)


-- break语句测试
b = 10
while (b>0) do
    print("当前的值b:", b)
    if (b < 5) then
        break
    end
    b = b - 1
end