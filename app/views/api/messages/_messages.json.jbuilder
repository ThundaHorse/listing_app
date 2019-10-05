json.id message.id
json.user_id message.user_id
json.body message.body
json.name message.user.first_name
json.created_at message.created_at.strftime("%b %e, %l:%M %p")
json.formatted message.formatted_time