class ProjectBacker
    attr_accessor :backer, :project

    @@all = []

    def self.all
        @@all
    end

    def initialize(project, backer)
        @backer = backer
        @project = project
        @@all << self
    end
end