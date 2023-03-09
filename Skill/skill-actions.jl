#
# actions called by the main callback()
# provide one function for each intent, defined in the Snips/Rhasspy
# console.
#
# ... and link the function with the intent name as shown in config.jl
#
# The functions will be called by the main callback function with
# 2 arguments:
# + MQTT-Topic as String
# + MQTT-Payload (The JSON part) as a nested dictionary, with all keys
#   as Symbols (Julia-style).
#




"""
    Susi_TellTime_action(topic, payload)

Generated dummy action for the intent Susi:TellTime.
This function will be executed when the intent is recognized.
"""
function Susi_TellTime_action(topic, payload)

    print_log("action Susi_TellTime_action() started.")
    time_str = readable_date_time(Dates.now(), onlyTime=true)
    publish_say(:tell_time, time_str)

    publish_end_session(" ")
    return true
end




"""
    Susi_TellDate_action(topic, payload)

Generated dummy action for the intent Susi:TellDate.
This function will be executed when the intent is recognized.
"""
function Susi_TellDate_action(topic, payload)

    print_log("action Susi_TellDate_action() started.")

    time_str = readable_date_time(Dates.now(), onlyDay=true)
    publish_say(:tell_date, time_str)

    publish_end_session(" ")
    return true
end
