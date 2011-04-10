#
# Cookbook Name:: passenger
# Based on passenger_apache2
# attributes:: passenger
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
#

default[:passenger][:version]     = "2.2.15"

# General
default[:passenger][:spawn_method] = "smart-lv2"
default[:passenger][:use_global_queue] = true

# Security
default[:passenger][:user_switching] = true
default[:passenger][:default_user] = "nobody"
default[:passenger][:default_group] = nil
default[:passenger][:friendly_error_pages] = true

# Resource control and optimization
default[:passenger][:max_pool_size] = 6
default[:passenger][:min_instances] = 1
default[:passenger][:max_instances_per_app] = 0
default[:passenger][:pool_idle_time] = 300
default[:passenger][:max_requests] = 0
default[:passenger][:stat_throttle_rate] = 0
default[:passenger][:pre_start_urls] = []
default[:passenger][:high_performance] = false

# Compatibility
default[:passenger][:resolve_symlinks_in_document_root] = false
default[:passenger][:allow_encoded_slashes] = false

# Logging and debugging
default[:passenger][:log_level] = 0
default[:passenger][:debug_log_file] = nil

# Ruby on Rails-specific
default[:passenger][:rails_auto_detect] = true
default[:passenger][:rails_base_uri] = nil
default[:passenger][:rails_env] = "production"
default[:passenger][:rails_framework_spawner_idle_time] = 1800
default[:passenger][:rails_app_spawner_idle_time] = 600

# Rack-specific
default[:passenger][:rack_auto_detect] = true
default[:passenger][:rack_base_uri] = nil
default[:passenger][:rack_env] = "production"
