require_relative 'apple_tree'

RSpec.describe AppleTree do
    before(:each) do
        @appletree = AppleTree.new
    end
    it "has an age attribute with getter and setter methods" do
        # @appletree = AppleTree.new
        @appletree.age = 5
        expect(@appletree.age).to eq(5)
    end

    it "should have a height attribute with only a getter method" do
        # @appletree = AppleTree.new
        expect(@appletree.height).to eq(20)
    end

    it "should raise a NoMethodError if anyone tries to set the height attribute directly" do
        # @appletree = AppleTree.new
        expect{@appletree.height = 1}.to raise_error(NoMethodError)
    end

    it "should have an apple count attribute with only a getter method" do
        expect(@appletree.count).to eq(0)
    end

    it "should raise a NoMethodError if anyone tries to set the apple count attribute directly" do
        expect{@appletree.count = 500}.to raise_error(NoMethodError)
    end

    context "should have a method called year_gone_by" do
        before (:each) do
            @appletree.year_gone_by
        end
        it "should add 1 year to age" do
            expect(@appletree.age).to eq(1)
        end
        it "should increase the height by 10% of its current height" do
            expect(@appletree.height).to eq(22)
        end

        context "should increase apple count by 2 between ages 4-10" do
            it "shouldn't increase count if less than or equal to 3" do
                1.times{@appletree.year_gone_by} #age it by 2 years- from 1 to age 2
                expect(@appletree.count).to eq(0)
            end
            it "should increase if age is between 4 and 10" do
                3.times{@appletree.year_gone_by} #age it by 3 years - from 1 to 4
                expect(@appletree.count).to eq(2) # no growth years 1-3, 2 on age 4
            end
            it "should not grow apples if it is older than 10" do
                11.times{@appletree.year_gone_by} #at age 11
                expect(@appletree.count).to eq(14) #no aging past age 10
            end

        end

        it "should have a method called pick_apples that takes all of the apples off the tree" do
            5.times{@appletree.year_gone_by} # would put the count at 6
            @appletree.pick_apples # turns 6 to 0
            expect(@appletree.count). to eq(0)
        end
    end

end
