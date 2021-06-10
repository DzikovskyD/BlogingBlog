class AddMailingScheduleToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :mailing_schedule, :string, :default => "weekly"
  end
end
