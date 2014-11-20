class Manage::HomeController < Manage::AdminController
  def index
    respond_to do |format|
      format.json {
        render :json=> {:a=>'abc',:b=>'bbc'}
      }
    end
  end

end
