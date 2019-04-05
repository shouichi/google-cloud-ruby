# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/scheduler/v1beta1/cloudscheduler.proto


require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/resource_pb'
require 'google/cloud/scheduler/v1beta1/job_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "google.cloud.scheduler.v1beta1.ListJobsRequest" do
    optional :parent, :string, 1
    optional :page_size, :int32, 5
    optional :page_token, :string, 6
  end
  add_message "google.cloud.scheduler.v1beta1.ListJobsResponse" do
    repeated :jobs, :message, 1, "google.cloud.scheduler.v1beta1.Job"
    optional :next_page_token, :string, 2
  end
  add_message "google.cloud.scheduler.v1beta1.GetJobRequest" do
    optional :name, :string, 1
  end
  add_message "google.cloud.scheduler.v1beta1.CreateJobRequest" do
    optional :parent, :string, 1
    optional :job, :message, 2, "google.cloud.scheduler.v1beta1.Job"
  end
  add_message "google.cloud.scheduler.v1beta1.UpdateJobRequest" do
    optional :job, :message, 1, "google.cloud.scheduler.v1beta1.Job"
    optional :update_mask, :message, 2, "google.protobuf.FieldMask"
  end
  add_message "google.cloud.scheduler.v1beta1.DeleteJobRequest" do
    optional :name, :string, 1
  end
  add_message "google.cloud.scheduler.v1beta1.PauseJobRequest" do
    optional :name, :string, 1
  end
  add_message "google.cloud.scheduler.v1beta1.ResumeJobRequest" do
    optional :name, :string, 1
  end
  add_message "google.cloud.scheduler.v1beta1.RunJobRequest" do
    optional :name, :string, 1
  end
end

module Google
  module Cloud
    module Scheduler
      module V1beta1
        ListJobsRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.scheduler.v1beta1.ListJobsRequest").msgclass
        ListJobsResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.scheduler.v1beta1.ListJobsResponse").msgclass
        GetJobRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.scheduler.v1beta1.GetJobRequest").msgclass
        CreateJobRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.scheduler.v1beta1.CreateJobRequest").msgclass
        UpdateJobRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.scheduler.v1beta1.UpdateJobRequest").msgclass
        DeleteJobRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.scheduler.v1beta1.DeleteJobRequest").msgclass
        PauseJobRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.scheduler.v1beta1.PauseJobRequest").msgclass
        ResumeJobRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.scheduler.v1beta1.ResumeJobRequest").msgclass
        RunJobRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.scheduler.v1beta1.RunJobRequest").msgclass
      end
    end
  end
end
