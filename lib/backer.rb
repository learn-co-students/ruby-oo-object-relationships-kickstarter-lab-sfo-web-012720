class Backer
    attr_accessor :name
    
    @@all = []
    
    def initialize(name)
        @name = name 
        @@all << self 
    end

    def self.all
        @@all 
    end

    def back_project(project)
        ProjectBacker.new(project,self)
    end

    def backed_projects
        project_backers = ProjectBacker.all.select do |pb|
          pb.backer == self # get the backers
        end
        project_backers.map do |pb|
          pb.project #return array of backers
        end
    end

end