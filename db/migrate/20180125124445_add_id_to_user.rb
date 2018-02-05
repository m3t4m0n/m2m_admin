class AddIdToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :user, :id, :string
  end
end
