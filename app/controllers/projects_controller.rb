class ProjectsController < ApplicationController
    before_action :set_project, only: [:show, :edit, :update, :delete]

    def index
        @projects = Project.all
    end

    def show
    end

    def new
        @project = Project.new
    end

    def create
        project = Project.create(project_params(:name, :description))
        redirect_to project_path(project.id)
    end

    def update
        @project.update(project_params(:name, :description))
        redirect_to project_path(@project.id)
    end

    def edit
    end

    def delete
        @project.destroy
        redirect_to projects_path
    end

    private

    def project_params(*args)
        params.require(:project).permit(*args)
    end

    def set_project
        @project = Project.find(params[:id])
    end
end