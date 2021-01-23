-- 函数闭包
local function createCountdownTimer(second)
    -- ms 为countDown的Upvalue
    local ms = second * 1000
    local function countDown()
        ms = ms -1
        return ms
    end
    return countDown
end

local timer1 = createCountdownTimer(1)

for i = 1, 3 do
    print(timer1())
end


-- 元表
local t = {}
local m = {a = "and", b = "Li Lei", c = "Han Meimei"}

-- 表{__index = m}作为t的元表
setmetatable(t,{__index = m})

-- 穷举表t
for k, v in pairs(t) do
    print("有值吗？")
    print(k,"=>",v)
end

print("-------------")
print(t.b, t.a, t.c)