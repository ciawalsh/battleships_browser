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