-- file = io.open("helloworld.lua","r")
-- -- 设置默认输入文件为 test.lua
-- io.input(file)
-- -- 输出文件第一行
-- print(io.read())

-- -- 关闭打开的文件
-- io.close(file)


-- -- 以附加的方式打开只写文件
-- file = io.open("helloworld.lua", "a")
-- -- 设置默认输出文件为helloworld.lua
-- io.output(file)

-- -- 在文件最后一行添加Lua注释
-- io.write("-- helloworld.lua 文件末尾注释")

-- -- 关闭打开的文件
-- io.close(file)


-- -- 完全模式
-- -- 以只读的方式打开文件
-- file = io.open("test.lua", "r")

-- -- 输出文件第一行
-- print(file:read())

-- -- 关闭打开的文件
-- file.close()

-- 以附加的方式打开只写文件
file2 = io.open("test.lua", "a")

-- 在文件最后一行添加Lua注释
file2:write("--test")

-- 关闭打开的文件
file2:close()


for line in io.lines("test.lua") do
    print(line .. "helloworld")
end