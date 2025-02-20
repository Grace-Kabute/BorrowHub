class ApplicationController < ActionController::Base
  include Authentication
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  before_action :set_random_quote

  private

  def set_random_quote
    @quotes = [
      "I have always imagined that paradise will be a kind of library. – Jorge Luis Borges",
      "A reader lives a thousand lives before he dies. – George R.R. Martin",
      "The only thing that you absolutely have to know, is the location of the library. – Albert Einstein",
      "Libraries store the energy that fuels the imagination. – Sidney Sheldon"
    ]
    @random_quote = @quotes.sample
  end

end
