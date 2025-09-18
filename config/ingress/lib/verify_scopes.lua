-- SPDX-FileCopyrightText: 2025 Sidings Media <contact@sidingsmedia.com>
-- SPDX-License-Identifier: MIT

function split(str, delimiter)
    local result = {}
    if delimiter == '' then
        -- If delimiter is empty, return each character
        for i = 1, #str do
            table.insert(result, str:sub(i, i))
        end
        return result
    end

    for match in (str .. delimiter):gmatch("(.-)" .. delimiter) do
        table.insert(result, match)
    end
    return result
end

function has_value (tab, val)
    for index, value in ipairs(tab) do
        if value == val then
            return true
        end
    end

    return false
end


function verify_scopes(txn, scopes, required_scopes)
    local jwt_scopes_list = split(scopes)
    local required_scopes_list = split(required_scopes)

    for i, scope in ipairs(required_scopes_list) do
        if scope == "*" do
            -- If it is a * we allow everything
            txn.set_var(txn, "txn.verify_scopes_result", true)
            return
        end

        if !has_value(jwt_scopes_list, scope) do
            txn.set_var(txn, "txn.verify_scopes_result", false)
            return
        end
    end

    txn.set_var(txn, "txn.verify_scopes_result", true)
end

core.register_action("verify_scopes", { "http-req" }, verify_scopes)