class Startup

  attr_accessor :name
  attr_reader :founder, :name, :domain

  @@all = []

  def initialize(name, founder, domain)
    @name = name
    @founder = founder
    @domain = domain
  end

  def pivot=(domain, name)
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


# `Startup#name`
#   - returns a **string** that is the startup's name
# - `Startup#founder`
#   - returns a **string** that is the founder's name
#   - Once a startup is created, the founder cannot be changed.
# - `Startup#domain`
#   - returns a **string** that is the startup's domain
# - `Startup#pivot`
#   - given a string of a **domain** and a string of a **name**, change the domain
#     and name of the startup. This is the only public method through which the
#     domain should be changed.
# - `Startup.all`
#   - should return **all** of the startup instances
# - `Startup.find_by_founder`
#   - given a string of a **founder's name**, returns the **first startup** whose founder's name matches
# - `Startup.domains`
#   - should return an **array** of all of the different startup domains