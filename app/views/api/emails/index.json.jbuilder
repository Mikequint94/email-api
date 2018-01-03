@emails.each do |email|
  json.set! email.id do
    json.to email.to
    json.body email.body
    json.subject email.subject
  end
end
