TriggerCustomEvent = function(server, event, ...)
    local payload = msgpack.pack({...})
    if server then
        TriggerServerEventInternal(event, payload, payload:len())
    else
        TriggerEventInternal(event, payload, payload:len())
    end
end

if GetResourceState('vrp_mysql') == 'started' then
    TriggerDatabaseEvent(true, "vRP:MySQL_query", "vRP/unban", {user_id = theID}, 2) --theID is the id you shall specify!
end
