class Project

    attr_reader :name, :goal, :creator
    
    @@all = []

    def initialize(name, goal, creator)
        @name = name
        @goal = goal
        @creator = creator
        @@all << self
    end

    def self.all
        @@all
    end

    def pledges
        Pledge.all.select {|pledge| pledge.project == self}
    end

    def pledge_count
        self.pledges.count
    end

    def self.no_pledges
        self.all.select {|project| project.pledge_count == 0}
    end

    def pledged_amount
        self.pledges.sum {|pledge| pledge.amount}
    end

    def above_goal
        self.pledged_amount >= self.goal
    end

    def self.above_goal
        self.all.select {|project| project.above_goal}
    end

    def self.most_backers
        self.all.max_by {|project| project.pledge_count}
    end

end