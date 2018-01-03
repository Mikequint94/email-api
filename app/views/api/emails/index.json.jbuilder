@emails.each do |email|
  json.set! email.id do
    json.id email.id
    json.body email.body
    json.subject email.subject
  end
end
