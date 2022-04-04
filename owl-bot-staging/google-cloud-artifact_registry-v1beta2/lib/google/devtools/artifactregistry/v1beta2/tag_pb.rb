# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/devtools/artifactregistry/v1beta2/tag.proto

require 'google/api/annotations_pb'
require 'google/api/resource_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/devtools/artifactregistry/v1beta2/tag.proto", :syntax => :proto3) do
    add_message "google.devtools.artifactregistry.v1beta2.Tag" do
      optional :name, :string, 1
      optional :version, :string, 2
    end
    add_message "google.devtools.artifactregistry.v1beta2.ListTagsRequest" do
      optional :parent, :string, 1
      optional :filter, :string, 4
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
    end
    add_message "google.devtools.artifactregistry.v1beta2.ListTagsResponse" do
      repeated :tags, :message, 1, "google.devtools.artifactregistry.v1beta2.Tag"
      optional :next_page_token, :string, 2
    end
    add_message "google.devtools.artifactregistry.v1beta2.GetTagRequest" do
      optional :name, :string, 1
    end
    add_message "google.devtools.artifactregistry.v1beta2.CreateTagRequest" do
      optional :parent, :string, 1
      optional :tag_id, :string, 2
      optional :tag, :message, 3, "google.devtools.artifactregistry.v1beta2.Tag"
    end
    add_message "google.devtools.artifactregistry.v1beta2.UpdateTagRequest" do
      optional :tag, :message, 1, "google.devtools.artifactregistry.v1beta2.Tag"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
    end
    add_message "google.devtools.artifactregistry.v1beta2.DeleteTagRequest" do
      optional :name, :string, 1
    end
  end
end

module Google
  module Cloud
    module ArtifactRegistry
      module V1beta2
        Tag = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.artifactregistry.v1beta2.Tag").msgclass
        ListTagsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.artifactregistry.v1beta2.ListTagsRequest").msgclass
        ListTagsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.artifactregistry.v1beta2.ListTagsResponse").msgclass
        GetTagRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.artifactregistry.v1beta2.GetTagRequest").msgclass
        CreateTagRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.artifactregistry.v1beta2.CreateTagRequest").msgclass
        UpdateTagRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.artifactregistry.v1beta2.UpdateTagRequest").msgclass
        DeleteTagRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.artifactregistry.v1beta2.DeleteTagRequest").msgclass
      end
    end
  end
end