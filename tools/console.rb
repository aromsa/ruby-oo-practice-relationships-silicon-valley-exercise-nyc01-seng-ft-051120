require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
name1 = Startup.new("facebook","mark","facebook.com")
name2 = Startup.new("Twitter","Joe","twitter.com")
name3 = Startup.new("apple","sam","apple.com")

vc1 = VentureCapitalist.new("FUND",1000)
vc2 = VentureCapitalist.new("VC",4000)
vc3 = VentureCapitalist.new("Bank",400000000)

round1 = FundingRound.new(name1,vc2,"series a",50.32)
round2 = FundingRound.new(name2,vc1,"series b",500.54)
round3 = FundingRound.new(name3,vc3,"series e",500.27)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line