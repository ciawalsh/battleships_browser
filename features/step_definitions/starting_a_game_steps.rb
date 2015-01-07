When(/^I enter my name "(.*?)"$/) do |name|
  
	fill_in('name', with: 'Charlie')

end

When(/^I enter my second namep2 "(.*?)"$/) do |name|
  
	fill_in('namep2', with: 'Bibiana')

end

When(/^I enter my namep(\d+) "(.*?)"$/) do |name, number|

	fill_in('namep2', with: 'Bibiana')

end

When(/^I don't fill my name$/) do

  fill_in('name', with: '')

end

Given(/^I fill in "(.*?)" and "(.*?)"$/) do |name, namep2|
  fill_in('name', with: 'Charlie')
  fill_in('namep2', with: 'Bibiana')
end

Given(/^I press "(.*?)" and "(.*?)"$/) do |submit, submitp2|
  click_button(submit)
  click_button(submitp2)
end

When(/^I enter my coordinate "(.*?)"$/) do |ship|
  
	fill_in('ship', with: 'A1')

end

Then(/^I should see 'Missed!'$/) do
  expect(page).to have_content('Missed!')
end
