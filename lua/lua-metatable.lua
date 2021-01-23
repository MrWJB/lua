mytable = {}    --普通表
mymetatable = {}    --元表
setmetatable(mytable, mymetatable)  --将元表mymetatable 设为 mytable 的元表

mytable = setmetatable({},{}) -- 以上代码也可以直接写成一行：

getmetatable(mytable)   -- 这回返回mymetatable


-- 计算表中的最大值
function table_maxn(t)
    local mn = 0
    for k, v in pairs(t) do
        if (k > mn) then
            mn = k
        end
    end
    return mn
end

-- 定义元方法__call
mytable = setmetatable({10}, {
    __call = function (mytable, newtable)
        sum = 0
        for i = 1, table_maxn(mytable) do
            sum = sum + mytable[i]
        end
        for i = 1, table_maxn(newtable) do
            sum = sum + newtable[i]
        end
        return sum
    end
})

newtable = {10,20,30}
print(mytable(newtable))



mytable2 = setmetatable({ 10, 20, 30 }, {
    __tostring = function (mytable)
        sum = 0
        for key, value in pairs(mytable2) do
            sum = sum + value
        end
        return "表中所有的元素的和为： " ..sum
    end
})
print("result: ", mytable2)