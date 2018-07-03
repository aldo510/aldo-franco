class StaticPagesController < ApplicationController
  
  include StaticPagesHelper

  def home
    @first_time = first_time?
  end

  def contact
  end

end
