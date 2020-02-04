class Project 
    attr_accessor :title
    
    @@all = []

    def initialize(title)
        @title = title
    end

    def self.all
        @@all
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        project_backers = ProjectBacker.all.select do |pb| 
          pb.project == self
        end #gets backers who are associated with project
        project_backers.map do |pb|
          pb.backer
        end #put those backers into an new array
      end
end