class Hip

  def self.notify_new(teammember, handle, session, role, location, start_time)
    client = HipChat::Client.new(Figaro.env.hipchat_token, :api_version => 'v2', :message_format => 'html')
    client[Figaro.env.hipchat_roomid].send("CA University", "#{handle} <strong>An event has been added to #{teammember}'s schedule:</strong></br>
      Session: #{session}</br>
      Role: #{role}</br>
      Location: #{location}
      Start Time: #{start_time}", :notify => false)
  end

  def self.notify_update(teammember, handle, session, role, location, start_time)
    client = HipChat::Client.new(Figaro.env.hipchat_token, :api_version => 'v2', :message_format => 'html')
    client[Figaro.env.hipchat_roomid].send("CA University", "#{handle} <strong>An event has been updated on #{teammember}'s schedule:</strong></br>
      Session: #{session}</br>
      Role: #{role}</br>
      Location: #{location}</br>
      Start Time: #{start_time}", :notify => false)
  end

  def self.notify_delete(teammember, handle, session, role, location, start_time)
    client = HipChat::Client.new(Figaro.env.hipchat_token, :api_version => 'v2', :message_format => 'html')
    client[Figaro.env.hipchat_roomid].send("CA University", "#{handle} <strong>An event has been removed from #{teammember}'s schedule:</strong></br>
      Session: #{session}</br>
      Role: #{role}</br>
      Location: #{location}</br>
      Start Time: #{start_time}", :notify => false)
  end

  def self.custom_message(color, message)
    client = HipChat::Client.new(Figaro.env.hipchat_token, :api_version => 'v2', :message_format => 'text')
    client[Figaro.env.hipchat_roomid].send("CA University", message, :notify => false, :color => color)
  end

end
