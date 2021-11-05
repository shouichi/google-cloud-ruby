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
    module Logging
      module V2
        module ConfigService
          # Path helper methods for the ConfigService API.
          module Paths
            ##
            # Create a fully-qualified BillingAccount resource string.
            #
            # The resource will be in the following format:
            #
            # `billingAccounts/{billing_account}`
            #
            # @param billing_account [String]
            #
            # @return [::String]
            def billing_account_path billing_account:
              "billingAccounts/#{billing_account}"
            end

            ##
            # Create a fully-qualified BillingAccountLocation resource string.
            #
            # The resource will be in the following format:
            #
            # `billingAccounts/{billing_account}/locations/{location}`
            #
            # @param billing_account [String]
            # @param location [String]
            #
            # @return [::String]
            def billing_account_location_path billing_account:, location:
              raise ::ArgumentError, "billing_account cannot contain /" if billing_account.to_s.include? "/"

              "billingAccounts/#{billing_account}/locations/#{location}"
            end

            ##
            # Create a fully-qualified CmekSettings resource string.
            #
            # @overload cmek_settings_path(project:)
            #   The resource will be in the following format:
            #
            #   `projects/{project}/cmekSettings`
            #
            #   @param project [String]
            #
            # @overload cmek_settings_path(organization:)
            #   The resource will be in the following format:
            #
            #   `organizations/{organization}/cmekSettings`
            #
            #   @param organization [String]
            #
            # @overload cmek_settings_path(folder:)
            #   The resource will be in the following format:
            #
            #   `folders/{folder}/cmekSettings`
            #
            #   @param folder [String]
            #
            # @overload cmek_settings_path(billing_account:)
            #   The resource will be in the following format:
            #
            #   `billingAccounts/{billing_account}/cmekSettings`
            #
            #   @param billing_account [String]
            #
            # @return [::String]
            def cmek_settings_path **args
              resources = {
                "project" => (proc do |project:|
                  "projects/#{project}/cmekSettings"
                end),
                "organization" => (proc do |organization:|
                  "organizations/#{organization}/cmekSettings"
                end),
                "folder" => (proc do |folder:|
                  "folders/#{folder}/cmekSettings"
                end),
                "billing_account" => (proc do |billing_account:|
                  "billingAccounts/#{billing_account}/cmekSettings"
                end)
              }

              resource = resources[args.keys.sort.join(":")]
              raise ::ArgumentError, "no resource found for values #{args.keys}" if resource.nil?
              resource.call(**args)
            end

            ##
            # Create a fully-qualified Folder resource string.
            #
            # The resource will be in the following format:
            #
            # `folders/{folder}`
            #
            # @param folder [String]
            #
            # @return [::String]
            def folder_path folder:
              "folders/#{folder}"
            end

            ##
            # Create a fully-qualified FolderLocation resource string.
            #
            # The resource will be in the following format:
            #
            # `folders/{folder}/locations/{location}`
            #
            # @param folder [String]
            # @param location [String]
            #
            # @return [::String]
            def folder_location_path folder:, location:
              raise ::ArgumentError, "folder cannot contain /" if folder.to_s.include? "/"

              "folders/#{folder}/locations/#{location}"
            end

            ##
            # Create a fully-qualified Location resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}`
            #
            # @param project [String]
            # @param location [String]
            #
            # @return [::String]
            def location_path project:, location:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"

              "projects/#{project}/locations/#{location}"
            end

            ##
            # Create a fully-qualified LogBucket resource string.
            #
            # @overload log_bucket_path(project:, location:, bucket:)
            #   The resource will be in the following format:
            #
            #   `projects/{project}/locations/{location}/buckets/{bucket}`
            #
            #   @param project [String]
            #   @param location [String]
            #   @param bucket [String]
            #
            # @overload log_bucket_path(organization:, location:, bucket:)
            #   The resource will be in the following format:
            #
            #   `organizations/{organization}/locations/{location}/buckets/{bucket}`
            #
            #   @param organization [String]
            #   @param location [String]
            #   @param bucket [String]
            #
            # @overload log_bucket_path(folder:, location:, bucket:)
            #   The resource will be in the following format:
            #
            #   `folders/{folder}/locations/{location}/buckets/{bucket}`
            #
            #   @param folder [String]
            #   @param location [String]
            #   @param bucket [String]
            #
            # @overload log_bucket_path(billing_account:, location:, bucket:)
            #   The resource will be in the following format:
            #
            #   `billingAccounts/{billing_account}/locations/{location}/buckets/{bucket}`
            #
            #   @param billing_account [String]
            #   @param location [String]
            #   @param bucket [String]
            #
            # @return [::String]
            def log_bucket_path **args
              resources = {
                "bucket:location:project" => (proc do |project:, location:, bucket:|
                  raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                  raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

                  "projects/#{project}/locations/#{location}/buckets/#{bucket}"
                end),
                "bucket:location:organization" => (proc do |organization:, location:, bucket:|
                  raise ::ArgumentError, "organization cannot contain /" if organization.to_s.include? "/"
                  raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

                  "organizations/#{organization}/locations/#{location}/buckets/#{bucket}"
                end),
                "bucket:folder:location" => (proc do |folder:, location:, bucket:|
                  raise ::ArgumentError, "folder cannot contain /" if folder.to_s.include? "/"
                  raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

                  "folders/#{folder}/locations/#{location}/buckets/#{bucket}"
                end),
                "billing_account:bucket:location" => (proc do |billing_account:, location:, bucket:|
                  raise ::ArgumentError, "billing_account cannot contain /" if billing_account.to_s.include? "/"
                  raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

                  "billingAccounts/#{billing_account}/locations/#{location}/buckets/#{bucket}"
                end)
              }

              resource = resources[args.keys.sort.join(":")]
              raise ::ArgumentError, "no resource found for values #{args.keys}" if resource.nil?
              resource.call(**args)
            end

            ##
            # Create a fully-qualified LogExclusion resource string.
            #
            # @overload log_exclusion_path(project:, exclusion:)
            #   The resource will be in the following format:
            #
            #   `projects/{project}/exclusions/{exclusion}`
            #
            #   @param project [String]
            #   @param exclusion [String]
            #
            # @overload log_exclusion_path(organization:, exclusion:)
            #   The resource will be in the following format:
            #
            #   `organizations/{organization}/exclusions/{exclusion}`
            #
            #   @param organization [String]
            #   @param exclusion [String]
            #
            # @overload log_exclusion_path(folder:, exclusion:)
            #   The resource will be in the following format:
            #
            #   `folders/{folder}/exclusions/{exclusion}`
            #
            #   @param folder [String]
            #   @param exclusion [String]
            #
            # @overload log_exclusion_path(billing_account:, exclusion:)
            #   The resource will be in the following format:
            #
            #   `billingAccounts/{billing_account}/exclusions/{exclusion}`
            #
            #   @param billing_account [String]
            #   @param exclusion [String]
            #
            # @return [::String]
            def log_exclusion_path **args
              resources = {
                "exclusion:project" => (proc do |project:, exclusion:|
                  raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"

                  "projects/#{project}/exclusions/#{exclusion}"
                end),
                "exclusion:organization" => (proc do |organization:, exclusion:|
                  raise ::ArgumentError, "organization cannot contain /" if organization.to_s.include? "/"

                  "organizations/#{organization}/exclusions/#{exclusion}"
                end),
                "exclusion:folder" => (proc do |folder:, exclusion:|
                  raise ::ArgumentError, "folder cannot contain /" if folder.to_s.include? "/"

                  "folders/#{folder}/exclusions/#{exclusion}"
                end),
                "billing_account:exclusion" => (proc do |billing_account:, exclusion:|
                  raise ::ArgumentError, "billing_account cannot contain /" if billing_account.to_s.include? "/"

                  "billingAccounts/#{billing_account}/exclusions/#{exclusion}"
                end)
              }

              resource = resources[args.keys.sort.join(":")]
              raise ::ArgumentError, "no resource found for values #{args.keys}" if resource.nil?
              resource.call(**args)
            end

            ##
            # Create a fully-qualified LogSink resource string.
            #
            # @overload log_sink_path(project:, sink:)
            #   The resource will be in the following format:
            #
            #   `projects/{project}/sinks/{sink}`
            #
            #   @param project [String]
            #   @param sink [String]
            #
            # @overload log_sink_path(organization:, sink:)
            #   The resource will be in the following format:
            #
            #   `organizations/{organization}/sinks/{sink}`
            #
            #   @param organization [String]
            #   @param sink [String]
            #
            # @overload log_sink_path(folder:, sink:)
            #   The resource will be in the following format:
            #
            #   `folders/{folder}/sinks/{sink}`
            #
            #   @param folder [String]
            #   @param sink [String]
            #
            # @overload log_sink_path(billing_account:, sink:)
            #   The resource will be in the following format:
            #
            #   `billingAccounts/{billing_account}/sinks/{sink}`
            #
            #   @param billing_account [String]
            #   @param sink [String]
            #
            # @return [::String]
            def log_sink_path **args
              resources = {
                "project:sink" => (proc do |project:, sink:|
                  raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"

                  "projects/#{project}/sinks/#{sink}"
                end),
                "organization:sink" => (proc do |organization:, sink:|
                  raise ::ArgumentError, "organization cannot contain /" if organization.to_s.include? "/"

                  "organizations/#{organization}/sinks/#{sink}"
                end),
                "folder:sink" => (proc do |folder:, sink:|
                  raise ::ArgumentError, "folder cannot contain /" if folder.to_s.include? "/"

                  "folders/#{folder}/sinks/#{sink}"
                end),
                "billing_account:sink" => (proc do |billing_account:, sink:|
                  raise ::ArgumentError, "billing_account cannot contain /" if billing_account.to_s.include? "/"

                  "billingAccounts/#{billing_account}/sinks/#{sink}"
                end)
              }

              resource = resources[args.keys.sort.join(":")]
              raise ::ArgumentError, "no resource found for values #{args.keys}" if resource.nil?
              resource.call(**args)
            end

            ##
            # Create a fully-qualified LogView resource string.
            #
            # @overload log_view_path(project:, location:, bucket:, view:)
            #   The resource will be in the following format:
            #
            #   `projects/{project}/locations/{location}/buckets/{bucket}/views/{view}`
            #
            #   @param project [String]
            #   @param location [String]
            #   @param bucket [String]
            #   @param view [String]
            #
            # @overload log_view_path(organization:, location:, bucket:, view:)
            #   The resource will be in the following format:
            #
            #   `organizations/{organization}/locations/{location}/buckets/{bucket}/views/{view}`
            #
            #   @param organization [String]
            #   @param location [String]
            #   @param bucket [String]
            #   @param view [String]
            #
            # @overload log_view_path(folder:, location:, bucket:, view:)
            #   The resource will be in the following format:
            #
            #   `folders/{folder}/locations/{location}/buckets/{bucket}/views/{view}`
            #
            #   @param folder [String]
            #   @param location [String]
            #   @param bucket [String]
            #   @param view [String]
            #
            # @overload log_view_path(billing_account:, location:, bucket:, view:)
            #   The resource will be in the following format:
            #
            #   `billingAccounts/{billing_account}/locations/{location}/buckets/{bucket}/views/{view}`
            #
            #   @param billing_account [String]
            #   @param location [String]
            #   @param bucket [String]
            #   @param view [String]
            #
            # @return [::String]
            def log_view_path **args
              resources = {
                "bucket:location:project:view" => (proc do |project:, location:, bucket:, view:|
                  raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                  raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
                  raise ::ArgumentError, "bucket cannot contain /" if bucket.to_s.include? "/"

                  "projects/#{project}/locations/#{location}/buckets/#{bucket}/views/#{view}"
                end),
                "bucket:location:organization:view" => (proc do |organization:, location:, bucket:, view:|
                  raise ::ArgumentError, "organization cannot contain /" if organization.to_s.include? "/"
                  raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
                  raise ::ArgumentError, "bucket cannot contain /" if bucket.to_s.include? "/"

                  "organizations/#{organization}/locations/#{location}/buckets/#{bucket}/views/#{view}"
                end),
                "bucket:folder:location:view" => (proc do |folder:, location:, bucket:, view:|
                  raise ::ArgumentError, "folder cannot contain /" if folder.to_s.include? "/"
                  raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
                  raise ::ArgumentError, "bucket cannot contain /" if bucket.to_s.include? "/"

                  "folders/#{folder}/locations/#{location}/buckets/#{bucket}/views/#{view}"
                end),
                "billing_account:bucket:location:view" => (proc do |billing_account:, location:, bucket:, view:|
                  raise ::ArgumentError, "billing_account cannot contain /" if billing_account.to_s.include? "/"
                  raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
                  raise ::ArgumentError, "bucket cannot contain /" if bucket.to_s.include? "/"

                  "billingAccounts/#{billing_account}/locations/#{location}/buckets/#{bucket}/views/#{view}"
                end)
              }

              resource = resources[args.keys.sort.join(":")]
              raise ::ArgumentError, "no resource found for values #{args.keys}" if resource.nil?
              resource.call(**args)
            end

            ##
            # Create a fully-qualified Organization resource string.
            #
            # The resource will be in the following format:
            #
            # `organizations/{organization}`
            #
            # @param organization [String]
            #
            # @return [::String]
            def organization_path organization:
              "organizations/#{organization}"
            end

            ##
            # Create a fully-qualified OrganizationLocation resource string.
            #
            # The resource will be in the following format:
            #
            # `organizations/{organization}/locations/{location}`
            #
            # @param organization [String]
            # @param location [String]
            #
            # @return [::String]
            def organization_location_path organization:, location:
              raise ::ArgumentError, "organization cannot contain /" if organization.to_s.include? "/"

              "organizations/#{organization}/locations/#{location}"
            end

            ##
            # Create a fully-qualified Project resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}`
            #
            # @param project [String]
            #
            # @return [::String]
            def project_path project:
              "projects/#{project}"
            end

            extend self
          end
        end
      end
    end
  end
end
