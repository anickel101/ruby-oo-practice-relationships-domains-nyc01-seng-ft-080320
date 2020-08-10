class User

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def make_pledge(project, amount)
        if project.class == Project && !project.above_goal
            Pledge.new(self, project, amount)
        end
    end

    def pledges
        Pledge.all.select {|pledge| pledge.user == self}
    end

    def pledged_projects
        self.pledges.map {|pledge| pledge.project}.uniq
    end

    def create_project(name, goal)
        Project.new(name, goal, self)
    end

    def created_projects
        Project.all.select {|project| project.creator == self}
    end

    def self.project_creator
        Project.all.map {|project| project.creator}
    end

    def self.multi_pledger
        self.all.select {|user| user.pledged_projects.count > 1}
    end

    def self.highest_pledge
        Pledge.all.max_by {|pledge| pledge.amount}.user
    end

end