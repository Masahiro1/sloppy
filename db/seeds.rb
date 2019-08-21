# reset
User.all.destroy_all
Workspace.all.destroy_all
Channel.all.destroy_all

# channelを10こもつ　workspace1つ　を1つずつもつ user を10作成
10.times do |i|
  user = User.create!(
    email: "user#{i}@example.com",
    password: "password",
    name: "user#{i}",
  )

  workspace = user.workspaces.build(
    name: "workspace#{i}"
  )
  workspace.save!

  10.times do |j|
    channel = workspace.channels.build(
      name: "channel#{i}_#{j}"
    )
    channel.save!
  end
end

puts "finish create users, workspaces, channels"

# 全部の user を 全部の workspace、channel に登録
users = User.order(created_at: :asc)
workspaces = Workspace.order(created_at: :asc)
channels = Channel.order(created_at: :asc)

users.each do |u|
  workspaces.each do |w|
    UserWorkspace.create!(user_id: u.id, workspace_id: w.id)
  end

  channels.each do |c|
    UserChannel.create!(user_id: u.id, channel_id: c.id)
  end
end

puts "finish connect users and workspaces, channels"
