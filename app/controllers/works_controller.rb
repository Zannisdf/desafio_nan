class WorksController < ApplicationController
  before_action :set_project
  before_action :set_person

  def new
    @work = Work.new
  end

  def create
    work = Work.new(work_params)
    work.project = @project
    work.person = @person
    if work.save
      redirect_to @project, notice: 'Person added to current project'
    else
      redirect_to new_project_person_work_path(@project, @person), alert: 'There has been an error, please try again.'
    end
  end

  def destroy
    work = Work.find(params[:id])
    work.destroy
    redirect_to @project, notice: 'Person has been removed from the project.'
  end

  private

  def work_params
    params.require(:work).permit(:fee, :start_date, :finish_date)
  end

  def set_project
    @project = Project.find(params[:project_id])
  end
  
  def set_person
    @person = Person.find(params[:person_id])
  end
end
