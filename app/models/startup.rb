class Startup

  attr_accessor :name
  attr_reader :founder, :domain

  @@all = []

  def initialize(name, founder, domain)
    @name = name
    @founder = founder
    @domain = domain
    Startup.all << self
  end

  def pivot(domain, name)
    @domain = domain
    @name = name
  end

  def self.all
    @@all
  end

  def self.find_by_founder(founder_name)
    self.all.find do |startup|
      startup.founder == founder_name
  end
end
def self.domains
  Startup.all.map do |v|
    v.domain
    end.uniq
 end

 def sign_contract(venture_capitalist,type,investment)
  FundingRound.new(self,venture_capitalist,type,investment)
 end

 def num_funding_rounds
  FundingRound.all.select do |v|
    v.startup == self
  end
 end

 def total_funds
  num_funding_rounds.map do |v|
    v.investment
 end
end
  
end

# `Startup#sign_contract`X
#   - given a **venture capitalist object**, type of investment
#  (as a string), and the amount invested (as a float), creates a new funding round and associates it with that startup and venture capitalist.
# - `Startup#num_funding_rounds`
#   - Returns the total number of funding rounds that the startup has gotten
# - `Startup#total_funds`
#   - Returns the total sum of investments that the startup has gotten
# - `Startup#investors`
  # - Returns a **unique** array of all the venture capitalists that
  #  have invested in this company
# - `Startup#big_investors`
#   - Returns a **unique** array of all the venture capitalists that have 
# invested in this company and are in the Trés Commas club
