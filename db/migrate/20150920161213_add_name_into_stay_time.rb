class AddNameIntoStayTime < ActiveRecord::Migration
  def change
  	add_column :stay_times, :name, :string
  end
end
