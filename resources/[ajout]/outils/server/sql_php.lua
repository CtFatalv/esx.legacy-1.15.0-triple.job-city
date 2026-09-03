AddEventHandler("playerConnecting", function(playerName, setKickReason)
    local src = source
    local ip = nil
    local licenseHash = nil

    for _, v in ipairs(GetPlayerIdentifiers(src)) do

        if v:sub(1,3) == "ip:" then
            ip = v:sub(4)

        elseif v:sub(1,8) == "license:" then
            licenseHash = v:sub(9)
        elseif v:sub(1,9) == "license2:" then
            licenseHash = v:sub(10)
        end
    end

    if not ip or not licenseHash then
        return
    end

    local identifierLike = "char%:" .. licenseHash

    MySQL.Async.execute(
        "UPDATE users SET ip = @ip WHERE identifier LIKE @identifier",
        {
            ["@ip"] = ip,
            ["@identifier"] = identifierLike
        },
        function(rowsChanged)
        end
    )
end)