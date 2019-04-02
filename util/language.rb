require_relative '../language/home/home'

# Class that control with screen and language should load
class Language
  def get_data(screen, expected)
    string = language(screen)
    string.send(expected)
  end

  def language(screen)
    case screen
    when 'webmail'
      HomePageString.new.string
    else
      p 'Cant open'
    end
  end
end
