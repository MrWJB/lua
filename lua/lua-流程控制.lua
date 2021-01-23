n = 10
if (n > 0) then
    print("满足条件...")
end

-- 函数
local function func01(arg0,arg1)
    if (arg1 > arg0) then
        result = arg1
    else
        result = arg0
    end
    return result
end

-- 调用函数
print(func01(10,20))


-- 返回两个值
s, e = string.find("www.w3cschool.cn", "w3cschool")
print(s, e)

-- 通过lua寻找最大值,时间复杂度n
function maximum(a)
    local mi = 1
    local m = a[mi]
    for i, v in ipairs(a) do
        if (v > m) then
            mi = i
            m = v
        end
    end
    return m, mi
end

print(maximum({8,9,1,2,34,12}))


-- 可变参数
function average(...)
    result = 0
    local arg = {...}
    for i, v in ipairs(arg) do
        result = result + v
    end
    print("总共传入" .. #arg .. "个数")
    return result/#arg
end


print("平均值：", average(1,3,2,3,45,3,23,21,45,23))



-- lua运算符
    -- 算数运算符：+、-、*、/、%、^、-
    -- 关系运算符：==、～=、>、<、>=、<=
    -- 逻辑运算符：and or not
    -- 其他运算符：..（连接两个字符串）、#一元运算符，返回字符串或表的长度。
