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
    module AIPlatform
      module V1
        # Request message for {::Google::Cloud::AIPlatform::V1::DatasetService::Client#create_dataset DatasetService.CreateDataset}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The resource name of the Location to create the Dataset in.
        #     Format: `projects/{project}/locations/{location}`
        # @!attribute [rw] dataset
        #   @return [::Google::Cloud::AIPlatform::V1::Dataset]
        #     Required. The Dataset to create.
        class CreateDatasetRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Runtime operation information for {::Google::Cloud::AIPlatform::V1::DatasetService::Client#create_dataset DatasetService.CreateDataset}.
        # @!attribute [rw] generic_metadata
        #   @return [::Google::Cloud::AIPlatform::V1::GenericOperationMetadata]
        #     The operation generic information.
        class CreateDatasetOperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::AIPlatform::V1::DatasetService::Client#get_dataset DatasetService.GetDataset}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the Dataset resource.
        # @!attribute [rw] read_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Mask specifying which fields to read.
        class GetDatasetRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::AIPlatform::V1::DatasetService::Client#update_dataset DatasetService.UpdateDataset}.
        # @!attribute [rw] dataset
        #   @return [::Google::Cloud::AIPlatform::V1::Dataset]
        #     Required. The Dataset which replaces the resource on the server.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Required. The update mask applies to the resource.
        #     For the `FieldMask` definition, see {::Google::Protobuf::FieldMask google.protobuf.FieldMask}.
        #     Updatable fields:
        #
        #       * `display_name`
        #       * `description`
        #       * `labels`
        class UpdateDatasetRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::AIPlatform::V1::DatasetService::Client#list_datasets DatasetService.ListDatasets}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The name of the Dataset's parent resource.
        #     Format: `projects/{project}/locations/{location}`
        # @!attribute [rw] filter
        #   @return [::String]
        #     An expression for filtering the results of the request. For field names
        #     both snake_case and camelCase are supported.
        #
        #       * `display_name`: supports = and !=
        #       * `metadata_schema_uri`: supports = and !=
        #       * `labels` supports general map functions that is:
        #         * `labels.key=value` - key:value equality
        #         * `labels.key:* or labels:key - key existence
        #         * A key including a space must be quoted. `labels."a key"`.
        #
        #     Some examples:
        #       * `displayName="myDisplayName"`
        #       * `labels.myKey="myValue"`
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     The standard list page size.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     The standard list page token.
        # @!attribute [rw] read_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Mask specifying which fields to read.
        # @!attribute [rw] order_by
        #   @return [::String]
        #     A comma-separated list of fields to order by, sorted in ascending order.
        #     Use "desc" after a field name for descending.
        #     Supported fields:
        #       * `display_name`
        #       * `create_time`
        #       * `update_time`
        class ListDatasetsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for {::Google::Cloud::AIPlatform::V1::DatasetService::Client#list_datasets DatasetService.ListDatasets}.
        # @!attribute [rw] datasets
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::Dataset>]
        #     A list of Datasets that matches the specified filter in the request.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     The standard List next-page token.
        class ListDatasetsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::AIPlatform::V1::DatasetService::Client#delete_dataset DatasetService.DeleteDataset}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name of the Dataset to delete.
        #     Format:
        #     `projects/{project}/locations/{location}/datasets/{dataset}`
        class DeleteDatasetRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::AIPlatform::V1::DatasetService::Client#import_data DatasetService.ImportData}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the Dataset resource.
        #     Format:
        #     `projects/{project}/locations/{location}/datasets/{dataset}`
        # @!attribute [rw] import_configs
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::ImportDataConfig>]
        #     Required. The desired input locations. The contents of all input locations will be
        #     imported in one batch.
        class ImportDataRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for {::Google::Cloud::AIPlatform::V1::DatasetService::Client#import_data DatasetService.ImportData}.
        class ImportDataResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Runtime operation information for {::Google::Cloud::AIPlatform::V1::DatasetService::Client#import_data DatasetService.ImportData}.
        # @!attribute [rw] generic_metadata
        #   @return [::Google::Cloud::AIPlatform::V1::GenericOperationMetadata]
        #     The common part of the operation metadata.
        class ImportDataOperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::AIPlatform::V1::DatasetService::Client#export_data DatasetService.ExportData}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the Dataset resource.
        #     Format:
        #     `projects/{project}/locations/{location}/datasets/{dataset}`
        # @!attribute [rw] export_config
        #   @return [::Google::Cloud::AIPlatform::V1::ExportDataConfig]
        #     Required. The desired output location.
        class ExportDataRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for {::Google::Cloud::AIPlatform::V1::DatasetService::Client#export_data DatasetService.ExportData}.
        # @!attribute [rw] exported_files
        #   @return [::Array<::String>]
        #     All of the files that are exported in this export operation.
        class ExportDataResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Runtime operation information for {::Google::Cloud::AIPlatform::V1::DatasetService::Client#export_data DatasetService.ExportData}.
        # @!attribute [rw] generic_metadata
        #   @return [::Google::Cloud::AIPlatform::V1::GenericOperationMetadata]
        #     The common part of the operation metadata.
        # @!attribute [rw] gcs_output_directory
        #   @return [::String]
        #     A Google Cloud Storage directory which path ends with '/'. The exported
        #     data is stored in the directory.
        class ExportDataOperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::AIPlatform::V1::DatasetService::Client#list_data_items DatasetService.ListDataItems}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The resource name of the Dataset to list DataItems from.
        #     Format:
        #     `projects/{project}/locations/{location}/datasets/{dataset}`
        # @!attribute [rw] filter
        #   @return [::String]
        #     The standard list filter.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     The standard list page size.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     The standard list page token.
        # @!attribute [rw] read_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Mask specifying which fields to read.
        # @!attribute [rw] order_by
        #   @return [::String]
        #     A comma-separated list of fields to order by, sorted in ascending order.
        #     Use "desc" after a field name for descending.
        class ListDataItemsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for {::Google::Cloud::AIPlatform::V1::DatasetService::Client#list_data_items DatasetService.ListDataItems}.
        # @!attribute [rw] data_items
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::DataItem>]
        #     A list of DataItems that matches the specified filter in the request.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     The standard List next-page token.
        class ListDataItemsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::AIPlatform::V1::DatasetService::Client#get_annotation_spec DatasetService.GetAnnotationSpec}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the AnnotationSpec resource.
        #     Format:
        #     `projects/{project}/locations/{location}/datasets/{dataset}/annotationSpecs/{annotation_spec}`
        # @!attribute [rw] read_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Mask specifying which fields to read.
        class GetAnnotationSpecRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::AIPlatform::V1::DatasetService::Client#list_annotations DatasetService.ListAnnotations}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The resource name of the DataItem to list Annotations from.
        #     Format:
        #     `projects/{project}/locations/{location}/datasets/{dataset}/dataItems/{data_item}`
        # @!attribute [rw] filter
        #   @return [::String]
        #     The standard list filter.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     The standard list page size.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     The standard list page token.
        # @!attribute [rw] read_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Mask specifying which fields to read.
        # @!attribute [rw] order_by
        #   @return [::String]
        #     A comma-separated list of fields to order by, sorted in ascending order.
        #     Use "desc" after a field name for descending.
        class ListAnnotationsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for {::Google::Cloud::AIPlatform::V1::DatasetService::Client#list_annotations DatasetService.ListAnnotations}.
        # @!attribute [rw] annotations
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::Annotation>]
        #     A list of Annotations that matches the specified filter in the request.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     The standard List next-page token.
        class ListAnnotationsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end