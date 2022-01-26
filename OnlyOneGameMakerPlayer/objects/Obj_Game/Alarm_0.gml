/// @desc Update

#macro AlarmUpdate 0

http_get(HTTP_BASE + "update/" + string(user_id));

