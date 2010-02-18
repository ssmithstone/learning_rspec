require 'spec_helper'

describe ContactsController do

  describe "POST 'result_list" do
    
    it "should be a mailing list where there is a newsletter_id" do
      result_list_id = "1"
      Newsletter.should_receive(:find).with(result_list_id).and_return(mock_model(ResultList , :in_progress? => true))
      post :result_list , { :newsletter_id => "1" , :result_list_id => result_list_id}
    end
    
    it "should be a pdf list when no newsletter_id is present" do
      result_list_id = "1"
      Pdflist.should_receive(:find).with(result_list_id).and_return(mock_model(ResultList , :in_progress? => true))
      post :result_list , { :result_list_id => result_list_id }
      
    end
    
    context "something" do
      before(:each) do
      
      end
    end
    
    it "should call rake if the result is in progress" do
      mock_result_list = mock_model(ResultList , :in_progress? => false )
      Newsletter.stub(:find).and_return(mock_result_list)
      MyRake.should_receive(:call_rake)
      post :result_list , {:newsletter_id => "1" , :result_list_id => "1"}
    end
    
    it "should redirect to contacts path when called via http" do
      Pdflist.should_receive(:find).and_return(mock_model(ResultList , :in_progress? => true))
      post :result_list , {:format => "html"}
      response.should redirect_to '/contacts' # replace with contacts_path when using names routes
    end
    
    it "should render nothing when called via ajax" do
      pending("not sure about :nothing => true")
      Pdflist.should_receive(:find).and_return(mock_model(ResultList , :in_progress? => true))
      post :result_list , {:format => "js"}
    end
    
  end
end
