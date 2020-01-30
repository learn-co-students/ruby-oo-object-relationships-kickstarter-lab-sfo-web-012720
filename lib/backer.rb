class Backer

    attr_reader :name

    def initialize(name)

        @name = name 

    end
    
    def back_project(project)

        ProjectBacker.new(project, self)

    end

    def backed_projects

        output = []

        for proback in ProjectBacker.all

            if proback.backer.name === self.name

                output << proback.project

            end

        end

        output
    
    end

end