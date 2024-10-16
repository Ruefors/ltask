package.cpath = package.cpath .. ";./clib/?.so"
local start = require "test.start"
start {
    core = {
        debuglog = "=", -- stdout
    },
    service_path = "service/?.lua;test/?.lua;demo/?.lua",
    bootstrap = {
        {
            name = "demo0",
            unique = true,
        },
        {
            name = "demo1",
            unique = true,
        }
    },
}
