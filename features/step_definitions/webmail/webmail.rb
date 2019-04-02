home = HomePage.new
Given("I`m on Home Screen") do
  home.load
end

Given("I click on Webmail link") do
  home.webmail.click
end

When("I fill email and password with wrong data") do
  home.webmail_form.email.set 'blabla'
  home.webmail_form.password.set 'blabla'
end

When("Click on Entrar") do
  home.webmail_form.enter_button.click
end

Then("Should be displayed a error message {string}") do |string|
  expect(string).to have_text(find('#senha-element > ul').text)
end
