class CreateActivity < ActiveRecord::Migration[5.1]
  def change
    create_table :activities do |t|
      t.string :name
      t.string :frequency
      t.string :time
      t.references :category, foreign_key: true
    end
  end
end
