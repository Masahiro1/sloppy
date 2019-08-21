App.room = App.cable.subscriptions.create "RoomChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    $('.messages').append data['message']

  speak: (message) ->
    user_id    = $('.info').attr('data-user-id')
    channel_id = $('.info').attr('data-channel-id')

    @perform 'speak', message: message, user_id: user_id, channel_id: channel_id

$(document).on 'keypress', '[data-behavior~=room_speaker]', (event) ->
  if event.keyCode is 13 # return = send
    App.room.speak event.target.value
    event.target.value = ''
    event.preventDefault()
