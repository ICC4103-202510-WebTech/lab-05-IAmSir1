class ChatsController < ApplicationController
    before_action :set_chat, only: [ :show, :edit, :update ]
    before_action :authenticate_user!
    load_and_authorize_resource

    def index
        @chats = current_user.sent_chats + current_user.received_chats
    end

    def show
    end

    def new
        @chat = Chat.new
    end

    def create
        @chat = Chat.new chat_params
        @chat.sender_id = current_user.id
        if @chat.save
            redirect_to chats_path
        else
            render :new
        end
    end

    def edit
    end

    def update
        if @chat.update chat_params
            redirect_to chat_path
          else
            render :edit
        end
    end
    
    private

    def chat_params
        params.require(:chat).permit(:receiver_id)
    end

    def set_chat
        @chat = Chat.find(params["id"])
    end
end