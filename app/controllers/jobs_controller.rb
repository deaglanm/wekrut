class JobsController < ApplicationController
	def index
	@jobs = Job.all
	end
	def new
	@job = Job.find_by_id(params[:id])
	end
	def show
    @job = Job.find_by_id(params[:id])
    @job = Job.new
  	end
	def create
  	@job = Job.new(job_params)
 
  	@job.save
  	redirect_to @job
	end
 
	private
  	def job_params
    params.require(:job).permit(:name, :description, :recuiter_id, :referral_fee)
  	end
end
