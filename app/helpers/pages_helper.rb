module PagesHelper

  def logo?(path)
    current_page?(path) ? 'logo.png' : 'logo-red.png'
  end
end
