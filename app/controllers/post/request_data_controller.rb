class Post::RequestDataController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def create
    if params.nil?
      render status: :fail
    end
    p params.permit!
    @location = Information.new(params[:request_datum], :local_time => Time.now)
    respond_to do |format|
      if @location.save
        render :json => {
                   :status => :ok,
                   :message => "Success!",
               }.to_json
      else
        render :json => {
                   :status => :fail,
                   :message => "Fails",
               }.to_json
      end
    end

  end
  private
end
