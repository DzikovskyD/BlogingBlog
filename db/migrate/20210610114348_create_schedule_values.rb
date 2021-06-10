class CreateScheduleValues < ActiveRecord::Migration[6.1]
  def change
    create_table :schedule_values do |t|
      t.string :value
      t.text :description

      t.timestamps
    end
  end
end
