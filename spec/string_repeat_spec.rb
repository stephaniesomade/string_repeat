require 'string_repeat'

RSpec.describe StringRepeater do
  it "repeats given string the amount of times specified" do 
  terminal = double :terminal
  expect(terminal).to receive(:puts).with("Hello. I will repeat a string many times").ordered
  expect(terminal).to receive(:puts).with("Please enter a string").ordered
  expect(terminal).to receive(:gets).and_return("TWIX").ordered
  expect(terminal).to receive(:puts).with("Please enter a number of repeats").ordered
  expect(terminal).to receive(:gets).and_return("10").ordered
  expect(terminal).to receive(:puts).with("Here is your result:").ordered
  expect(terminal).to receive(:print).with("TWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIX").ordered

  string_repeater = StringRepeater.new(terminal)
  string_repeater.run
  end
end 

# Hello. I will repeat a string many times.
# Please enter a string
# TWIX
# Please enter a number of repeats
# 10
# Here is your result:
# TWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIX