-- require("module")

-- print(module.constant)

-- module.func3()

-- 定义一个别名
local m = require("module")

print(m.constant)

print(package.path)
print("c:path ", package.cpath)