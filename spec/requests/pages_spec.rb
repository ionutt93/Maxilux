require 'spec_helper'

describe "Pages" do
 describe "home" do
 	before { visit "/pages/home" }
 	subject {page}
 	it { should have_content("Home")}
 end
end
