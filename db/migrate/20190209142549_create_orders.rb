class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :no_faktur
      t.decimal :total

      t.timestamps
    end
  end
end
