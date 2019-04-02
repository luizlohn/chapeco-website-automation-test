# PageObject of HomePage

# PageObject of HomePage
class Webmail < SitePrism::Section
  element :email, '#webmailFastLogin > input[type="text"]:nth-child(1)'
  element :password, '#webmailFastLogin > input[type="password"]:nth-child(2)'
  element :enter_button, '#webmailFastLogin > input[type="submit"]:nth-child(4)'
end


class HomePage < SitePrism::Page
  set_url '/'

  element :webmail, '#button-acesso-webmail'
  element :minha_uno, '#button-acesso-minhauno'
  section :webmail_form, Webmail, '#simplemodal-container > div'
end
