-- table 是lua的一种数据结构用来帮助我们创建不同的数据类型，如：数字、字典等。
-- lua table 使用关联型数组，你可以用任意类型的值来作数组的索引，但这个值不能为nil
-- lua table 是不固定大小的，你可以根据自己的需要进行扩容。

--初始化表
mytable = {}

-- 指定值
mytable[1] = "Lua"

-- 移除引用
mytable = nil

-- lua 垃圾回收会释放内存

-- table 连接
fruits = {"bananer","orager","apple"}
-- 返回table连接后的字符串
print("连接后的字符串 ",table.concat(fruits))
-- 指定连接字符
print("连接后的字符串 ",table.concat(fruits,", "))
-- 指定索引来连接table
print("连接后的字符串 ",table.concat(fruits,", ",2,3))

-- 插入和移除
table.insert(fruits,"mango")
print("索引为 4 的元素为 ",fruits[4])

-- 在索引为2的处插入
table.insert(fruits,2,"grapes")
print("索引为 2 的元素为 ", fruits[2])

print("最后一个元素： ",fruits)
table.remove(fruits)
print("移除最后一个元素： ",fruits[4])

-- table 排序
fruits = {"banana","orange","apple","grapes"}
print("排序前：")
for key, value in pairs(fruits) do
    print(key,value)
end

print("排序后")
table.sort(fruits)
for key, value in pairs(fruits) do
    print(key,value)
end

-- table 最大值
function table_maxn(t)
    local mn =0
    for key, value in pairs(t) do
        if (key > mn) then
            mn = key
        end
    end
    return mn
end

tbl = {[1] = "a", [2] = "b", [3] = "c", [26] = "z"}
print("tbl 长度 ", #tbl)
print("tbl 最大值 ", table_maxn(tbl))