class CreateUserApps < ActiveRecord::Migration[5.1]
  def change
    create_table :user_apps do |t|
      t.string :name, null:false
      t.string :phone, null: false
      t.string :password, null: false
      
      t.string :gender, null: false, default: ""  
      t.string :type, null: true, default: ""
    
      t.string :token, null: false
      
      t.timestamps
    end
  end
end
