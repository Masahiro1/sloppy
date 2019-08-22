class ChannelsController < ApplicationController
  # before_action :authenticate_user!

  def home; end

  def show
    # @user = current_user
    @user = User.first

    @workspaces = @user.workspaces.includes(:channels).order(created_at: :asc)

    channel_id = params[:channel_id]
    workspace_id = params[:workspace_id]
    if channel_id.present?
      @channel = Channel.find(channel_id)
    elsif workspace_id.present?
      @channel = Workspace.find(workspace_id).channels.first
    else
      @channel = @workspaces.first.channels.first
    end

    @workspace = @channel.workspace
    @channels  = @workspace.channels.order(created_at: :asc)

    @messages = @channel.messages.includes(:user)
  end
end
