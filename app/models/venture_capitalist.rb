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
            v.total_worth > 1000000
        end
    end

end

# - `VentureCapitalist#name`
#   - returns a **string** that is the venture capitalist's name
# - `VentureCapitalist#total_worth`
#   - returns a **number** that is the total worth of this investor (e.g., think of it as how much money they have)
# - `VentureCapitalist.all`
#   - returns an array of all venture capitalists
# - `VentureCapitalist.tres_commas_club` XXXXXXX
#   - returns an array of all venture capitalists in the Trés Commas club (they have more then 1,000,000,000 `total_worth`)