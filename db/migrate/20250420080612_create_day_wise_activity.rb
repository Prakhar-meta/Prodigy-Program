class CreateDayWiseActivity < ActiveRecord::Migration[5.1]
  def change
    create_table :day_wise_activities do |t|
      t.date :day
      t.references :activity, foreign_key: true
    end
  end
end
