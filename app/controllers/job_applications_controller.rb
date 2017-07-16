class JobApplicationsController < ApplicationController
  before_action :authenticate_user!, only: [:create]
  before_action :authenticate_employee!, only: [:approve]

  def create
    @job = Job.find(params[:job_id])
    JobApplication.create(user: current_user, job: @job)
    redirect_to jobs_path, notice: 'Has postulado'
  end

  def approve
    @job = Job.find(params[:job_id])
    @job_application = JobApplication.find(params[:id])
    @job_application.approved!
    JobMailer.approved_notification(@job_application.user, @job_application.job).deliver_later
    redirect_to [@job.company, @job]
  end
end
