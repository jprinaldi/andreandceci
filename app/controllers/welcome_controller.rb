class WelcomeController < ApplicationController
  def index
    @rsvp_form = RSVPForm.new
  end
  
  def rsvp
    rsvp_form = RSVPForm.new(form_params)
    rsvp_form.deliver
    redirect_to root_path
  end
  
  private
  
  def form_params
    params.require(:rsvp_form).permit(:name, :guest_count, :song_request)
  end
end
