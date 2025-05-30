class MessagesController < ApplicationController
    before_action :set_message, only: [ :show, :edit, :update ]
    before_action :authenticate_user!
    load_and_authorize_resource

    def index
        @messages = Message.accessible_by(current_ability)
    end

    def show
    end

    def new
        @message = Message.new
        @chats = current_user.sent_chats + current_user.received_chats
    end

    def create
        @message = Message.new message_params
        @message.user_id = current_user.id
        if @message.save
            redirect_to messages_path
        else
            render :new
        end
    end

    def edit
        @chats = current_user.sent_chats + current_user.received_chats
    end

    def update
        if @message.update message_params
            redirect_to message_path
          else
            render :edit
        end
    end

    private

    def message_params
        params.require(:message).permit(:chat_id, :body)
    end

    def set_message
        @message = Message.find(params["id"])
    end
end