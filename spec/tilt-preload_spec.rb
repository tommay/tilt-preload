require "bundler/setup"
require "minitest/autorun"
require "tilt-preload"

describe "tilt-preload" do
#  context "Haml" do
    before do
      @haml = Object.const_get(:Haml) rescue nil
      Object.send(:remove_const, :Haml) if defined?(Haml)
    end
    
    after do
      if @haml
        Object.const_set(:Haml, @haml)
      else
        Object.send(:remove_const, :Haml) if defined?(Haml)
      end
    end
    
    it "requires tilt/haml if Haml is defined" do
      tilt_haml_requred = false
      
      req = lambda do |file|
        tilt_haml_requred = true if file == "tilt/haml"
      end
      
      Object.const_set(:Haml, :anything)
      
      TiltPreload.stub :require, req do
        TiltPreload.preload
      end
      
      assert tilt_haml_requred
    end
    
    it "dpesn't require tilt/haml if Haml is not defined" do
      tilt_haml_requred = false
      
      req = lambda do |file|
        tilt_haml_requred = true if file == "tilt/haml"
      end
      
      TiltPreload.stub :require, req do
        TiltPreload.preload
      end
      
      assert tilt_haml_requred == false
    end
#  end
end
