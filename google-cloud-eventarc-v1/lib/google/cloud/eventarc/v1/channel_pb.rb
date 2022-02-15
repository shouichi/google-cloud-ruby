# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/eventarc/v1/channel.proto

require 'google/api/annotations_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/timestamp_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/eventarc/v1/channel.proto", :syntax => :proto3) do
    add_message "google.cloud.eventarc.v1.Channel" do
      optional :name, :string, 1
      optional :uid, :string, 2
      optional :create_time, :message, 5, "google.protobuf.Timestamp"
      optional :update_time, :message, 6, "google.protobuf.Timestamp"
      optional :provider, :string, 7
      optional :state, :enum, 9, "google.cloud.eventarc.v1.Channel.State"
      optional :activation_token, :string, 10
      oneof :transport do
        optional :pubsub_topic, :string, 8
      end
    end
    add_enum "google.cloud.eventarc.v1.Channel.State" do
      value :STATE_UNSPECIFIED, 0
      value :PENDING, 1
      value :ACTIVE, 2
      value :INACTIVE, 3
    end
  end
end

module Google
  module Cloud
    module Eventarc
      module V1
        Channel = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.v1.Channel").msgclass
        Channel::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.v1.Channel.State").enummodule
      end
    end
  end
end