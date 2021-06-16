class User < ApplicationRecord
  has_one :schedule_value

  def new
    puts "1111111111111111111111111111"
  end

  def mailing_schedule(users_id)
    ScheduleValue.find(User.find(users_id).schedule_values_id).value
  end

end
