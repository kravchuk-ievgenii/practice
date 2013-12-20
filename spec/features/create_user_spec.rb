require 'spec_helper'

describe "test js", :js=> true do

  it "square should move" do
    visit users_path

    
    before_keypress = page.evaluate_script("before_keypress = $('.one').css('left')")

    keypress_script = "var e = $.Event('keypress', { keyCode: 68 }); $('body').trigger(e);"
    page.driver.execute_script(keypress_script)


    puts before_keypress
    
   # page.evaluate_script(" $('document').trigger($.Event('keypress(68)'))" )

    after_keypress = page.evaluate_script("after_keypress = $('.one').css('left')")

    puts after_keypress

   
    expect(before_keypress).not_to be_eql after_keypress



  end

  it "should not have text" do
    visit users_path
    expect(page).not_to have_content 'It works'
  end

  it "should add text", :js=> true  do
    visit users_path
    click_button 'run_test'
    expect(page).to have_content 'It works'
  end

end

describe "create new user"do

  before {visit new_user_path}

  let(:submit) { "Create User" }

  describe "with valid user name" do
    before do
        fill_in "Name",  with: "example"
       
      end

     it "should create a user" do
        expect { click_button submit }.to change(User, :count).by(1)
      end
  end

  describe "with invalid information" do
      it "should not create a user" do
        expect { click_button submit }.not_to change(User, :count)
      end
    end

end