class StaticPagesController < ApplicationController
  
  include StaticPagesHelper

  def home
    @first_time = first_time?
    @all = Building.all
    @build_hash = Kind.all_by_kinds
  end

  def about    
    @build_hash = Kind.all_by_kinds
    @collaborators = Collaborator.ordered
  end

  def contact
    ContactMailer.contact(params[:name], params[:email], params[:comments]).deliver_now
    redirect_to root_path
  end

end
