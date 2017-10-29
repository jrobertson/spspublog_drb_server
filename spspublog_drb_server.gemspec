Gem::Specification.new do |s|
  s.name = 'spspublog_drb_server'
  s.version = '0.1.0'
  s.summary = 'A DRb server for accessing an SPSPub_log object remotely'
  s.authors = ['James Robertson']
  s.files = Dir['lib/spspublog_drb_server.rb']
  s.add_runtime_dependency('spspub_log', '~> 0.1', '>=0.1.1')  
  s.signing_key = '../privatekeys/spspublog_drb_server.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'james@jamesrobertson.eu'
  s.homepage = 'https://github.com/jrobertson/spspublog_drb_server'
end
