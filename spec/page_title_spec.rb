require File.dirname(__FILE__) + '/spec_helper'

include PageTitle
describe PageTitle do
  describe "#page_title" do
    it "should return an empty string if @page_title is not set" do
      page_title.should eql('')
    end
    
    it "should return page_title if only set" do
      @page_title = "My Page"
      page_title.should eql('My Page')
    end
    
    it "should add prefix if set" do
      page_title(:prefix => 'London Made').should eql('London Made')
      @page_title = "My Page"
      page_title(:prefix => 'London Made').should eql('London Made &raquo; My Page')
    end
    
    it "should add suffix if set" do
      page_title(:suffix => 'Powered by Rails').should eql('Powered by Rails')
      @page_title = "My Page"
      page_title(:suffix => 'Powered by Rails').should eql('My Page &raquo; Powered by Rails')
    end
    
    it "should use a different seperator if set" do
      @page_title = "My Page"
      page_title(:prefix => 'London Made', :suffix => 'Powered by Rails', :seperator => ' - ').should 
             eql('London Made - My Page - Powered by Rails')
    end
  end
end
