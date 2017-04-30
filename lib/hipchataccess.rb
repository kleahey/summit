class Hip

  def self.notify_new(teammember, session, role, location, start_time)
    client = HipChat::Client.new(Figaro.env.hipchat_token, :api_version => 'v2', :message_format => 'html')
    client[Figaro.env.hipchat_roomid].send("CA University", "<strong>A scheduled event has been added to #{teammember}'s schedule:</strong></br>
      Session: #{session}</br>
      Role: #{role}</br>
      Location: #{location}</br>
      Start Time: #{start_time}", :notify => true)
  end

  def self.notify_update(teammember, session, role, location, start_time)
    client = HipChat::Client.new(Figaro.env.hipchat_token, :api_version => 'v2', :message_format => 'html')
    client[Figaro.env.hipchat_roomid].send("CA University", "<strong>A scheduled event has been updated on #{teammember}'s schedule:</strong></br>
      Session: #{session}</br>
      Role: #{role}</br>
      Location: #{location}</br>
      Start Time: #{start_time}", :notify => true)
  end

  def self.notify_delete(teammember, session, role, location, start_time)
    client = HipChat::Client.new(Figaro.env.hipchat_token, :api_version => 'v2', :message_format => 'html')
    client[Figaro.env.hipchat_roomid].send("CA University", "<strong>A scheduled event has been removed from #{teammember}'s schedule:</strong></br>
      Session: #{session}</br>
      Role: #{role}</br>
      Location: #{location}</br>
      Start Time: #{start_time}", :notify => true)
  end

end
