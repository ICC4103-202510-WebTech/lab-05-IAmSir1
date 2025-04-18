class MessagesController < ApplicationController
    def index
        @messages = Messages.all
    end
    def show
        @message = Messages.find(params["id"])
    end
end