class CreateMobiles < ActiveRecord::Migration[5.1]
  def change
    create_table :mobiles do |t|
      t.string :name, null: false
      t.string :phone, null: false
      t.string :password, null:false

      t.string :gender, null: false, default: ""
      t.string :role_type, null: true, default: ""

      t.string :token, null: false

      t.timestamps
    end
  end
end
