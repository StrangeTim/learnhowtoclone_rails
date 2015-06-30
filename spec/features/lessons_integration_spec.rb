require 'rails_helper'

describe 'the add lesson path' do
  it 'adds a lesson to the index' do
    visit lessons_path
    click_on 'Add a Lesson'
    fill_in 'Name', :with => "Ruby"
    click_on "Create Lesson"
    expect(page).to have_content 'Ruby'
  end

  it "gives error when no name is entered" do
    visit new_lesson_path
    click_on 'Create Lesson'
    expect(page).to have_content 'errors'
  end
end
