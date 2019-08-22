scrollBtm = () ->
  h = $('.message-item').height()
  l = $('.message-item').length
  $('.messages').scrollTop(h * l * 1.5)

App.room = App.cable.subscriptions.create "RoomChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    if data['channel_id'] == $('.info').attr('data-channel-id')
      $('.messages').append data['message']
      scrollBtm()

  speak: (message) ->
    user_id    = $('.info').attr('data-user-id')
    channel_id = $('.info').attr('data-channel-id')

    @perform 'speak', message: message, user_id: user_id, channel_id: channel_id

$(document).on 'keypress', '[data-behavior~=room_speaker]', (event) ->
  if event.keyCode is 13 # return = send
    if event.target.value.length > 0
      App.room.speak event.target.value
      event.target.value = ''
      event.preventDefault()

$(document).on 'click', '.submit-btn', (event) ->
  v = $('.input').val()
  if v.length > 0
    App.room.speak v
    $('.input').val('')

$(document).ready (event) ->
  scrollBtm()
