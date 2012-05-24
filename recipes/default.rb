#
# Cookbook Name:: passenger
# Based on passenger_apache2, adapted for nginx too.
# Recipe:: default
#
# Author:: Joshua Timberman (<joshua@opscode.com>)
# Author:: Joshua Sierles (<joshua@37signals.com>)
# Author:: Michael Hale (<mikehale@gmail.com>)
#
# Copyright:: 2009, Opscode, Inc
# Copyright:: 2009, 37signals
# Coprighty:: 2009, Michael Hale
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

include_recipe "rbenv::global_version"
include_recipe "build-essential"

# Install the needed build dependencies for passenger.
packages = value_for_platform({
  ["debian", "ubuntu"] => { "default" => ["wget", "curl", "libcurl4-openssl-dev", "libssl-dev", "zlib1g-dev"] },
  ["centos", "redhat", "fedora"] => { "default" => ["gcc-c++", "make", "wget", "curl", "libcurl-devel", "openssl-devel", "zlib-devel"] },
})

packages.each do |pkg|
  package pkg
end

rbenv_gem "passenger" do
  version node[:passenger][:version]
  ruby_version node[:rbenv][:install_global_version]
end

node.set[:passenger][:root_path] = "#{node[:languages][:ruby][:gems_dir]}/gems/passenger-#{node[:passenger][:version]}"
