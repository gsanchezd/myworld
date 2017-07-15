class JobApplicationsController < ApplicationController
  before_action :authenticate_user!

  def create
    @job = Job.find(params[:job_id])
    JobApplication.create(user:current_user, job: @job)
    redirect_to 'jobs#index', notice: 'Has postulado'
  end
end
