json.array!(@stay_times) do |stay_time|
  json.extract! stay_time, :id, :arrive_date, :leave_date, :nationality, :country_stay, :day_stay
  json.url stay_time_url(stay_time, format: :json)
end
