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
        # Instance of a general MetadataSchema.
        # @!attribute [r] name
        #   @return [::String]
        #     Output only. The resource name of the MetadataSchema.
        # @!attribute [rw] schema_version
        #   @return [::String]
        #     The version of the MetadataSchema. The version's format must match
        #     the following regular expression: `^[0-9]+[.][0-9]+[.][0-9]+$`, which would
        #     allow to order/compare different versions. Example: 1.0.0, 1.0.1, etc.
        # @!attribute [rw] schema
        #   @return [::String]
        #     Required. The raw YAML string representation of the MetadataSchema. The combination
        #     of [MetadataSchema.version] and the schema name given by `title` in
        #     [MetadataSchema.schema] must be unique within a MetadataStore.
        #
        #     The schema is defined as an OpenAPI 3.0.2
        #     [MetadataSchema
        #     Object](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.2.md#schemaObject)
        # @!attribute [rw] schema_type
        #   @return [::Google::Cloud::AIPlatform::V1::MetadataSchema::MetadataSchemaType]
        #     The type of the MetadataSchema. This is a property that identifies which
        #     metadata types will use the MetadataSchema.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Timestamp when this MetadataSchema was created.
        # @!attribute [rw] description
        #   @return [::String]
        #     Description of the Metadata Schema
        class MetadataSchema
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Describes the type of the MetadataSchema.
          module MetadataSchemaType
            # Unspecified type for the MetadataSchema.
            METADATA_SCHEMA_TYPE_UNSPECIFIED = 0

            # A type indicating that the MetadataSchema will be used by Artifacts.
            ARTIFACT_TYPE = 1

            # A typee indicating that the MetadataSchema will be used by Executions.
            EXECUTION_TYPE = 2

            # A state indicating that the MetadataSchema will be used by Contexts.
            CONTEXT_TYPE = 3
          end
        end
      end
    end
  end
end