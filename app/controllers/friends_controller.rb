class FriendsController < ApplicationController
    #the 7 golden restful actions(index, show, destroy, new, create, edit, update)
   
    #create (new, create) (new : 사용자가 입력하는 곳, create : 입력한 것을 처리하는 곳)
    def new
        @token = form_authenticity_token
    end
    
    def create
        friend = Friend.new
        friend.name = params[:input_name]
        friend.gender = params[:input_gender]
        friend.age = params[:input_age]
        friend.hobby = params[:input_hobby]
        friend.save
        redirect_to "/friends/#{friend.id}"
    end
    
    #read (index, show) (index : 다 보여주는 것, show : 하나만 보여주는 것)
    def index
        @friends = Friend.all
    end
    
    def show
        @friend = Friend.find params[:id]
    end
    
    #update (edit, update) (edit : 사용자가 입력하는 곳, update : 입력한 것을 처리하는 곳)
    def edit
        @friend = Friend.find params[:id]
        @token = form_authenticity_token
    end
    
    def update
        friend = Friend.find params[:id]
        friend.name = params[:input_name]
        friend.gender = params[:input_gender]
        friend.age = params[:input_age]
        friend.hobby = params[:input_hobby]
        friend.save
        redirect_to "/friends/#{friend.id}"
    end
    
    #destroy (destroy)
    def destroy
        @friend = Friend.find params[:id]
        @friend.destroy
        redirect_to '/friends'
    end
end
