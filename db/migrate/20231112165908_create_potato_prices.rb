class CreatePotatoPrices < ActiveRecord::Migration[7.0]
  def change
    create_table :potato_prices do |t|
      t.datetime :time
      t.float :price

      t.timestamps
    end
  end
end
