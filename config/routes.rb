Rails.application.routes.draw do
 
  get 'welcome/index'
  root 'welcome#index'

  resources :api, defaults: { format: :json }, constraints: { subdomain: 'api' }, path: '/' do 


  end

end


=begin
 Prefix Verb   URI Pattern              Controller#Action
welcome_index GET    /welcome/index(.:format) welcome#index
         root GET    /                        welcome#index
    api_index GET    /                        api#index {:subdomain=>"api", :format=>:json}
              POST   /                        api#create {:subdomain=>"api", :format=>:json}
      new_api GET    /new(.:format)           api#new {:subdomain=>"api", :format=>:json}
     edit_api GET    /:id/edit(.:format)      api#edit {:subdomain=>"api", :format=>:json}
          api GET    /:id(.:format)           api#show {:subdomain=>"api", :format=>:json}
              PATCH  /:id(.:format)           api#update {:subdomain=>"api", :format=>:json}
              PUT    /:id(.:format)           api#update {:subdomain=>"api", :format=>:json}
              DELETE /:id(.:format)           api#destroy {:subdomain=>"api", :format=>:json}	
=end