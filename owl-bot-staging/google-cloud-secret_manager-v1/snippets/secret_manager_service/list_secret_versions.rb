# frozen_string_literal: true

# Copyright 2022 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!

# [START secretmanager_v1_generated_SecretManagerService_ListSecretVersions_sync]
require "google/cloud/secret_manager/v1"

# Create a client object. The client can be reused for multiple calls.
client = Google::Cloud::SecretManager::V1::SecretManagerService::Client.new

# Create a request. To set request fields, pass in keyword arguments.
request = Google::Cloud::SecretManager::V1::ListSecretVersionsRequest.new

# Call the list_secret_versions method.
result = client.list_secret_versions request

# The returned object is of type Gapic::PagedEnumerable. You can
# iterate over all elements by calling #each, and the enumerable
# will lazily make API calls to fetch subsequent pages. Other
# methods are also available for managing paging directly.
result.each do |response|
  # Each element is of type ::Google::Cloud::SecretManager::V1::SecretVersion.
  p response
end
# [END secretmanager_v1_generated_SecretManagerService_ListSecretVersions_sync]