object @conversation
attributes :id, :subject
child :receipts do |receipt|
  attributes :id, :mailbox_type
  child :message do |message|
    attributes :subject, :body, :created_at
    child :sender do |sender|
      attributes :id, :name
    end
  end
end
