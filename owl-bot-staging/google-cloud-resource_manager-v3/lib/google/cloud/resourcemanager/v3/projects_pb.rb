# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/resourcemanager/v3/projects.proto

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/iam/v1/iam_policy_pb'
require 'google/iam/v1/policy_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/resourcemanager/v3/projects.proto", :syntax => :proto3) do
    add_message "google.cloud.resourcemanager.v3.Project" do
      optional :name, :string, 1
      optional :parent, :string, 2
      optional :project_id, :string, 3
      optional :state, :enum, 4, "google.cloud.resourcemanager.v3.Project.State"
      optional :display_name, :string, 5
      optional :create_time, :message, 6, "google.protobuf.Timestamp"
      optional :update_time, :message, 7, "google.protobuf.Timestamp"
      optional :delete_time, :message, 8, "google.protobuf.Timestamp"
      optional :etag, :string, 9
      map :labels, :string, :string, 10
    end
    add_enum "google.cloud.resourcemanager.v3.Project.State" do
      value :STATE_UNSPECIFIED, 0
      value :ACTIVE, 1
      value :DELETE_REQUESTED, 2
    end
    add_message "google.cloud.resourcemanager.v3.GetProjectRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.resourcemanager.v3.ListProjectsRequest" do
      optional :parent, :string, 1
      optional :page_token, :string, 2
      optional :page_size, :int32, 3
      optional :show_deleted, :bool, 4
    end
    add_message "google.cloud.resourcemanager.v3.ListProjectsResponse" do
      repeated :projects, :message, 1, "google.cloud.resourcemanager.v3.Project"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.resourcemanager.v3.SearchProjectsRequest" do
      optional :query, :string, 1
      optional :page_token, :string, 2
      optional :page_size, :int32, 3
    end
    add_message "google.cloud.resourcemanager.v3.SearchProjectsResponse" do
      repeated :projects, :message, 1, "google.cloud.resourcemanager.v3.Project"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.resourcemanager.v3.CreateProjectRequest" do
      optional :project, :message, 1, "google.cloud.resourcemanager.v3.Project"
    end
    add_message "google.cloud.resourcemanager.v3.CreateProjectMetadata" do
      optional :create_time, :message, 1, "google.protobuf.Timestamp"
      optional :gettable, :bool, 2
      optional :ready, :bool, 3
    end
    add_message "google.cloud.resourcemanager.v3.UpdateProjectRequest" do
      optional :project, :message, 1, "google.cloud.resourcemanager.v3.Project"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
    end
    add_message "google.cloud.resourcemanager.v3.UpdateProjectMetadata" do
    end
    add_message "google.cloud.resourcemanager.v3.MoveProjectRequest" do
      optional :name, :string, 1
      optional :destination_parent, :string, 2
    end
    add_message "google.cloud.resourcemanager.v3.MoveProjectMetadata" do
    end
    add_message "google.cloud.resourcemanager.v3.DeleteProjectRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.resourcemanager.v3.DeleteProjectMetadata" do
    end
    add_message "google.cloud.resourcemanager.v3.UndeleteProjectRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.resourcemanager.v3.UndeleteProjectMetadata" do
    end
  end
end

module Google
  module Cloud
    module ResourceManager
      module V3
        Project = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.resourcemanager.v3.Project").msgclass
        Project::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.resourcemanager.v3.Project.State").enummodule
        GetProjectRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.resourcemanager.v3.GetProjectRequest").msgclass
        ListProjectsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.resourcemanager.v3.ListProjectsRequest").msgclass
        ListProjectsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.resourcemanager.v3.ListProjectsResponse").msgclass
        SearchProjectsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.resourcemanager.v3.SearchProjectsRequest").msgclass
        SearchProjectsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.resourcemanager.v3.SearchProjectsResponse").msgclass
        CreateProjectRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.resourcemanager.v3.CreateProjectRequest").msgclass
        CreateProjectMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.resourcemanager.v3.CreateProjectMetadata").msgclass
        UpdateProjectRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.resourcemanager.v3.UpdateProjectRequest").msgclass
        UpdateProjectMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.resourcemanager.v3.UpdateProjectMetadata").msgclass
        MoveProjectRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.resourcemanager.v3.MoveProjectRequest").msgclass
        MoveProjectMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.resourcemanager.v3.MoveProjectMetadata").msgclass
        DeleteProjectRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.resourcemanager.v3.DeleteProjectRequest").msgclass
        DeleteProjectMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.resourcemanager.v3.DeleteProjectMetadata").msgclass
        UndeleteProjectRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.resourcemanager.v3.UndeleteProjectRequest").msgclass
        UndeleteProjectMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.resourcemanager.v3.UndeleteProjectMetadata").msgclass
      end
    end
  end
end