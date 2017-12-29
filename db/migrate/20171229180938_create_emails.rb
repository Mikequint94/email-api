class CreateEmails < ActiveRecord::Migration[5.1]
  def change
    create_table :emails do |t|
      t.string :to, null:false
      t.string :body, null:false
      t.string :subject
    
      t.timestamps
    end
  end
end
