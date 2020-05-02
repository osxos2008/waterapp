class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, #except: [:index, :show]

  # GET /projects
  # GET /projects.json
  def index
    @projects = Project.all
  end

  # GET /projects/1
  # GET /projects/1.json
 
  # GET /projects/new
 
  # GET /projects/1/edit

  # POST /projects
  # POST /projects.json
  

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  

  # DELETE /projects/1
  # DELETE /projects/1.json
  

  private

    # Only allow a list of trusted parameters through.
    def project_params
      params.require(:project).permit(:name, :user_id, :assignee_id)
    end
end
