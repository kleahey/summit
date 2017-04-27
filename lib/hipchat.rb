require 'httparty'

class Hipchat
  include HTTParty
  format :html

  base_uri 'https://api.hipchat.com/v2/room/421939/notification'

  def self.post_communication(color, message, notify, message_format)
    HTTParty.post(base_uri,
      :query => {
        :color => color,
        :message => message,
        :notify => notify,
        :message_format => message_format
      },
      :headers => {
        :Authorization => "Bearer im2tvoAJxRBa9Z8XP9FK6Ke82x1esTora650bhEu"
      })
  end
end
