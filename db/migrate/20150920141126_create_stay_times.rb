class CreateStayTimes < ActiveRecord::Migration
  def change
    create_table :stay_times do |t|
      t.date :arrive_date
      t.date :leave_date
      t.string :nationality
      t.string :country_stay
      t.integer :day_stay

      t.timestamps null: false
    end
  end
end
