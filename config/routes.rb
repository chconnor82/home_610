Rails.application.routes.draw do
  # Routes for the User_style resource:
  # CREATE

  root 'session#home'

  get('/user_styles/new', { :controller => 'user_styles', :action => 'new' })
  get('/create_user_style', { :controller => 'user_styles', :action => 'create' })

  # READ
  get('/user_styles', { :controller => 'user_styles', :action => 'index' })
  get('/user_styles/:id', { :controller => 'user_styles', :action => 'show' })

  # UPDATE
  get('/user_styles/:id/edit', { :controller => 'user_styles', :action => 'edit' })
  get('/update_user_style/:id', { :controller => 'user_styles', :action => 'update' })

  # DELETE
  get('/delete_user_style/:id', { :controller => 'user_styles', :action => 'destroy' })
  #------------------------------

  # Routes for the Room_preference resource:
  # CREATE
  get('/room_preferences/new', { :controller => 'room_preferences', :action => 'new' })
  get('/create_room_preference', { :controller => 'room_preferences', :action => 'create' })

  # READ
  get('/room_preferences', { :controller => 'room_preferences', :action => 'index' })
  get('/room_preferences/:id', { :controller => 'room_preferences', :action => 'show' })

  # UPDATE
  get('/room_preferences/:id/edit', { :controller => 'room_preferences', :action => 'edit' })
  get('/update_room_preference/:id', { :controller => 'room_preferences', :action => 'update' })

  # DELETE
  get('/delete_room_preference/:id', { :controller => 'room_preferences', :action => 'destroy' })
  #------------------------------

  # Routes for the Current_room resource:
  # CREATE
  get('/current_rooms/new', { :controller => 'current_rooms', :action => 'new' })
  get('/create_current_room', { :controller => 'current_rooms', :action => 'create' })

  # READ
  get('/current_rooms', { :controller => 'current_rooms', :action => 'index' })
  get('/current_rooms/:id', { :controller => 'current_rooms', :action => 'show' })

  # UPDATE
  get('/current_rooms/:id/edit', { :controller => 'current_rooms', :action => 'edit' })
  get('/update_current_room/:id', { :controller => 'current_rooms', :action => 'update' })

  # DELETE
  get('/delete_current_room/:id', { :controller => 'current_rooms', :action => 'destroy' })
  #------------------------------

  # Routes for the Contact_detail resource:
  # CREATE
  get('/contact_details/new', { :controller => 'contact_details', :action => 'new' })
  get('/create_contact_detail', { :controller => 'contact_details', :action => 'create' })

  # READ
  get('/contact_details', { :controller => 'contact_details', :action => 'index' })
  get('/contact_details/:id', { :controller => 'contact_details', :action => 'show' })

  # UPDATE
  get('/contact_details/:id/edit', { :controller => 'contact_details', :action => 'edit' })
  get('/update_contact_detail/:id', { :controller => 'contact_details', :action => 'update' })

  # DELETE
  get('/delete_contact_detail/:id', { :controller => 'contact_details', :action => 'destroy' })
  #------------------------------

  devise_for :users
  # Routes for the Room resource:
  # CREATE



  get('/rooms/new', { :controller => 'rooms', :action => 'new' })
  get('/create_room', { :controller => 'rooms', :action => 'create' })

  # READ
  get('/rooms', { :controller => 'rooms', :action => 'index' })
  get('/rooms/:id', { :controller => 'rooms', :action => 'show' })

  # UPDATE
  get('/rooms/:id/edit', { :controller => 'rooms', :action => 'edit' })
  get('/update_room/:id', { :controller => 'rooms', :action => 'update' })

  # DELETE
  get('/delete_room/:id', { :controller => 'rooms', :action => 'destroy' })
  #------------------------------

  get( '/home_610', {:controller => 'session', :action => 'home' })

end
