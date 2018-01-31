class CreateFcms < ActiveRecord::Migration[5.1]
  def change
    create_table :fcms do |t|
      t.string :token, null: false, default: ""

      t.timestamps
    end
  end
end
