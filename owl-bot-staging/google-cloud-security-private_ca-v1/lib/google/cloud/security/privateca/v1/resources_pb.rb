# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/security/privateca/v1/resources.proto

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/timestamp_pb'
require 'google/type/expr_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/security/privateca/v1/resources.proto", :syntax => :proto3) do
    add_message "google.cloud.security.privateca.v1.CertificateAuthority" do
      optional :name, :string, 1
      optional :type, :enum, 2, "google.cloud.security.privateca.v1.CertificateAuthority.Type"
      optional :config, :message, 3, "google.cloud.security.privateca.v1.CertificateConfig"
      optional :lifetime, :message, 4, "google.protobuf.Duration"
      optional :key_spec, :message, 5, "google.cloud.security.privateca.v1.CertificateAuthority.KeyVersionSpec"
      optional :subordinate_config, :message, 6, "google.cloud.security.privateca.v1.SubordinateConfig"
      optional :tier, :enum, 7, "google.cloud.security.privateca.v1.CaPool.Tier"
      optional :state, :enum, 8, "google.cloud.security.privateca.v1.CertificateAuthority.State"
      repeated :pem_ca_certificates, :string, 9
      repeated :ca_certificate_descriptions, :message, 10, "google.cloud.security.privateca.v1.CertificateDescription"
      optional :gcs_bucket, :string, 11
      optional :access_urls, :message, 12, "google.cloud.security.privateca.v1.CertificateAuthority.AccessUrls"
      optional :create_time, :message, 13, "google.protobuf.Timestamp"
      optional :update_time, :message, 14, "google.protobuf.Timestamp"
      optional :delete_time, :message, 15, "google.protobuf.Timestamp"
      optional :expire_time, :message, 16, "google.protobuf.Timestamp"
      map :labels, :string, :string, 17
    end
    add_message "google.cloud.security.privateca.v1.CertificateAuthority.AccessUrls" do
      optional :ca_certificate_access_url, :string, 1
      repeated :crl_access_urls, :string, 2
    end
    add_message "google.cloud.security.privateca.v1.CertificateAuthority.KeyVersionSpec" do
      oneof :KeyVersion do
        optional :cloud_kms_key_version, :string, 1
        optional :algorithm, :enum, 2, "google.cloud.security.privateca.v1.CertificateAuthority.SignHashAlgorithm"
      end
    end
    add_enum "google.cloud.security.privateca.v1.CertificateAuthority.Type" do
      value :TYPE_UNSPECIFIED, 0
      value :SELF_SIGNED, 1
      value :SUBORDINATE, 2
    end
    add_enum "google.cloud.security.privateca.v1.CertificateAuthority.State" do
      value :STATE_UNSPECIFIED, 0
      value :ENABLED, 1
      value :DISABLED, 2
      value :STAGED, 3
      value :AWAITING_USER_ACTIVATION, 4
      value :DELETED, 5
    end
    add_enum "google.cloud.security.privateca.v1.CertificateAuthority.SignHashAlgorithm" do
      value :SIGN_HASH_ALGORITHM_UNSPECIFIED, 0
      value :RSA_PSS_2048_SHA256, 1
      value :RSA_PSS_3072_SHA256, 2
      value :RSA_PSS_4096_SHA256, 3
      value :RSA_PKCS1_2048_SHA256, 6
      value :RSA_PKCS1_3072_SHA256, 7
      value :RSA_PKCS1_4096_SHA256, 8
      value :EC_P256_SHA256, 4
      value :EC_P384_SHA384, 5
    end
    add_message "google.cloud.security.privateca.v1.CaPool" do
      optional :name, :string, 1
      optional :tier, :enum, 2, "google.cloud.security.privateca.v1.CaPool.Tier"
      optional :issuance_policy, :message, 3, "google.cloud.security.privateca.v1.CaPool.IssuancePolicy"
      optional :publishing_options, :message, 4, "google.cloud.security.privateca.v1.CaPool.PublishingOptions"
      map :labels, :string, :string, 5
    end
    add_message "google.cloud.security.privateca.v1.CaPool.PublishingOptions" do
      optional :publish_ca_cert, :bool, 1
      optional :publish_crl, :bool, 2
    end
    add_message "google.cloud.security.privateca.v1.CaPool.IssuancePolicy" do
      repeated :allowed_key_types, :message, 1, "google.cloud.security.privateca.v1.CaPool.IssuancePolicy.AllowedKeyType"
      optional :maximum_lifetime, :message, 2, "google.protobuf.Duration"
      optional :allowed_issuance_modes, :message, 3, "google.cloud.security.privateca.v1.CaPool.IssuancePolicy.IssuanceModes"
      optional :baseline_values, :message, 4, "google.cloud.security.privateca.v1.X509Parameters"
      optional :identity_constraints, :message, 5, "google.cloud.security.privateca.v1.CertificateIdentityConstraints"
      optional :passthrough_extensions, :message, 6, "google.cloud.security.privateca.v1.CertificateExtensionConstraints"
    end
    add_message "google.cloud.security.privateca.v1.CaPool.IssuancePolicy.AllowedKeyType" do
      oneof :key_type do
        optional :rsa, :message, 1, "google.cloud.security.privateca.v1.CaPool.IssuancePolicy.AllowedKeyType.RsaKeyType"
        optional :elliptic_curve, :message, 2, "google.cloud.security.privateca.v1.CaPool.IssuancePolicy.AllowedKeyType.EcKeyType"
      end
    end
    add_message "google.cloud.security.privateca.v1.CaPool.IssuancePolicy.AllowedKeyType.RsaKeyType" do
      optional :min_modulus_size, :int64, 1
      optional :max_modulus_size, :int64, 2
    end
    add_message "google.cloud.security.privateca.v1.CaPool.IssuancePolicy.AllowedKeyType.EcKeyType" do
      optional :signature_algorithm, :enum, 1, "google.cloud.security.privateca.v1.CaPool.IssuancePolicy.AllowedKeyType.EcKeyType.EcSignatureAlgorithm"
    end
    add_enum "google.cloud.security.privateca.v1.CaPool.IssuancePolicy.AllowedKeyType.EcKeyType.EcSignatureAlgorithm" do
      value :EC_SIGNATURE_ALGORITHM_UNSPECIFIED, 0
      value :ECDSA_P256, 1
      value :ECDSA_P384, 2
      value :EDDSA_25519, 3
    end
    add_message "google.cloud.security.privateca.v1.CaPool.IssuancePolicy.IssuanceModes" do
      optional :allow_csr_based_issuance, :bool, 1
      optional :allow_config_based_issuance, :bool, 2
    end
    add_enum "google.cloud.security.privateca.v1.CaPool.Tier" do
      value :TIER_UNSPECIFIED, 0
      value :ENTERPRISE, 1
      value :DEVOPS, 2
    end
    add_message "google.cloud.security.privateca.v1.CertificateRevocationList" do
      optional :name, :string, 1
      optional :sequence_number, :int64, 2
      repeated :revoked_certificates, :message, 3, "google.cloud.security.privateca.v1.CertificateRevocationList.RevokedCertificate"
      optional :pem_crl, :string, 4
      optional :access_url, :string, 5
      optional :state, :enum, 6, "google.cloud.security.privateca.v1.CertificateRevocationList.State"
      optional :create_time, :message, 7, "google.protobuf.Timestamp"
      optional :update_time, :message, 8, "google.protobuf.Timestamp"
      optional :revision_id, :string, 9
      map :labels, :string, :string, 10
    end
    add_message "google.cloud.security.privateca.v1.CertificateRevocationList.RevokedCertificate" do
      optional :certificate, :string, 1
      optional :hex_serial_number, :string, 2
      optional :revocation_reason, :enum, 3, "google.cloud.security.privateca.v1.RevocationReason"
    end
    add_enum "google.cloud.security.privateca.v1.CertificateRevocationList.State" do
      value :STATE_UNSPECIFIED, 0
      value :ACTIVE, 1
      value :SUPERSEDED, 2
    end
    add_message "google.cloud.security.privateca.v1.Certificate" do
      optional :name, :string, 1
      optional :issuer_certificate_authority, :string, 4
      optional :lifetime, :message, 5, "google.protobuf.Duration"
      optional :certificate_template, :string, 6
      optional :subject_mode, :enum, 7, "google.cloud.security.privateca.v1.SubjectRequestMode"
      optional :revocation_details, :message, 8, "google.cloud.security.privateca.v1.Certificate.RevocationDetails"
      optional :pem_certificate, :string, 9
      optional :certificate_description, :message, 10, "google.cloud.security.privateca.v1.CertificateDescription"
      repeated :pem_certificate_chain, :string, 11
      optional :create_time, :message, 12, "google.protobuf.Timestamp"
      optional :update_time, :message, 13, "google.protobuf.Timestamp"
      map :labels, :string, :string, 14
      oneof :certificate_config do
        optional :pem_csr, :string, 2
        optional :config, :message, 3, "google.cloud.security.privateca.v1.CertificateConfig"
      end
    end
    add_message "google.cloud.security.privateca.v1.Certificate.RevocationDetails" do
      optional :revocation_state, :enum, 1, "google.cloud.security.privateca.v1.RevocationReason"
      optional :revocation_time, :message, 2, "google.protobuf.Timestamp"
    end
    add_message "google.cloud.security.privateca.v1.CertificateTemplate" do
      optional :name, :string, 1
      optional :predefined_values, :message, 2, "google.cloud.security.privateca.v1.X509Parameters"
      optional :identity_constraints, :message, 3, "google.cloud.security.privateca.v1.CertificateIdentityConstraints"
      optional :passthrough_extensions, :message, 4, "google.cloud.security.privateca.v1.CertificateExtensionConstraints"
      optional :description, :string, 5
      optional :create_time, :message, 6, "google.protobuf.Timestamp"
      optional :update_time, :message, 7, "google.protobuf.Timestamp"
      map :labels, :string, :string, 8
    end
    add_message "google.cloud.security.privateca.v1.X509Parameters" do
      optional :key_usage, :message, 1, "google.cloud.security.privateca.v1.KeyUsage"
      optional :ca_options, :message, 2, "google.cloud.security.privateca.v1.X509Parameters.CaOptions"
      repeated :policy_ids, :message, 3, "google.cloud.security.privateca.v1.ObjectId"
      repeated :aia_ocsp_servers, :string, 4
      repeated :additional_extensions, :message, 5, "google.cloud.security.privateca.v1.X509Extension"
    end
    add_message "google.cloud.security.privateca.v1.X509Parameters.CaOptions" do
      proto3_optional :is_ca, :bool, 1
      proto3_optional :max_issuer_path_length, :int32, 2
    end
    add_message "google.cloud.security.privateca.v1.SubordinateConfig" do
      oneof :subordinate_config do
        optional :certificate_authority, :string, 1
        optional :pem_issuer_chain, :message, 2, "google.cloud.security.privateca.v1.SubordinateConfig.SubordinateConfigChain"
      end
    end
    add_message "google.cloud.security.privateca.v1.SubordinateConfig.SubordinateConfigChain" do
      repeated :pem_certificates, :string, 1
    end
    add_message "google.cloud.security.privateca.v1.PublicKey" do
      optional :key, :bytes, 1
      optional :format, :enum, 2, "google.cloud.security.privateca.v1.PublicKey.KeyFormat"
    end
    add_enum "google.cloud.security.privateca.v1.PublicKey.KeyFormat" do
      value :KEY_FORMAT_UNSPECIFIED, 0
      value :PEM, 1
    end
    add_message "google.cloud.security.privateca.v1.CertificateConfig" do
      optional :subject_config, :message, 1, "google.cloud.security.privateca.v1.CertificateConfig.SubjectConfig"
      optional :x509_config, :message, 2, "google.cloud.security.privateca.v1.X509Parameters"
      optional :public_key, :message, 3, "google.cloud.security.privateca.v1.PublicKey"
    end
    add_message "google.cloud.security.privateca.v1.CertificateConfig.SubjectConfig" do
      optional :subject, :message, 1, "google.cloud.security.privateca.v1.Subject"
      optional :subject_alt_name, :message, 2, "google.cloud.security.privateca.v1.SubjectAltNames"
    end
    add_message "google.cloud.security.privateca.v1.CertificateDescription" do
      optional :subject_description, :message, 1, "google.cloud.security.privateca.v1.CertificateDescription.SubjectDescription"
      optional :x509_description, :message, 2, "google.cloud.security.privateca.v1.X509Parameters"
      optional :public_key, :message, 3, "google.cloud.security.privateca.v1.PublicKey"
      optional :subject_key_id, :message, 4, "google.cloud.security.privateca.v1.CertificateDescription.KeyId"
      optional :authority_key_id, :message, 5, "google.cloud.security.privateca.v1.CertificateDescription.KeyId"
      repeated :crl_distribution_points, :string, 6
      repeated :aia_issuing_certificate_urls, :string, 7
      optional :cert_fingerprint, :message, 8, "google.cloud.security.privateca.v1.CertificateDescription.CertificateFingerprint"
    end
    add_message "google.cloud.security.privateca.v1.CertificateDescription.SubjectDescription" do
      optional :subject, :message, 1, "google.cloud.security.privateca.v1.Subject"
      optional :subject_alt_name, :message, 2, "google.cloud.security.privateca.v1.SubjectAltNames"
      optional :hex_serial_number, :string, 3
      optional :lifetime, :message, 4, "google.protobuf.Duration"
      optional :not_before_time, :message, 5, "google.protobuf.Timestamp"
      optional :not_after_time, :message, 6, "google.protobuf.Timestamp"
    end
    add_message "google.cloud.security.privateca.v1.CertificateDescription.KeyId" do
      optional :key_id, :string, 1
    end
    add_message "google.cloud.security.privateca.v1.CertificateDescription.CertificateFingerprint" do
      optional :sha256_hash, :string, 1
    end
    add_message "google.cloud.security.privateca.v1.ObjectId" do
      repeated :object_id_path, :int32, 1
    end
    add_message "google.cloud.security.privateca.v1.X509Extension" do
      optional :object_id, :message, 1, "google.cloud.security.privateca.v1.ObjectId"
      optional :critical, :bool, 2
      optional :value, :bytes, 3
    end
    add_message "google.cloud.security.privateca.v1.KeyUsage" do
      optional :base_key_usage, :message, 1, "google.cloud.security.privateca.v1.KeyUsage.KeyUsageOptions"
      optional :extended_key_usage, :message, 2, "google.cloud.security.privateca.v1.KeyUsage.ExtendedKeyUsageOptions"
      repeated :unknown_extended_key_usages, :message, 3, "google.cloud.security.privateca.v1.ObjectId"
    end
    add_message "google.cloud.security.privateca.v1.KeyUsage.KeyUsageOptions" do
      optional :digital_signature, :bool, 1
      optional :content_commitment, :bool, 2
      optional :key_encipherment, :bool, 3
      optional :data_encipherment, :bool, 4
      optional :key_agreement, :bool, 5
      optional :cert_sign, :bool, 6
      optional :crl_sign, :bool, 7
      optional :encipher_only, :bool, 8
      optional :decipher_only, :bool, 9
    end
    add_message "google.cloud.security.privateca.v1.KeyUsage.ExtendedKeyUsageOptions" do
      optional :server_auth, :bool, 1
      optional :client_auth, :bool, 2
      optional :code_signing, :bool, 3
      optional :email_protection, :bool, 4
      optional :time_stamping, :bool, 5
      optional :ocsp_signing, :bool, 6
    end
    add_message "google.cloud.security.privateca.v1.Subject" do
      optional :common_name, :string, 1
      optional :country_code, :string, 2
      optional :organization, :string, 3
      optional :organizational_unit, :string, 4
      optional :locality, :string, 5
      optional :province, :string, 6
      optional :street_address, :string, 7
      optional :postal_code, :string, 8
    end
    add_message "google.cloud.security.privateca.v1.SubjectAltNames" do
      repeated :dns_names, :string, 1
      repeated :uris, :string, 2
      repeated :email_addresses, :string, 3
      repeated :ip_addresses, :string, 4
      repeated :custom_sans, :message, 5, "google.cloud.security.privateca.v1.X509Extension"
    end
    add_message "google.cloud.security.privateca.v1.CertificateIdentityConstraints" do
      optional :cel_expression, :message, 1, "google.type.Expr"
      proto3_optional :allow_subject_passthrough, :bool, 2
      proto3_optional :allow_subject_alt_names_passthrough, :bool, 3
    end
    add_message "google.cloud.security.privateca.v1.CertificateExtensionConstraints" do
      repeated :known_extensions, :enum, 1, "google.cloud.security.privateca.v1.CertificateExtensionConstraints.KnownCertificateExtension"
      repeated :additional_extensions, :message, 2, "google.cloud.security.privateca.v1.ObjectId"
    end
    add_enum "google.cloud.security.privateca.v1.CertificateExtensionConstraints.KnownCertificateExtension" do
      value :KNOWN_CERTIFICATE_EXTENSION_UNSPECIFIED, 0
      value :BASE_KEY_USAGE, 1
      value :EXTENDED_KEY_USAGE, 2
      value :CA_OPTIONS, 3
      value :POLICY_IDS, 4
      value :AIA_OCSP_SERVERS, 5
    end
    add_enum "google.cloud.security.privateca.v1.RevocationReason" do
      value :REVOCATION_REASON_UNSPECIFIED, 0
      value :KEY_COMPROMISE, 1
      value :CERTIFICATE_AUTHORITY_COMPROMISE, 2
      value :AFFILIATION_CHANGED, 3
      value :SUPERSEDED, 4
      value :CESSATION_OF_OPERATION, 5
      value :CERTIFICATE_HOLD, 6
      value :PRIVILEGE_WITHDRAWN, 7
      value :ATTRIBUTE_AUTHORITY_COMPROMISE, 8
    end
    add_enum "google.cloud.security.privateca.v1.SubjectRequestMode" do
      value :SUBJECT_REQUEST_MODE_UNSPECIFIED, 0
      value :DEFAULT, 1
      value :REFLECTED_SPIFFE, 2
    end
  end
end

module Google
  module Cloud
    module Security
      module PrivateCA
        module V1
          CertificateAuthority = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.CertificateAuthority").msgclass
          CertificateAuthority::AccessUrls = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.CertificateAuthority.AccessUrls").msgclass
          CertificateAuthority::KeyVersionSpec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.CertificateAuthority.KeyVersionSpec").msgclass
          CertificateAuthority::Type = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.CertificateAuthority.Type").enummodule
          CertificateAuthority::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.CertificateAuthority.State").enummodule
          CertificateAuthority::SignHashAlgorithm = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.CertificateAuthority.SignHashAlgorithm").enummodule
          CaPool = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.CaPool").msgclass
          CaPool::PublishingOptions = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.CaPool.PublishingOptions").msgclass
          CaPool::IssuancePolicy = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.CaPool.IssuancePolicy").msgclass
          CaPool::IssuancePolicy::AllowedKeyType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.CaPool.IssuancePolicy.AllowedKeyType").msgclass
          CaPool::IssuancePolicy::AllowedKeyType::RsaKeyType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.CaPool.IssuancePolicy.AllowedKeyType.RsaKeyType").msgclass
          CaPool::IssuancePolicy::AllowedKeyType::EcKeyType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.CaPool.IssuancePolicy.AllowedKeyType.EcKeyType").msgclass
          CaPool::IssuancePolicy::AllowedKeyType::EcKeyType::EcSignatureAlgorithm = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.CaPool.IssuancePolicy.AllowedKeyType.EcKeyType.EcSignatureAlgorithm").enummodule
          CaPool::IssuancePolicy::IssuanceModes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.CaPool.IssuancePolicy.IssuanceModes").msgclass
          CaPool::Tier = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.CaPool.Tier").enummodule
          CertificateRevocationList = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.CertificateRevocationList").msgclass
          CertificateRevocationList::RevokedCertificate = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.CertificateRevocationList.RevokedCertificate").msgclass
          CertificateRevocationList::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.CertificateRevocationList.State").enummodule
          Certificate = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.Certificate").msgclass
          Certificate::RevocationDetails = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.Certificate.RevocationDetails").msgclass
          CertificateTemplate = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.CertificateTemplate").msgclass
          X509Parameters = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.X509Parameters").msgclass
          X509Parameters::CaOptions = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.X509Parameters.CaOptions").msgclass
          SubordinateConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.SubordinateConfig").msgclass
          SubordinateConfig::SubordinateConfigChain = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.SubordinateConfig.SubordinateConfigChain").msgclass
          PublicKey = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.PublicKey").msgclass
          PublicKey::KeyFormat = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.PublicKey.KeyFormat").enummodule
          CertificateConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.CertificateConfig").msgclass
          CertificateConfig::SubjectConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.CertificateConfig.SubjectConfig").msgclass
          CertificateDescription = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.CertificateDescription").msgclass
          CertificateDescription::SubjectDescription = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.CertificateDescription.SubjectDescription").msgclass
          CertificateDescription::KeyId = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.CertificateDescription.KeyId").msgclass
          CertificateDescription::CertificateFingerprint = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.CertificateDescription.CertificateFingerprint").msgclass
          ObjectId = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.ObjectId").msgclass
          X509Extension = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.X509Extension").msgclass
          KeyUsage = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.KeyUsage").msgclass
          KeyUsage::KeyUsageOptions = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.KeyUsage.KeyUsageOptions").msgclass
          KeyUsage::ExtendedKeyUsageOptions = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.KeyUsage.ExtendedKeyUsageOptions").msgclass
          Subject = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.Subject").msgclass
          SubjectAltNames = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.SubjectAltNames").msgclass
          CertificateIdentityConstraints = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.CertificateIdentityConstraints").msgclass
          CertificateExtensionConstraints = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.CertificateExtensionConstraints").msgclass
          CertificateExtensionConstraints::KnownCertificateExtension = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.CertificateExtensionConstraints.KnownCertificateExtension").enummodule
          RevocationReason = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.RevocationReason").enummodule
          SubjectRequestMode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.privateca.v1.SubjectRequestMode").enummodule
        end
      end
    end
  end
end