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

require "google/cloud/errors"
require "google/devtools/artifactregistry/v1/service_pb"

module Google
  module Cloud
    module ArtifactRegistry
      module V1
        module ArtifactRegistry
          ##
          # Client for the ArtifactRegistry service.
          #
          # The Artifact Registry API service.
          #
          # Artifact Registry is an artifact management system for storing artifacts
          # from different package management systems.
          #
          # The resources managed by this API are:
          #
          # * Repositories, which group packages and their data.
          # * Packages, which group versions and their tags.
          # * Versions, which are specific forms of a package.
          # * Tags, which represent alternative names for versions.
          # * Files, which contain content and are optionally associated with a Package
          #   or Version.
          #
          class Client
            include Paths

            # @private
            attr_reader :artifact_registry_stub

            ##
            # Configure the ArtifactRegistry Client class.
            #
            # See {::Google::Cloud::ArtifactRegistry::V1::ArtifactRegistry::Client::Configuration}
            # for a description of the configuration fields.
            #
            # @example
            #
            #   # Modify the configuration for all ArtifactRegistry clients
            #   ::Google::Cloud::ArtifactRegistry::V1::ArtifactRegistry::Client.configure do |config|
            #     config.timeout = 10.0
            #   end
            #
            # @yield [config] Configure the Client client.
            # @yieldparam config [Client::Configuration]
            #
            # @return [Client::Configuration]
            #
            def self.configure
              @configure ||= begin
                namespace = ["Google", "Cloud", "ArtifactRegistry", "V1"]
                parent_config = while namespace.any?
                                  parent_name = namespace.join "::"
                                  parent_const = const_get parent_name
                                  break parent_const.configure if parent_const.respond_to? :configure
                                  namespace.pop
                                end
                default_config = Client::Configuration.new parent_config

                default_config.timeout = 60.0

                default_config
              end
              yield @configure if block_given?
              @configure
            end

            ##
            # Configure the ArtifactRegistry Client instance.
            #
            # The configuration is set to the derived mode, meaning that values can be changed,
            # but structural changes (adding new fields, etc.) are not allowed. Structural changes
            # should be made on {Client.configure}.
            #
            # See {::Google::Cloud::ArtifactRegistry::V1::ArtifactRegistry::Client::Configuration}
            # for a description of the configuration fields.
            #
            # @yield [config] Configure the Client client.
            # @yieldparam config [Client::Configuration]
            #
            # @return [Client::Configuration]
            #
            def configure
              yield @config if block_given?
              @config
            end

            ##
            # Create a new ArtifactRegistry client object.
            #
            # @example
            #
            #   # Create a client using the default configuration
            #   client = ::Google::Cloud::ArtifactRegistry::V1::ArtifactRegistry::Client.new
            #
            #   # Create a client using a custom configuration
            #   client = ::Google::Cloud::ArtifactRegistry::V1::ArtifactRegistry::Client.new do |config|
            #     config.timeout = 10.0
            #   end
            #
            # @yield [config] Configure the ArtifactRegistry client.
            # @yieldparam config [Client::Configuration]
            #
            def initialize
              # These require statements are intentionally placed here to initialize
              # the gRPC module only when it's required.
              # See https://github.com/googleapis/toolkit/issues/446
              require "gapic/grpc"
              require "google/devtools/artifactregistry/v1/service_services_pb"

              # Create the configuration object
              @config = Configuration.new Client.configure

              # Yield the configuration if needed
              yield @config if block_given?

              # Create credentials
              credentials = @config.credentials
              # Use self-signed JWT if the endpoint is unchanged from default,
              # but only if the default endpoint does not have a region prefix.
              enable_self_signed_jwt = @config.endpoint == Client.configure.endpoint &&
                                       !@config.endpoint.split(".").first.include?("-")
              credentials ||= Credentials.default scope: @config.scope,
                                                  enable_self_signed_jwt: enable_self_signed_jwt
              if credentials.is_a?(::String) || credentials.is_a?(::Hash)
                credentials = Credentials.new credentials, scope: @config.scope
              end
              @quota_project_id = @config.quota_project
              @quota_project_id ||= credentials.quota_project_id if credentials.respond_to? :quota_project_id

              @artifact_registry_stub = ::Gapic::ServiceStub.new(
                ::Google::Cloud::ArtifactRegistry::V1::ArtifactRegistry::Stub,
                credentials:  credentials,
                endpoint:     @config.endpoint,
                channel_args: @config.channel_args,
                interceptors: @config.interceptors
              )
            end

            # Service calls

            ##
            # Lists docker images.
            #
            # @overload list_docker_images(request, options = nil)
            #   Pass arguments to `list_docker_images` via a request object, either of type
            #   {::Google::Cloud::ArtifactRegistry::V1::ListDockerImagesRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Cloud::ArtifactRegistry::V1::ListDockerImagesRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload list_docker_images(parent: nil, page_size: nil, page_token: nil)
            #   Pass arguments to `list_docker_images` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param parent [::String]
            #     Required. The name of the parent resource whose docker images will be listed.
            #   @param page_size [::Integer]
            #     The maximum number of artifacts to return.
            #   @param page_token [::String]
            #     The next_page_token value returned from a previous list request, if any.
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Gapic::PagedEnumerable<::Google::Cloud::ArtifactRegistry::V1::DockerImage>]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Gapic::PagedEnumerable<::Google::Cloud::ArtifactRegistry::V1::DockerImage>]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            # @example Basic example
            #   require "google/cloud/artifact_registry/v1"
            #
            #   # Create a client object. The client can be reused for multiple calls.
            #   client = Google::Cloud::ArtifactRegistry::V1::ArtifactRegistry::Client.new
            #
            #   # Create a request. To set request fields, pass in keyword arguments.
            #   request = Google::Cloud::ArtifactRegistry::V1::ListDockerImagesRequest.new
            #
            #   # Call the list_docker_images method.
            #   result = client.list_docker_images request
            #
            #   # The returned object is of type Gapic::PagedEnumerable. You can
            #   # iterate over all elements by calling #each, and the enumerable
            #   # will lazily make API calls to fetch subsequent pages. Other
            #   # methods are also available for managing paging directly.
            #   result.each do |response|
            #     # Each element is of type ::Google::Cloud::ArtifactRegistry::V1::DockerImage.
            #     p response
            #   end
            #
            def list_docker_images request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::ArtifactRegistry::V1::ListDockerImagesRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.list_docker_images.metadata.to_h

              # Set x-goog-api-client and x-goog-user-project headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::ArtifactRegistry::V1::VERSION
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              header_params = {}
              if request.parent
                header_params["parent"] = request.parent
              end

              request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
              metadata[:"x-goog-request-params"] ||= request_params_header

              options.apply_defaults timeout:      @config.rpcs.list_docker_images.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.list_docker_images.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @artifact_registry_stub.call_rpc :list_docker_images, request, options: options do |response, operation|
                response = ::Gapic::PagedEnumerable.new @artifact_registry_stub, :list_docker_images, request, response, operation, options
                yield response, operation if block_given?
                return response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Lists repositories.
            #
            # @overload list_repositories(request, options = nil)
            #   Pass arguments to `list_repositories` via a request object, either of type
            #   {::Google::Cloud::ArtifactRegistry::V1::ListRepositoriesRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Cloud::ArtifactRegistry::V1::ListRepositoriesRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload list_repositories(parent: nil, page_size: nil, page_token: nil)
            #   Pass arguments to `list_repositories` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param parent [::String]
            #     Required. The name of the parent resource whose repositories will be listed.
            #   @param page_size [::Integer]
            #     The maximum number of repositories to return.
            #   @param page_token [::String]
            #     The next_page_token value returned from a previous list request, if any.
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Gapic::PagedEnumerable<::Google::Cloud::ArtifactRegistry::V1::Repository>]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Gapic::PagedEnumerable<::Google::Cloud::ArtifactRegistry::V1::Repository>]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            # @example Basic example
            #   require "google/cloud/artifact_registry/v1"
            #
            #   # Create a client object. The client can be reused for multiple calls.
            #   client = Google::Cloud::ArtifactRegistry::V1::ArtifactRegistry::Client.new
            #
            #   # Create a request. To set request fields, pass in keyword arguments.
            #   request = Google::Cloud::ArtifactRegistry::V1::ListRepositoriesRequest.new
            #
            #   # Call the list_repositories method.
            #   result = client.list_repositories request
            #
            #   # The returned object is of type Gapic::PagedEnumerable. You can
            #   # iterate over all elements by calling #each, and the enumerable
            #   # will lazily make API calls to fetch subsequent pages. Other
            #   # methods are also available for managing paging directly.
            #   result.each do |response|
            #     # Each element is of type ::Google::Cloud::ArtifactRegistry::V1::Repository.
            #     p response
            #   end
            #
            def list_repositories request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::ArtifactRegistry::V1::ListRepositoriesRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.list_repositories.metadata.to_h

              # Set x-goog-api-client and x-goog-user-project headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::ArtifactRegistry::V1::VERSION
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              header_params = {}
              if request.parent
                header_params["parent"] = request.parent
              end

              request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
              metadata[:"x-goog-request-params"] ||= request_params_header

              options.apply_defaults timeout:      @config.rpcs.list_repositories.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.list_repositories.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @artifact_registry_stub.call_rpc :list_repositories, request, options: options do |response, operation|
                response = ::Gapic::PagedEnumerable.new @artifact_registry_stub, :list_repositories, request, response, operation, options
                yield response, operation if block_given?
                return response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Gets a repository.
            #
            # @overload get_repository(request, options = nil)
            #   Pass arguments to `get_repository` via a request object, either of type
            #   {::Google::Cloud::ArtifactRegistry::V1::GetRepositoryRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Cloud::ArtifactRegistry::V1::GetRepositoryRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload get_repository(name: nil)
            #   Pass arguments to `get_repository` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param name [::String]
            #     Required. The name of the repository to retrieve.
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Google::Cloud::ArtifactRegistry::V1::Repository]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Google::Cloud::ArtifactRegistry::V1::Repository]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            # @example Basic example
            #   require "google/cloud/artifact_registry/v1"
            #
            #   # Create a client object. The client can be reused for multiple calls.
            #   client = Google::Cloud::ArtifactRegistry::V1::ArtifactRegistry::Client.new
            #
            #   # Create a request. To set request fields, pass in keyword arguments.
            #   request = Google::Cloud::ArtifactRegistry::V1::GetRepositoryRequest.new
            #
            #   # Call the get_repository method.
            #   result = client.get_repository request
            #
            #   # The returned object is of type Google::Cloud::ArtifactRegistry::V1::Repository.
            #   p result
            #
            def get_repository request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::ArtifactRegistry::V1::GetRepositoryRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.get_repository.metadata.to_h

              # Set x-goog-api-client and x-goog-user-project headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::ArtifactRegistry::V1::VERSION
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              header_params = {}
              if request.name
                header_params["name"] = request.name
              end

              request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
              metadata[:"x-goog-request-params"] ||= request_params_header

              options.apply_defaults timeout:      @config.rpcs.get_repository.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.get_repository.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @artifact_registry_stub.call_rpc :get_repository, request, options: options do |response, operation|
                yield response, operation if block_given?
                return response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Configuration class for the ArtifactRegistry API.
            #
            # This class represents the configuration for ArtifactRegistry,
            # providing control over timeouts, retry behavior, logging, transport
            # parameters, and other low-level controls. Certain parameters can also be
            # applied individually to specific RPCs. See
            # {::Google::Cloud::ArtifactRegistry::V1::ArtifactRegistry::Client::Configuration::Rpcs}
            # for a list of RPCs that can be configured independently.
            #
            # Configuration can be applied globally to all clients, or to a single client
            # on construction.
            #
            # @example
            #
            #   # Modify the global config, setting the timeout for
            #   # list_docker_images to 20 seconds,
            #   # and all remaining timeouts to 10 seconds.
            #   ::Google::Cloud::ArtifactRegistry::V1::ArtifactRegistry::Client.configure do |config|
            #     config.timeout = 10.0
            #     config.rpcs.list_docker_images.timeout = 20.0
            #   end
            #
            #   # Apply the above configuration only to a new client.
            #   client = ::Google::Cloud::ArtifactRegistry::V1::ArtifactRegistry::Client.new do |config|
            #     config.timeout = 10.0
            #     config.rpcs.list_docker_images.timeout = 20.0
            #   end
            #
            # @!attribute [rw] endpoint
            #   The hostname or hostname:port of the service endpoint.
            #   Defaults to `"artifactregistry.googleapis.com"`.
            #   @return [::String]
            # @!attribute [rw] credentials
            #   Credentials to send with calls. You may provide any of the following types:
            #    *  (`String`) The path to a service account key file in JSON format
            #    *  (`Hash`) A service account key as a Hash
            #    *  (`Google::Auth::Credentials`) A googleauth credentials object
            #       (see the [googleauth docs](https://googleapis.dev/ruby/googleauth/latest/index.html))
            #    *  (`Signet::OAuth2::Client`) A signet oauth2 client object
            #       (see the [signet docs](https://googleapis.dev/ruby/signet/latest/Signet/OAuth2/Client.html))
            #    *  (`GRPC::Core::Channel`) a gRPC channel with included credentials
            #    *  (`GRPC::Core::ChannelCredentials`) a gRPC credentails object
            #    *  (`nil`) indicating no credentials
            #   @return [::Object]
            # @!attribute [rw] scope
            #   The OAuth scopes
            #   @return [::Array<::String>]
            # @!attribute [rw] lib_name
            #   The library name as recorded in instrumentation and logging
            #   @return [::String]
            # @!attribute [rw] lib_version
            #   The library version as recorded in instrumentation and logging
            #   @return [::String]
            # @!attribute [rw] channel_args
            #   Extra parameters passed to the gRPC channel. Note: this is ignored if a
            #   `GRPC::Core::Channel` object is provided as the credential.
            #   @return [::Hash]
            # @!attribute [rw] interceptors
            #   An array of interceptors that are run before calls are executed.
            #   @return [::Array<::GRPC::ClientInterceptor>]
            # @!attribute [rw] timeout
            #   The call timeout in seconds.
            #   @return [::Numeric]
            # @!attribute [rw] metadata
            #   Additional gRPC headers to be sent with the call.
            #   @return [::Hash{::Symbol=>::String}]
            # @!attribute [rw] retry_policy
            #   The retry policy. The value is a hash with the following keys:
            #    *  `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
            #    *  `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
            #    *  `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
            #    *  `:retry_codes` (*type:* `Array<String>`) - The error codes that should
            #       trigger a retry.
            #   @return [::Hash]
            # @!attribute [rw] quota_project
            #   A separate project against which to charge quota.
            #   @return [::String]
            #
            class Configuration
              extend ::Gapic::Config

              config_attr :endpoint,      "artifactregistry.googleapis.com", ::String
              config_attr :credentials,   nil do |value|
                allowed = [::String, ::Hash, ::Proc, ::Symbol, ::Google::Auth::Credentials, ::Signet::OAuth2::Client, nil]
                allowed += [::GRPC::Core::Channel, ::GRPC::Core::ChannelCredentials] if defined? ::GRPC
                allowed.any? { |klass| klass === value }
              end
              config_attr :scope,         nil, ::String, ::Array, nil
              config_attr :lib_name,      nil, ::String, nil
              config_attr :lib_version,   nil, ::String, nil
              config_attr(:channel_args,  { "grpc.service_config_disable_resolution" => 1 }, ::Hash, nil)
              config_attr :interceptors,  nil, ::Array, nil
              config_attr :timeout,       nil, ::Numeric, nil
              config_attr :metadata,      nil, ::Hash, nil
              config_attr :retry_policy,  nil, ::Hash, ::Proc, nil
              config_attr :quota_project, nil, ::String, nil

              # @private
              def initialize parent_config = nil
                @parent_config = parent_config unless parent_config.nil?

                yield self if block_given?
              end

              ##
              # Configurations for individual RPCs
              # @return [Rpcs]
              #
              def rpcs
                @rpcs ||= begin
                  parent_rpcs = nil
                  parent_rpcs = @parent_config.rpcs if defined?(@parent_config) && @parent_config.respond_to?(:rpcs)
                  Rpcs.new parent_rpcs
                end
              end

              ##
              # Configuration RPC class for the ArtifactRegistry API.
              #
              # Includes fields providing the configuration for each RPC in this service.
              # Each configuration object is of type `Gapic::Config::Method` and includes
              # the following configuration fields:
              #
              #  *  `timeout` (*type:* `Numeric`) - The call timeout in seconds
              #  *  `metadata` (*type:* `Hash{Symbol=>String}`) - Additional gRPC headers
              #  *  `retry_policy (*type:* `Hash`) - The retry policy. The policy fields
              #     include the following keys:
              #      *  `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
              #      *  `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
              #      *  `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
              #      *  `:retry_codes` (*type:* `Array<String>`) - The error codes that should
              #         trigger a retry.
              #
              class Rpcs
                ##
                # RPC-specific configuration for `list_docker_images`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :list_docker_images
                ##
                # RPC-specific configuration for `list_repositories`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :list_repositories
                ##
                # RPC-specific configuration for `get_repository`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :get_repository

                # @private
                def initialize parent_rpcs = nil
                  list_docker_images_config = parent_rpcs.list_docker_images if parent_rpcs.respond_to? :list_docker_images
                  @list_docker_images = ::Gapic::Config::Method.new list_docker_images_config
                  list_repositories_config = parent_rpcs.list_repositories if parent_rpcs.respond_to? :list_repositories
                  @list_repositories = ::Gapic::Config::Method.new list_repositories_config
                  get_repository_config = parent_rpcs.get_repository if parent_rpcs.respond_to? :get_repository
                  @get_repository = ::Gapic::Config::Method.new get_repository_config

                  yield self if block_given?
                end
              end
            end
          end
        end
      end
    end
  end
end