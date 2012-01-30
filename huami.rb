#!/usr/bin/env ruby
# Huami Ruby Version
# Author: Wei Zhu <yesmeck@gmail.com>

require 'rubygems'
require 'highline/import'
require 'openssl'

STR1 = "snow"
STR2 = "kise"
STR3 = "sunlovesnow1990090127xykab"

def huami(key, password)
  md5one    = md5_hmac(key, password)
  md5two    = md5_hmac(STR1, md5one)
  md5three  = md5_hmac(STR2, md5one)

  # 转换大小写
  rule    = md5three.split('')
  source  = md5two.split('')
  for i in (0..31)
    if STR3.include? rule[i]
      source[i] = source[i].upcase
    end
  end

  # 保证首字符为字母
  if source[0].is_numeric?
    code16 = "k" + source[1..15].join()
  else
    code16 = source[0..15].join()
  end

  return code16
end

def md5_hmac(key, password)
  digest = OpenSSL::Digest::Digest.new('md5')
  return OpenSSL::HMAC.hexdigest(digest, key, password)
end

def usage
  puts "Usage:"
  puts "huami.rb KEY"
end

class String
  def is_numeric?
    self.strip =~ /^(-|\+|)[0-9]*(\.[0-9]+)?$/
  end
end

if ARGV.length != 1
  usage()
  exit(1)
end

key = ARGV[0]
password = ask("Enter password:  ") { |q| q.echo = false }

puts huami(key, password)
