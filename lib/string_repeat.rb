class StringRepeater
  def initialize(terminal)
    @terminal = terminal
  end

  def run
    @terminal.puts "Hello. I will repeat a string many times"
    @terminal.puts "Please enter a string"
    str = @terminal.gets
    @terminal.puts "Please enter a number of repeats"
    num = @terminal.gets
    @terminal.puts "Here is your result:"
    @terminal.print "#{str}" * num.to_i
  end 
end
# Hello. I will repeat a string many times.
# Please enter a string
# TWIX
# Please enter a number of repeats
# 10
# Here is your result:
# TWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIX
