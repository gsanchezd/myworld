class LandingsController < ApplicationController
  layout false
  def index
    @jobs = Job.last(5)
  end
end
