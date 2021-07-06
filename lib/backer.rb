class Backer
    attr_accessor :name

    @@all = []

    def self.all
      @@all
    end

    def initialize(name)
        @name = name
        @@all << self
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        backed_projects = ProjectBacker.all.select do |bp|
            bp.backer == self
        end
        backed_projects.map do |bp|
            bp.project
        end
    end
end