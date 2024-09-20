require_relative '../lib/search_candies.rb'

RSpec.describe "search_candies" do

    it "prefix A, max 4, returns 1" do
        expect(search_candies("A", 4)).to eq(
            ['Aero']
        )
    end

    it "prefix S, max 10, returns 3" do
        expect(search_candies("S", 7)).to eq(
            ['Skitties', 'Skittles', 'Starburst',]
        )
    end

    it "prefix S, max 4, return 2" do
        expect(search_candies("S", 4)).to eq(
            ['Skitties', 'Skittles']
        )
    end

    it "prefix R, max 10, returns 2" do
        expect(search_candies("R", 10)).to eq(
            ['Ricola', 'Raffaello']
        )
    end

    it "prefix R, max 3, returns 1" do
        expect(search_candies("R", 3)).to eq(
            ['Ricola']
        )
    end
        
    it "prefix M, max 10, returns 3" do
        expect(search_candies("M", 10)).to eq(
            ['Mars', 'Maltesers', 'Mentos']
        )
    end

    it "prefix Ma, max 5, returns 2" do
        expect(search_candies("Ma", 5)).to eq(
            ['Mars', 'Maltesers']
        )
    end

end