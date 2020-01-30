class Project

    attr_reader :title

    def initialize(title)

        @title = title 

    end

    def add_backer(backer)

        ProjectBacker.new(self, backer)

    end

    def backers()

        output = []

        for proback in ProjectBacker.all

            if proback.project.title === self.title

                   output << proback.backer

            end

        end

        output

    end

end