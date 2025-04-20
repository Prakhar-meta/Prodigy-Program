class CreateUserActivityProgress < ActiveRecord::Migration[5.1]
  def change
    create_table :user_activity_progresses do |t|
      t.references :user, foreign_key: true
      t.references :activity, foreign_key: true
      t.string :status
    end
  end
end
