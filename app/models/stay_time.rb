class StayTime < ActiveRecord::Base

before_save :comput_leave_day

	protected 
	def comput_leave_day
		self.leave_date = self.arrive_date + self.day_stay
	end
end
