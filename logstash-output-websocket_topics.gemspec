Gem::Specification.new do |s|

  s.name            = 'logstash-output-websocket_topics'
  s.version         = '2.1.8'
  s.licenses        = ['Apache License (2.0)']
  s.summary         = "This output runs a websocket server and publishes any messages to those conencted clients that have subscribed to the topic being published."
  s.description     = "This gem is a logstash plugin required to be installed on top of the Logstash core pipeline using $LS_HOME/bin/plugin install gemname. This gem is not a stand-alone program"
  s.authors         = ["Andrew Osheroff"]
  s.email           = 'andrewosh@gmail.com'
  s.homepage        = ""
  s.require_paths = ["lib"]

  # Files
  s.files = Dir['lib/**/*','spec/**/*','vendor/**/*','*.gemspec','*.md','CONTRIBUTORS','Gemfile','LICENSE','NOTICE.TXT']

  # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know this is actually a logstash plugin
  s.metadata = { "logstash_plugin" => "true", "logstash_group" => "output" }

  # Gem dependencies
  s.add_runtime_dependency "logstash-core", ">= 2.0.0.beta2", "< 3.0.0"
  s.add_runtime_dependency 'logstash-codec-plain'
  s.add_runtime_dependency 'sinatra', '~> 1.4.6'
  s.add_runtime_dependency 'ftw', ['~> 0.0.40']

  s.add_development_dependency 'logstash-devutils'
end

