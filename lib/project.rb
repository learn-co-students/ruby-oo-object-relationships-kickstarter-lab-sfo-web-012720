class Project
    attr_reader :title
    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end
 
    def search_projects
        ProjectBacker.all.select do |projects_backed|
            projects_backed.project ==  self
        end
    end
 
    def backers
        search_projects.map do |x|
            x.backer
        end
    end
end