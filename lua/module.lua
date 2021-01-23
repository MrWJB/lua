-- 文件名为 module.lua
-- 定义一个名为module的模块
module = {}

-- 定义一个常量
module.constant = "这是一个常量"

-- 定义一个函数
function module.func1()
    io.write("这是一个公有函数！\n")
end

-- 定义一个私有的函数
local function func2()
    print("定义一个私有函数！")
end

function module.func3()
    func2()
end

return module