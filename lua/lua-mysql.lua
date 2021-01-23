luasql = require "luasql.mysql"

-- sudo luarocks install luasql-mysql MYSQL_INCDIR=/usr/local/mysql/include
-- sudo luarocks install luasql-mysql MYSQL_INCDIR=/usr/local/mysql/include MYSQL_LIBDIR=/usr/local/mysql/lib

-- 创建环境变量
env = luasql.mysql()

-- 连接数据库
conn = env:connect("zook","root","1234qwer","127.0.0.1","3306")

-- 设置数据库的编码
conn:execute("SET NAMES UTF8")


--执行数据库操作
cur = conn:execute("select * from ranger")

row = cur:fetch({},"a")

--文件对象的创建
file = io.open("role.txt","w+");

while row do
    var = string.format("%d %s\n", row.id, row.name)

    print(var)

    file:write(var)

    row = cur:fetch(row,"a")
end

file:close()  --关闭文件对象
conn:close()  --关闭数据库连接
env:close()   --关闭数据库环境