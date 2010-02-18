class ContactsController < ApplicationController
  def result_list
    
    if(params[:newsletter_id])
      result_list = Newsletter.find(params[:result_list_id])
    else
      result_list = Pdflist.find(params[:result_list_id])
    end
    unless result_list.in_progress?
      MyRake.call_rake
    end
    
    respond_to do |format|
      format.html { redirect_to '/contacts' }
      format.js { render :nothing => true }
    end
  end


  def call_rake
    
  end
end

class MyRake
  def self.call_rake
  end
end
