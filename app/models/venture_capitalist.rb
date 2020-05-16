class VentureCapitalist
    attr_accessor :name, :total_worth
    @@all = []

    def initialize(name,total_worth)
        @name = name
        @total_worth = total_worth
        VentureCapitalist.all << self
    end

    def self.all
        @@all
    end

    def self.tres_commas_club
        VentureCapitalist.all.select do |v|
            v.total_worth > 1000000000
        end
    end

    def offer_contract(startup,type,investment)
        FundingRound.new(startup,self,type,investment)
    end

    def funding_rounds
        FundingRound.all.select do |v|
            v.venture_capitalist == self
        end
    end

    def portfolio
        funding_rounds.map do |v|
            v.startup
        end.uniq
    end

    # def biggest_investment
    #     funding_rounds.map do |v|
    #         v.
    #     end
    # end

    def invested(domain)
        funding_rounds.map do|v|
            v.investment
        end
    end

end

# `VentureCapitalist#offer_contract`X
#   - given a **startup object**, type of investment (as a string),
#    and the amount invested (as a float), creates a new funding round and 
#    associates it with that startup and venture capitalist.

# - `VentureCapitalist#funding_rounds`X
#   - returns an array of all funding rounds for that venture capitalist

# - `VentureCapitalist#portfolio`X
#   - Returns a **unique** list of all startups this venture capitalist has funded

# - `VentureCapitalist#biggest_investment`
#   - returns the largest funding round given by this venture capitalist

# - `VentureCapitalist#invested`X
#   - given a **domain string**, returns the total amount invested in that domain