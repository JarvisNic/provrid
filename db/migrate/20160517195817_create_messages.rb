class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.text :body
      t.integer :user_id
      t.integer :id_reciever

      t.timestamps null: false
    end
  end
end
