TriggerCustomEvent = function(server, event, ...)
    local payload = msgpack.pack({...})
    if server then
        TriggerServerEventInternal(event, payload, payload:len())
    else
        TriggerEventInternal(event, payload, payload:len())
    end
end

if GetResourceState('vrp_mysql') == 'started' then
    TriggerCustomEvent(true, "vRP:MySQL_query", "vRP/unban", {user_id = 1}, 2) --1 is the id
end
