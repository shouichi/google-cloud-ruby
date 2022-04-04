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


module Google
  module Cloud
    module ServiceDirectory
      module V1
        # The request message for
        # {::Google::Cloud::ServiceDirectory::V1::LookupService::Client#resolve_service LookupService.ResolveService}.
        # Looks up a service by its name, returns the service and its endpoints.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the service to resolve.
        # @!attribute [rw] max_endpoints
        #   @return [::Integer]
        #     Optional. The maximum number of endpoints to return. Defaults to 25.
        #     Maximum is 100. If a value less than one is specified, the Default is used.
        #     If a value greater than the Maximum is specified, the Maximum is used.
        # @!attribute [rw] endpoint_filter
        #   @return [::String]
        #     Optional. The filter applied to the endpoints of the resolved service.
        #
        #     General filter string syntax:
        #     <field> <operator> <value> (<logical connector>)
        #     <field> can be "name" or "metadata.<key>" for map field.
        #     <operator> can be "<, >, <=, >=, !=, =, :". Of which ":" means HAS and is
        #     roughly the same as "=".
        #     <value> must be the same data type as the field.
        #     <logical connector> can be "AND, OR, NOT".
        #
        #     Examples of valid filters:
        #     * "metadata.owner" returns Endpoints that have a label with the
        #       key "owner", this is the same as "metadata:owner"
        #     * "metadata.protocol=gRPC" returns Endpoints that have key/value
        #       "protocol=gRPC"
        #     * "metadata.owner!=sd AND metadata.foo=bar" returns
        #       Endpoints that have "owner" field in metadata with a value that is not
        #       "sd" AND have the key/value foo=bar.
        class ResolveServiceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The response message for
        # {::Google::Cloud::ServiceDirectory::V1::LookupService::Client#resolve_service LookupService.ResolveService}.
        # @!attribute [rw] service
        #   @return [::Google::Cloud::ServiceDirectory::V1::Service]
        class ResolveServiceResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end