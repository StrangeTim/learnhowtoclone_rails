require 'rails_helper'

describe 'the add section path' do
  it 'adds a section to the index' do
    visit sections_path
    click_on 'Add a Section'
    fill_in 'Name', :with => "Ruby"
    click_on "Create Section"
    expect(page).to have_content 'Ruby'
  end

  it "gives error when no name is entered" do
    visit new_section_path
    click_on 'Create Section'
    expect(page).to have_content 'errors'
  end
end

describe 'the show section path' do
  it 'displays the section on the show page' do
    visit sections_path
    click_on 'Add a Section'
    fill_in 'Name', :with => "Ruby"
    click_on "Create Section"
    click_on "Ruby"
    expect(page).to have_content 'Ruby Details'
  end

  it 'edits the name of a section' do
    visit sections_path
    click_on 'Add a Section'
    fill_in 'Name', :with => "Ruby"
    click_on "Create Section"
    click_on "Ruby"
    click_on "Edit Ruby"
    fill_in 'Name', :with => "FUN!"
    click_on 'Update Section'
    click_on 'FUN'
    expect(page).to have_content 'FUN! Details'
  end

  it 'deletes the name of a section' do
    visit sections_path
    click_on 'Add a Section'
    fill_in 'Name', :with => "Ruby"
    click_on "Create Section"
    click_on "Ruby"
    click_on "Delete Ruby"
    # click_on "OK"
    expect(page).to have_content 'Index of Sections'
  end
end
