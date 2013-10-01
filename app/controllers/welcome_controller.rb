class WelcomeController < ApplicationController
def index
	@users = User.joins(:license).where(license: {state: 'WA'})
  end
end
