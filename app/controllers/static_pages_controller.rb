class StaticPagesController < ApplicationController
  
  include StaticPagesHelper

  def home
    @first_time = true#first_time?
    @all = Building.all
  end

  def about    
  end

  def contact
    ContactMailer.contact(params[:name], params[:email], params[:comments]).deliver_now
    redirect_to root_path
  end

end
