print("hello world");

--lua的单行注释
print("this is first lua");
--[[
lua的多行注释
--]]
print("this.is sencond lua");

local tbl = {"apple","pear","orange","grape"}
for key, value in pairs(tbl) do
    print(key .. ":" .. value)
end

function func(n)
    if n==0 then
        return 1
    else
        return n * func(n-1)
    end
end

print(func(10))
func2 = func;
print(func2(10))


-- 参数以匿名函数的方式进行传递
function anonymous(tab, fun)
    for k, v in pairs(tab) do
        print(fun(k,v))
    end
end

tab = { key1 = "val1", key2 = "val2" }
anonymous(tab, function (key,val)
    return key .. "=" .. val
end)


-- thread线程
    -- 线程与协程的区别：1.线程可以同时运行多个，
    -- 而协程同一时刻只能运行一个，并且处于运行状态的协程只有被挂起（suspend）时才会暂停。
    -- 线程与协程的相同：1.都拥有独立的栈、局部变量和指令指针，可以跟其他协同程序共享全局变量
    -- 和其他大部分的东西。
-- helloworld.lua 文件末尾注释-- helloworld.lua 文件末尾注释-- helloworld.lua 文件末尾注释-- helloworld.lua 文件末尾注释-- helloworld.lua 文件末尾注释