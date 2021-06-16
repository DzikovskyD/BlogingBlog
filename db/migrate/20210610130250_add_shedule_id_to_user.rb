class AddSheduleIdToUser < ActiveRecord::Migration[6.1]
  def change
  add_reference :users, :schedule_values,  index: true, foreign_key: true, :default => 1
  end
end
