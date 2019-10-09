require 'rails_helper' 

class ApplicationController < ActionController::Base
  class AccessDenied < StandardError; end
end

class ApplicationControllerSubclass < ApplicationController

  rescue_from ApplicationController::AccessDenied, :with => :access_denied

  private

  def access_denied
    redirect_to "/401.html"
  end
end

RSpec.describe ApplicationControllerSubclass do
  controller(ApplicationControllerSubclass) do
    def index
      raise ApplicationController::AccessDenied
    end
  end

  describe "handling AccessDenied exceptions" do
    it "redirects to the /401.html page" do
      get :index
      expect(response).to redirect_to("/401.html")
    end
  end
end

RSpec.describe Api::SessionsController, type: :controller do 
  describe Api::SessionsController do
    it { should route(:post, 'api/sessions').to(action: :create)}
  end
end 

# RSpec.describe Api::UsersController, type: :controller do 
#   describe Api::UsersController do 
#     it { should route(:get, 'api/users/1').to(action: :show, id: 1) }
#     it { should route(:patch, 'api/users/2').to(action: :update, id: 2) }
#     it { should route(:delete, 'api/users/4').to(action: :destroy, id: 4) }
#     it { should route(:post, 'api/users').to(action: :create)}
#   end
# end 

# RSpec.describe Api::ItemsController, type: :controller do 
#   describe Api::ItemsController do
#     it { should route(:get, 'api/items').to(action: :index) }
#     it { should route(:get, 'api/items/1').to(action: :show, id: 1) }
#     it { should route(:patch, 'api/items/2').to(action: :update, id: 2) }
#     it { should route(:delete, 'api/items/4').to(action: :destroy, id: 4) }
#     it { should route(:post, 'api/items').to(action: :create)}
#   end
# end 

# RSpec.describe Api::ListingsController, type: :controller do 
#   describe Api::ListingsController do
#     it { should route(:get, 'api/listings').to(action: :index) }
#     it { should route(:get, 'api/listings/1').to(action: :show, id: 1) }
#     it { should route(:patch, 'api/listings/2').to(action: :update, id: 2) }
#     it { should route(:delete, 'api/listings/4').to(action: :destroy, id: 4) }
#     it { should route(:post, 'api/listings').to(action: :create)}
#   end
# end 

# RSpec.describe Api::MessagesController, type: :controller do 
#   describe Api::MessagesController do
#     it { should route(:get, 'api/messages').to(action: :index) }
#     it { should route(:post, 'api/messages').to(action: :create)}
#   end
# end 

# RSpec.describe Api::AttractionsController, type: :controller do 
#   describe Api::AttractionsController do
#     it { should route(:get, 'api/attractions').to(action: :index) }
#     it { should route(:get, 'api/attractions/1').to(action: :show, id: 1) }
#     it { should route(:patch, 'api/attractions/2').to(action: :update, id: 2) }
#     it { should route(:delete, 'api/attractions/4').to(action: :destroy, id: 4) }
#     it { should route(:post, 'api/attractions').to(action: :create)}
#   end
# end 

# RSpec.describe Api::UsersController, type: :controller do 
#   describe Api::UsersController do
#     current_user = User.create(
#                               first_name: "Test",
#                               last_name: "Test", 
#                               email: "test@test.com", 
#                               password: "p", 
#                               phone_number: "000-000-0000"
#                               )
#     if current_user 
#       it { should route(:get, 'api/users/1').to(action: :show, id: 1) }
#       it { should route(:patch, 'api/users/2').to(action: :update, id: 2) }
#       it { should route(:delete, 'api/users/4').to(action: :destroy, id: 4) }
#       it { should route(:post, 'api/users').to(action: :create)}
#     end 
#   end
# end 

RSpec.describe Api::UsersController, type: :action do 
  describe Api::UsersController do 
    
  end 
end 


