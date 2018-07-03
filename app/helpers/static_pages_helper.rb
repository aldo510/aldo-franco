module StaticPagesHelper

  def first_time?
    if cookies[:first_time] == nil
      cookies[:first_time] = { value: false, expires: 3.hours.from_now }
      return true
    else
      return false
    end
  end

end
