class ProjectsController < ApplicationController
  def new
    @project = Project.new
    @users = []<<User.new(id: 1, name: "Ali")
    @users<<User.new(id: 2, name: "Abbas")
  end

  def create
    @project = Project.new(project_params)
    @project.save!
    # binding.pry

    # if @project.save
    #   redirect_to @project
    # else
    #   render :new
    # end
  end



  private

  def project_params
    params.require(:project).permit(:title, :description, :project_manager_id)
  end
end
