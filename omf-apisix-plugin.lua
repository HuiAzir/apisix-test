-- 在响应头中添加自定义字段的APISIX插件

local ngx = ngx
local plugin_name = "omf-apisix-token-plugin"

local _M = {
    version = 0.1,
    priority = 0,  -- 优先级，数值越小越高
    name = plugin_name,
}

function _M.header_filter(conf, ctx)
    -- 获取自定义字段的值（可以根据需要修改）
    local customFieldValue = "Custom Value"

    -- 添加自定义字段到响应头
    ngx.header["X-Custom-Field"] = customFieldValue
end

return _M
