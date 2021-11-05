# frozen_string_literal: true

# Copyright 2021 Google LLC
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
    module Gaming
      module V1
        # Request message for RealmsService.ListRealms.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent resource name, in the following form:
        #     `projects/{project}/locations/{location}`.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. The maximum number of items to return.  If unspecified, server
        #     will pick an appropriate default. Server may return fewer items than
        #     requested. A caller should only rely on response's
        #     {::Google::Cloud::Gaming::V1::ListRealmsResponse#next_page_token next_page_token} to
        #     determine if there are more realms left to be queried.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. The next_page_token value returned from a previous List request,
        #     if any.
        # @!attribute [rw] filter
        #   @return [::String]
        #     Optional. The filter to apply to list results.
        # @!attribute [rw] order_by
        #   @return [::String]
        #     Optional. Specifies the ordering of results following syntax at
        #     https://cloud.google.com/apis/design/design_patterns#sorting_order.
        class ListRealmsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for RealmsService.ListRealms.
        # @!attribute [rw] realms
        #   @return [::Array<::Google::Cloud::Gaming::V1::Realm>]
        #     The list of realms.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     Token to retrieve the next page of results, or empty if there are no more
        #     results in the list.
        # @!attribute [rw] unreachable
        #   @return [::Array<::String>]
        #     List of locations that could not be reached.
        class ListRealmsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for RealmsService.GetRealm.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the realm to retrieve, in the following form:
        #     `projects/{project}/locations/{location}/realms/{realm}`.
        class GetRealmRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for RealmsService.CreateRealm.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent resource name, in the following form:
        #     `projects/{project}/locations/{location}`.
        # @!attribute [rw] realm_id
        #   @return [::String]
        #     Required. The ID of the realm resource to be created.
        # @!attribute [rw] realm
        #   @return [::Google::Cloud::Gaming::V1::Realm]
        #     Required. The realm resource to be created.
        class CreateRealmRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for RealmsService.DeleteRealm.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the realm to delete, in the following form:
        #     `projects/{project}/locations/{location}/realms/{realm}`.
        class DeleteRealmRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for RealmsService.UpdateRealm.
        # @!attribute [rw] realm
        #   @return [::Google::Cloud::Gaming::V1::Realm]
        #     Required. The realm to be updated.
        #     Only fields specified in update_mask are updated.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Required. The update mask applies to the resource. For the `FieldMask`
        #     definition, see
        #     https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask
        class UpdateRealmRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for RealmsService.PreviewRealmUpdate.
        # @!attribute [rw] realm
        #   @return [::Google::Cloud::Gaming::V1::Realm]
        #     Required. The realm to be updated.
        #     Only fields specified in update_mask are updated.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Required. The update mask applies to the resource. For the `FieldMask`
        #     definition, see
        #     https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask
        # @!attribute [rw] preview_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Optional. The target timestamp to compute the preview.
        class PreviewRealmUpdateRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for RealmsService.PreviewRealmUpdate.
        # @!attribute [rw] etag
        #   @return [::String]
        #     ETag of the realm.
        # @!attribute [rw] target_state
        #   @return [::Google::Cloud::Gaming::V1::TargetState]
        #     The target state.
        class PreviewRealmUpdateResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A realm resource.
        # @!attribute [rw] name
        #   @return [::String]
        #     The resource name of the realm, in the following form:
        #     `projects/{project}/locations/{location}/realms/{realm}`. For
        #     example, `projects/my-project/locations/{location}/realms/my-realm`.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The creation time.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The last-modified time.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     The labels associated with this realm. Each label is a key-value pair.
        # @!attribute [rw] time_zone
        #   @return [::String]
        #     Required. Time zone where all policies targeting this realm are evaluated. The value
        #     of this field must be from the IANA time zone database:
        #     https://www.iana.org/time-zones.
        # @!attribute [rw] etag
        #   @return [::String]
        #     ETag of the resource.
        # @!attribute [rw] description
        #   @return [::String]
        #     Human readable description of the realm.
        class Realm
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class LabelsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end
