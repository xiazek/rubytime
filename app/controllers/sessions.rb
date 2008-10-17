class Sessions < Application
  before :login_required, :only => [:index, :destroy]
  
  def create
    if user = User.authenticate(params[:login], params[:password])
      session[:user_id] = user.id
      flash[:notice] = "Successfully loged in."
      redirect url(:root)
    else
      flash.now[:error] = "Bad login or password."
      # redirect url(:login)
      render :new
    end
  end
  
  def index
    redirect url(:activities)
  end
  
  def new
    render
  end
  
  def destroy
    session[:user_id] = nil
    flash[:notice] = "Successfully logged out."
    redirect url(:login)
  end
end