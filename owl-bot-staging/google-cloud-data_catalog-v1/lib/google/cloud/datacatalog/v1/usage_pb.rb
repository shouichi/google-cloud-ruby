# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/datacatalog/v1/usage.proto

require 'google/protobuf/timestamp_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/datacatalog/v1/usage.proto", :syntax => :proto3) do
    add_message "google.cloud.datacatalog.v1.UsageStats" do
      optional :total_completions, :float, 1
      optional :total_failures, :float, 2
      optional :total_cancellations, :float, 3
      optional :total_execution_time_for_completions_millis, :float, 4
    end
    add_message "google.cloud.datacatalog.v1.UsageSignal" do
      optional :update_time, :message, 1, "google.protobuf.Timestamp"
      map :usage_within_time_range, :string, :message, 2, "google.cloud.datacatalog.v1.UsageStats"
    end
  end
end

module Google
  module Cloud
    module DataCatalog
      module V1
        UsageStats = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.v1.UsageStats").msgclass
        UsageSignal = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.v1.UsageSignal").msgclass
      end
    end
  end
end