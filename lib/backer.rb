require 'pry'

require "project_backer.rb"
 
class Backer
    attr_reader :name
 
    def initialize(name)
        @name = name
    end
 
    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def search_backed
        ProjectBacker.all.select do |projects_backed|
            projects_backed.backer ==  self
        end
    end

    def backed_projects
        search_backed.map do |x|
            x.project
        end
    end
end
