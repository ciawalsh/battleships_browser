When(/^I enter my name "(.*?)"$/) do |name|
  
	fill_in('name', with: 'Charlie')

end

When(/^I don't fill my name$/) do

  fill_in('name', with: '')

end