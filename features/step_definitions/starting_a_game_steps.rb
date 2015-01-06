When(/^I enter my name "(.*?)"$/) do |name|
  
	fill_in('name', with: 'Charlie')

end

# When(/^I don't fill in the form$/) do
  
# 	expect­().to have_c­ont­ent­('')

# end

# Then(/^the error message "(.*?)"$/) do |arg1|
#   pending # express the regexp above with the code you wish you had
# end