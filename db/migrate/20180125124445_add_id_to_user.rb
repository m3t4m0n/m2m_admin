class AddIdToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :user, :id, t.string
  end
end
