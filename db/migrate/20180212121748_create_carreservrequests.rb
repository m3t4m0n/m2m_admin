class CreateCarreservrequests < ActiveRecord::Migration[5.1]
  def change
    create_table :carreservrequests do |t|
      t.string :location
      t.string :date
      t.string :time
      t.string :memo
      t.string :wheel
      t.string :friend

      t.timestamps
    end
  end
end
