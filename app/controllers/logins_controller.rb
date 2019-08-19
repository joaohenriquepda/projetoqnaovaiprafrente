class LoginsController < ApplicationController

  def login
   if Person.find_by(email: params[:email]).authenticate(params[:password])
    puts "logou"
   else
    puts 'não logou'
   end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_login
      @login = Login.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def login_params
      params.fetch(:login, {})
    end
end
