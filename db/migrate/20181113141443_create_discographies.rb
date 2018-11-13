class CreateDiscographies < ActiveRecord::Migration[5.2]
  def change
    create_table :discographies do |t|
      t.string :name
      t.date :date_rise
      t.text :description

      t.timestamps
    end
  end
end
