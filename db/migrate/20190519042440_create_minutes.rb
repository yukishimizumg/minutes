class CreateMinutes < ActiveRecord::Migration[5.2]
  def change
    create_table :minutes do |t|
      t.string :title
      t.string :name
      t.date :post_date
      t.text :description

      t.timestamps
    end
  end
end
