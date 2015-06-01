require "spec_helper"

describe Lita::Handlers::Utc, lita_handler: true do

  it { is_expected.to route("utc") }

  it "should respond with the corret UTC time lower case" do
    time = Time.now.utc
    send_message("utc")
    expect(replies.last).to eq("The UTC time and date is now: #{time}")
  end

  it "should respond with the corret UTC time upper case" do
    time = Time.now.utc
    send_message("UTC")
    expect(replies.last).to eq("The UTC time and date is now: #{time}")
  end

end
