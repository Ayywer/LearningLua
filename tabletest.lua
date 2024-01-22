local foo = {}
table.insert(foo, "bar")
table.insert(foo, "baz")
local tablelengh = foo.length

for i=1, #foo do
    print(foo[i])
end
table.remove(foo)