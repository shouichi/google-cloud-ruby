# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/monitoring/v3/metric_service.proto

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/metric_pb'
require 'google/api/monitored_resource_pb'
require 'google/api/resource_pb'
require 'google/monitoring/v3/alert_pb'
require 'google/monitoring/v3/common_pb'
require 'google/monitoring/v3/metric_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/empty_pb'
require 'google/rpc/status_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/monitoring/v3/metric_service.proto", :syntax => :proto3) do
    add_message "google.monitoring.v3.ListMonitoredResourceDescriptorsRequest" do
      optional :name, :string, 5
      optional :filter, :string, 2
      optional :page_size, :int32, 3
      optional :page_token, :string, 4
    end
    add_message "google.monitoring.v3.ListMonitoredResourceDescriptorsResponse" do
      repeated :resource_descriptors, :message, 1, "google.api.MonitoredResourceDescriptor"
      optional :next_page_token, :string, 2
    end
    add_message "google.monitoring.v3.GetMonitoredResourceDescriptorRequest" do
      optional :name, :string, 3
    end
    add_message "google.monitoring.v3.ListMetricDescriptorsRequest" do
      optional :name, :string, 5
      optional :filter, :string, 2
      optional :page_size, :int32, 3
      optional :page_token, :string, 4
    end
    add_message "google.monitoring.v3.ListMetricDescriptorsResponse" do
      repeated :metric_descriptors, :message, 1, "google.api.MetricDescriptor"
      optional :next_page_token, :string, 2
    end
    add_message "google.monitoring.v3.GetMetricDescriptorRequest" do
      optional :name, :string, 3
    end
    add_message "google.monitoring.v3.CreateMetricDescriptorRequest" do
      optional :name, :string, 3
      optional :metric_descriptor, :message, 2, "google.api.MetricDescriptor"
    end
    add_message "google.monitoring.v3.DeleteMetricDescriptorRequest" do
      optional :name, :string, 3
    end
    add_message "google.monitoring.v3.ListTimeSeriesRequest" do
      optional :name, :string, 10
      optional :filter, :string, 2
      optional :interval, :message, 4, "google.monitoring.v3.TimeInterval"
      optional :aggregation, :message, 5, "google.monitoring.v3.Aggregation"
      optional :secondary_aggregation, :message, 11, "google.monitoring.v3.Aggregation"
      optional :order_by, :string, 6
      optional :view, :enum, 7, "google.monitoring.v3.ListTimeSeriesRequest.TimeSeriesView"
      optional :page_size, :int32, 8
      optional :page_token, :string, 9
    end
    add_enum "google.monitoring.v3.ListTimeSeriesRequest.TimeSeriesView" do
      value :FULL, 0
      value :HEADERS, 1
    end
    add_message "google.monitoring.v3.ListTimeSeriesResponse" do
      repeated :time_series, :message, 1, "google.monitoring.v3.TimeSeries"
      optional :next_page_token, :string, 2
      repeated :execution_errors, :message, 3, "google.rpc.Status"
      optional :unit, :string, 5
    end
    add_message "google.monitoring.v3.CreateTimeSeriesRequest" do
      optional :name, :string, 3
      repeated :time_series, :message, 2, "google.monitoring.v3.TimeSeries"
    end
    add_message "google.monitoring.v3.CreateTimeSeriesError" do
      optional :time_series, :message, 1, "google.monitoring.v3.TimeSeries"
      optional :status, :message, 2, "google.rpc.Status"
    end
    add_message "google.monitoring.v3.CreateTimeSeriesSummary" do
      optional :total_point_count, :int32, 1
      optional :success_point_count, :int32, 2
      repeated :errors, :message, 3, "google.monitoring.v3.CreateTimeSeriesSummary.Error"
    end
    add_message "google.monitoring.v3.CreateTimeSeriesSummary.Error" do
      optional :status, :message, 1, "google.rpc.Status"
      optional :point_count, :int32, 2
    end
    add_message "google.monitoring.v3.QueryTimeSeriesRequest" do
      optional :name, :string, 1
      optional :query, :string, 7
      optional :page_size, :int32, 9
      optional :page_token, :string, 10
    end
    add_message "google.monitoring.v3.QueryTimeSeriesResponse" do
      optional :time_series_descriptor, :message, 8, "google.monitoring.v3.TimeSeriesDescriptor"
      repeated :time_series_data, :message, 9, "google.monitoring.v3.TimeSeriesData"
      optional :next_page_token, :string, 10
      repeated :partial_errors, :message, 11, "google.rpc.Status"
    end
    add_message "google.monitoring.v3.QueryErrorList" do
      repeated :errors, :message, 1, "google.monitoring.v3.QueryError"
      optional :error_summary, :string, 2
    end
  end
end

module Google
  module Cloud
    module Monitoring
      module V3
        ListMonitoredResourceDescriptorsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.ListMonitoredResourceDescriptorsRequest").msgclass
        ListMonitoredResourceDescriptorsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.ListMonitoredResourceDescriptorsResponse").msgclass
        GetMonitoredResourceDescriptorRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.GetMonitoredResourceDescriptorRequest").msgclass
        ListMetricDescriptorsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.ListMetricDescriptorsRequest").msgclass
        ListMetricDescriptorsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.ListMetricDescriptorsResponse").msgclass
        GetMetricDescriptorRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.GetMetricDescriptorRequest").msgclass
        CreateMetricDescriptorRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.CreateMetricDescriptorRequest").msgclass
        DeleteMetricDescriptorRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.DeleteMetricDescriptorRequest").msgclass
        ListTimeSeriesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.ListTimeSeriesRequest").msgclass
        ListTimeSeriesRequest::TimeSeriesView = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.ListTimeSeriesRequest.TimeSeriesView").enummodule
        ListTimeSeriesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.ListTimeSeriesResponse").msgclass
        CreateTimeSeriesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.CreateTimeSeriesRequest").msgclass
        CreateTimeSeriesError = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.CreateTimeSeriesError").msgclass
        CreateTimeSeriesSummary = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.CreateTimeSeriesSummary").msgclass
        CreateTimeSeriesSummary::Error = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.CreateTimeSeriesSummary.Error").msgclass
        QueryTimeSeriesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.QueryTimeSeriesRequest").msgclass
        QueryTimeSeriesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.QueryTimeSeriesResponse").msgclass
        QueryErrorList = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.QueryErrorList").msgclass
      end
    end
  end
end