# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/video/stitcher/v1/slates.proto

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/video/stitcher/v1/slates.proto", :syntax => :proto3) do
    add_message "google.cloud.video.stitcher.v1.Slate" do
      optional :name, :string, 1
      optional :uri, :string, 2
    end
  end
end

module Google
  module Cloud
    module Video
      module Stitcher
        module V1
          Slate = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.stitcher.v1.Slate").msgclass
        end
      end
    end
  end
end
