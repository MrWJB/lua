co = coroutine.create(
    function (i)
        print(i)
    end
)

-- coroutine.resume(co, 1) -- 重启coroutine，和create配合使用
-- print(coroutine.status(co))


print("----------")

-- 创建coroutine，返回一个函数，一旦你调用这个函数，就进入coroutine，和create功能重复
co = coroutine.wrap(function (i)
    print(i)
end)

-- co(1)

print("----------")

co2 = coroutine.create(function ()
    for i = 1, 10, 1 do
        print(i)
        if (i==3) then
            print(coroutine.status(co2))
            -- 返回正在跑的coroutine，一个coroutine就是一个线程，当使用running的时候，就是返回一个corouting的线程号
            print(coroutine.running())
        end
        -- 挂起coroutine，将coroutine设置为挂起状态，这个和resume配合使用能有很多有用的效果
        coroutine.yield()
    end
end)

coroutine.resume(co2) --1
coroutine.resume(co2) --2
coroutine.resume(co2) --3

print(coroutine.status(co2))   -- suspended
print(coroutine.running())   --nil
 
print("----------")



-- resume 和 yeild 的配合强大之处在于，resume处于主程中，他将外部状态（数据）传入到协同程序内部；
-- 而yield则将内部的状态（数据）返回到主程中。

function foo (a)
    print("foo 函数输出", a)
    return coroutine.yield(2 * a) -- 返回  2*a 的值
end
 
co = coroutine.create(function (a , b)
    print("第一次协同程序执行输出", a, b) -- co-body 1 10
    local r = foo(a + 1)
     
    print("第二次协同程序执行输出", r)
    local r, s = coroutine.yield(a + b, a - b)  -- a，b的值为第一次调用协同程序时传入
     
    print("第三次协同程序执行输出", r, s)
    return b, "结束协同程序"                   -- b的值为第二次调用协同程序时传入
end)

print("main", coroutine.resume(co, 1, 10)) -- true, 4
print("--分割线----")
print("main", coroutine.resume(co, "r")) -- true 11 -9
print("---分割线---")
print("main", coroutine.resume(co, "x", "y")) -- true 10 end
print("---分割线---")
print("main", coroutine.resume(co, "x", "y")) -- cannot resume dead coroutine
print("---分割线---")

local newproductor

function productor()
    local i = 0
    while true do
        i = i + 1
        send(i)
    end
end


function consumer()
    while true do
        local i = receive()
        print(i)
    end
end

function send(x)
    coroutine.yield(x)
end


function receive()
   local status, value = coroutine.resume(newproductor)
   return value
end

-- 启动程序
newproductor = coroutine.create(productor)
consumer()