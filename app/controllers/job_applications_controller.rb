class JobApplicationsController < ApplicationController
  before_action :authenticate_user!

  def create
    @job = Job.find(params[:job_id])
    JobApplication.create(user:current_user, job: @job)
    redirect_to 'jobs#index', notice: 'Has postulado'
  end

  def approve
    @job = Job.find(params[:job_id])
    @job_application = JobApplication.find(params[:id])
    @job_application.approved!
    redirect_to [@job.company, @job]
  end
end
