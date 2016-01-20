# encoding: utf-8
require "logstash/devutils/rspec/spec_helper"
require "logstash/outputs/websocket_topics"

describe "output/websocket_topics" do

  subject(:output) { LogStash::Outputs::WebSocket.new }

  it "should register" do
    expect {output.register}.to_not raise_error
  end

  it "should receive a simple message with a topic" do
    output.register()
    expect {output.receive({ "topic" => "blah" })}.to_not raise_error
  end
end
