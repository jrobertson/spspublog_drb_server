#!/usr/bin/env ruby

# file: spspublog_drb_server.rb

require 'drb'
require 'spspub_log'


class SPSPubLogDRbServer

  def self.start(host: '0.0.0.0', port: '90900', 
        sps: {host: 'sps2', port: 59100 })
    
    sps = SPSPubLog.new host: sps[:host], port: sps[:port]

    DRb.start_service "druby://#{host}:#{port}", sps
    DRb.thread.join
  end

end