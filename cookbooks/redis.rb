# frozen_string_literal: true
%w{
  redis-server
}.each do |pkg|
  package pkg
end

