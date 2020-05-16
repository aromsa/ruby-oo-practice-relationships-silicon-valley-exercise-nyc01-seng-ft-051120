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

  def funding_rounds
    FundingRound.all.select do |fr|
      fr.startup == self
    end
  end

  def num_funding_rounds
    funding_rounds.count
  end

  def total_funds
    a = funding_rounds.map do |v|
      v.investment
    end
    a.sum
  end

  def investors
    funding_rounds.map do |v|
      v.venture_capitalist.name
    end.uniq
  end

  def big_investors
    #not working yet
    funding_rounds.select do |fr|
      fr.investment > 1000000000
    end
  end
  
end

# DONE `Startup#sign_contract`X
#     - given a **venture capitalist object**, type of investment
#       (as a string), and the amount invested (as a float), creates a new funding round and associates it with that startup and venture capitalist.
# 
# DONE - `Startup#num_funding_rounds` X
#      - Returns the total number of funding rounds that the startup has gotten

# DONE - `Startup#total_funds`X
#       - Returns the total sum of investments that the startup has gotten
# 
# DONE - `Startup#investors`X
#       - Returns a **unique** array of all the venture capitalists that
#         have invested in this company

# - `Startup#big_investors`
#   - Returns a **unique** array of all the venture capitalists that have 
# invested in this company and are in the Trés Commas clubXXXXXXX
