# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/aiplatform/v1/encryption_spec.proto

require 'google/api/annotations_pb'
require 'google/api/field_behavior_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/aiplatform/v1/encryption_spec.proto", :syntax => :proto3) do
    add_message "google.cloud.aiplatform.v1.EncryptionSpec" do
      optional :kms_key_name, :string, 1
    end
  end
end

module Google
  module Cloud
    module AIPlatform
      module V1
        EncryptionSpec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.EncryptionSpec").msgclass
      end
    end
  end
end