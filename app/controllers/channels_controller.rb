class ChannelsController < ApplicationController
  # before_action :authenticate_user!

  def home; end

  def show
    # @user = current_user
    @user = User.first

    @workspaces = @user.workspaces.includes(:channels).order(created_at: :asc)

    id = params[:channel_id]
    if id.present?
      @channel = Channel.find(id)
    else
      @channel = @workspaces.first.channels.first
    end

    @workspace = @channel.workspace
    @channels  = @workspace.channels.order(created_at: :asc)

    @messages = @channel.messages.includes(:user)
  end
end
