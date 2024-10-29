-- filename:
-- version: lua53
-- line: [0, 0] id: 0
edrawable = GradientDrawable()
edrawable.setShape(GradientDrawable.RECTANGLE)
edrawable.setColor(4294967295)
edrawable.setCornerRadii({
    dp2px(8),
    dp2px(8),
    dp2px(8),
    dp2px(8),
    dp2px(8),
    dp2px(8),
    dp2px(8),
    dp2px,
    8,
    r9_0(r10_0)
})
edrawable.setStroke(2, 555819297, 0, 0)
local r0_0 = {
    DrawerLayout,
    {
        LinearLayout,
        {
            layout_height = 状态栏高度,
            layout_width = "-1",
            TextView
        },
        {
            LinearLayout,
            {
                LinearLayout,
                {
                    layout_width = "0dp",
                    layout_height = "0dp",
                    BackgroundColor = primaryc,
                    id = "_menu_1",
                    TextView
                },
                {
                    layout_width = "0dp",
                    layout_height = "0dp",
                    BackgroundColor = primaryc,
                    layout_marginTop = "6",
                    id = "_menu_2",
                    TextView
                },
                {
                    layout_width = "0dp",
                    layout_height = "0dp",
                    BackgroundColor = primaryc,
                    layout_marginTop = "6",
                    id = "_menu_3",
                    TextView
                }
            },
            {
                text = "ezAndroid",
                textColor = primaryc,
                textSize = "22sp",
                id = "_title",
                SingleLine = true,
                layout_width = "-1",
                gravity = "center|left",
                paddingLeft = "0dp",
                layout_weight = "1",
                Typeface = 字体("product-Bold"),
                TextView
            },
            {
                id = "_more_lay",
                layout_width = "0",
                layout_height = "0",
                layout_gravity = "top",
                TextView
            }
        },
        home,
        _tool
    }
}
root = r0_0
设置视图(root)
沉浸状态栏()
ddddddddddddd = function(r0_2)
    -- line: [94, 97] id: 2
    return r0_2 .. string.rep("\0", 8 - #r0_2 % 8)
end
byte_to_dword = function(r0_3, r1_3, r2_3, r3_3)
    -- line: [99, 101] id: 3
    return (r0_3 or 0) << 24 | (r1_3 or 0) << 16 | (r2_3 or 0) << 8 | (r3_3 or 0)
end
asjdhnbvcvvaas = function(r0_4)
    -- line: [103, 110] id: 4
    local r1_4 = {}
    for r5_4 = 1, #r0_4, 8 do
        table.insert(r1_4, byte_to_dword(r0_4:byte(r5_4, r5_4 + 3)))
        table.insert(r1_4, byte_to_dword(r0_4:byte(r5_4 + 4, r5_4 + 7)))
    end
    return r1_4
end
wqwe = function(r0_5)
    -- line: [112, 114] id: 5
    return string.char(r0_5 >> 24 & 255, r0_5 >> 16 & 255, r0_5 >> 8 & 255, r0_5 & 255)
end
izKMncba = function(r0_6)
    -- line: [116, 122] id: 6
    local r1_6 = {}
    for r5_6, r6_6 in ipairs(r0_6) do
        table.insert(r1_6, wqwe(r6_6))
    end
    return table.concat(r1_6)
end
xtea = function(text, key)
    -- line: [124, 147] id: 7
    local v0 = text[1]
    local v1 = text[2]
    local total = 0
    local magic = load("return " ..
        "(114514+114514)*((1+1)*4514+((1+1)*4*51-4+11-4*5+14))+(114514+(114*514+(114*51*4+((1+1)*4*514+(11*(45-1)/4)))))")()
    for i = 1, load("return " .. "-11 + 45 * 1 + 4")(), 1 do
        total = total + magic & 4294967295
        v0 = v0 + ((v1 << 4 ~ v1 >> 5) + v1 ~ total + key[(total & 3) + 1]) & 4294967295
        v1 = v1 + ((v0 << 4 ~ v0 >> 5) + v0 ~ total + key[(total >> 11 & 3) + 1]) & 4294967295
    end
    return {
        v0 ~ 14,
        v1 ~ 17
    }
end
cipher = {
    load(
        "return (114514 + 114514) * ((1 + 1) * 451 * 4 + 114 + 51 - 4 + 11 * -4 + 51 - 4) + (114 * 51 * 4 + ((1 + 1) * 45 * 14 - 11 + 45 * 1 + 4))")(),
    load(
        "return (114514 + 114514) * (1 * -(1 - 4) * 514 + 114 - 51 - 4) + (114514 + (114 * 51 * 4 + (1 + 14514 + ((1 + 1) * 45 * 14 + 11 - 4 + 5 * 14))))")(),
    load(
        "return (114514 + 114514) * (11451 + 4 + (11 * (4 + 5) * 14 + 1 + 14 - 5 + 1 + 4)) + (114514 + (114 * 514 + (11451 * 4 + ((1 + 1) * 4 * 51 * 4 + 1 - 14 + 5 + 14))))")(),
    load(
        "return (114514 + 114514) * (1145 * (1 + 4) - 11 + 4 + 5 + 14) + (114514 + (1 + 14514 + (11 * -45 * (1 - 4) + 11 - 4 + 5 / 1 - 4)))")(),
    load(
        "return (114514 + 114514) * ((1 + 1) * 4514 + 1 + 145 * 14 + 11 - 4 * 5 + 14) + 114 * 514 + 1 + 14514 + 1145 - 14")(),
    load("return (114514 + 114514) * (114 * (51 - 4) + (1 + 1 * 4 * 5 * (1 + 4))) + (11 * (451 - 4) + 1 - 14 + 51 - 4)")(),
    load(
        "return (114514 + 114514) * (1 + 14514 + (1 - 14 * -(5 + 1) * 4 + 11 * -4 + 51 - 4)) + 114 * 514 + 114 * 5 * 14 - 11 + 45 * 14 + 11 - 4 + 5 / 1 - 4")(),
    load(
        "return (114514 + 114514) * (114 * 51 + 4 + 114 + 5 + 1 + 4) + (114514 + (114 * 51 * 4 + (1145 * 14 + (114 * -5 * (1 - 4) + 11 * 4 + 5 + 1 - 4))))")(),
    load(
        "return (114514 + 114514) * (11451 + 4 + (11 * (45 + 1) * 4 + 11 * -4 + 51 - 4)) + (114514 + (114 * 51 * 4 + (11451 + 4 + (114 * (5 + 1) * 4 + 11 + 4 * 5 / 1 - 4))))")(),
    load(
        "return (114514 + 114514) * (11451 + 4 + (11 * 4 * (51 - 4) + 114 - 5 * 14)) + 11451 * 4 + 11 * 4 * 5 * 14 + 11 * 4 + 5 * 14"),
}
local key = {
    load("return " .. "114 * 51 + 4 - 1 + 145 + 14")(),
    load("return " .. "114 * 51 * 4 + (1145 * 14 + (1 * -(1 - 4) * 514 - 11 + 45 - 1 - 4))")(),
    load("return " ..
        "(114514 + 114514) * (11451 + 4 + (1 + 14 * 51 * 4 + (1 * 14 * (5 + 1) + 4))) +(114514 + (114 * 514 + (11 * 4514 + (-1145 * (1 - 4) + 1 * 14 + 5 * 14))))")(),
    load("return " ..
        "(114514 + 114514) * (114 * (51 + 4) + (1 + 1 + 4 * 5 * 14 + (11 / (45 - 1) * 4))) +(114514 + ((1 + 1) * 4514 + 114 * 5 * 1 * 4 + 1 * 14 - 5 + 14))")()
}
local function r9_0(r0_8, r1_8)
    -- line: [183, 193] id: 8
    if #r0_8 ~= #r1_8 then
        return false
    end
    for r5_8 = 1, #r0_8, 1 do
        if r0_8[r5_8] ~= r1_8[r5_8] then
            return false
        end
    end
    return true
end
A = function(input)
    -- line: [196, 230] id: 9
    input_1 = input
    if input_1:sub(1, 5) == "flag{" and input_1:sub(-1) == "}" then
        pp = input_1:sub(6, -2)
        local dword_input = asjdhnbvcvvaas(ddddddddddddd(pp))
        local r3_9 = {}
        for r7_9 = 1, #dword_input, 2 do
            local after_enc = xtea({
                dword_input[r7_9], -- cipher
                dword_input[r7_9 + 1] -- key
            }, key)
            table.insert(r3_9, after_enc[1])
            table.insert(r3_9, after_enc[2])
        end
        local r5_9 = asjdhnbvcvvaas(izKMncba(r3_9))
        if r9_0(r5_9, cipher) then
            提示("Congratulations, you are right！")
        end
        if not r9_0(r5_9, cipher) then
            提示("Error")
        end
    else
        提示("Error")
    end
end
