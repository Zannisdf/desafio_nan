class WorksController < ApplicationController
  def new
    @work = Work.new
    @project = Project.find(params[:project_id])
    @person = Person.find(params[:person_id])
  end
end
