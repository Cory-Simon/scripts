def clock_in 
  @in = Time.now
end

def lunch_out
  @lunch_out = Time.now
end

def lunch_in
  @lunch_in = Time.now
end

def clock_out
  @out = Time.now
end

def report
  morning = @lunch_out - @in
  lunch = ((@lunch_in - @lunch_out) / 60 / 60).round(2)
  afternoon = @out - @lunch_in
  morning_total = (morning / 60 / 60).round(2)
  total = ((morning + afternoon) / 60 / 60).round(2)
  "IN: #{@in.strftime('%H:%M')} (#{morning_total}) LUNCH: #{@lunch_out.strftime('%H:%M')}-#{@lunch_in.strftime('%H:%M')} (#{lunch}) OUT: #{@out.strftime('%H:%M')} TODAY: #{total}"
end

# TODO: lunch_in should report length of lunch
# TODO: lunch_in should report hours worked so far
# TODO: new method (hours) should report hours worked so far today
# TODO: make this usable from terminal (not just pry)
# TODO: persist the data between invocations
# TODO: calculate the hours worked this week
