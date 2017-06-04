class AppleTree
    # Apple Tree should have an age attribute with getter and setter methods.
    attr_accessor :age
    # Apple Tree should have a height attribute with only a getter method.
    # You should raise a NoMethodError if anyone tries to set the height
    # attribute directly.
    attr_reader :height, :count

    def initialize
        @age = 0
        @height = 20
        @count = 0
    end

    def year_gone_by
        @age += 1
        @height = @height * 1.10
        if @age.between?(4, 10)
            @count +=2
        end
    end

    def pick_apples
        @count = 0
    end 

end
