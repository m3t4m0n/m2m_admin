class AddMobileIdToCarreservrequests < ActiveRecord::Migration[5.1]
  def change
    add_reference :carreservrequests, :mobile, foreign_key: true
  end
end
