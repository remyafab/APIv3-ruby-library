=begin
#SendinBlue API

#SendinBlue provide a RESTFul API that can be used with any languages. With this API, you will be able to :   - Manage your campaigns and get the statistics   - Manage your contacts   - Send transactional Emails and SMS   - and much more...  You can download our wrappers at https://github.com/orgs/sendinblue  **Possible responses**   | Code | Message |   | :-------------: | ------------- |   | 200  | OK. Successful Request  |   | 201  | OK. Successful Creation |   | 202  | OK. Request accepted |   | 204  | OK. Successful Update/Deletion  |   | 400  | Error. Bad Request  |   | 401  | Error. Authentication Needed  |   | 402  | Error. Not enough credit, plan upgrade needed  |   | 403  | Error. Permission denied  |   | 404  | Error. Object does not exist |   | 405  | Error. Method not allowed  | 

OpenAPI spec version: 3.0.0
Contact: contact@sendinblue.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

# Common files
require 'sib-api-v3-sdk/api_client'
require 'sib-api-v3-sdk/api_error'
require 'sib-api-v3-sdk/version'
require 'sib-api-v3-sdk/configuration'

# Models
require 'sib-api-v3-sdk/models/add_contact_to_list'
require 'sib-api-v3-sdk/models/add_credits'
require 'sib-api-v3-sdk/models/create_attribute'
require 'sib-api-v3-sdk/models/create_attribute_enumeration'
require 'sib-api-v3-sdk/models/create_child'
require 'sib-api-v3-sdk/models/create_contact'
require 'sib-api-v3-sdk/models/create_email_campaign'
require 'sib-api-v3-sdk/models/create_email_campaign_recipients'
require 'sib-api-v3-sdk/models/create_email_campaign_sender'
require 'sib-api-v3-sdk/models/create_list'
require 'sib-api-v3-sdk/models/create_model'
require 'sib-api-v3-sdk/models/create_reseller'
require 'sib-api-v3-sdk/models/create_sender'
require 'sib-api-v3-sdk/models/create_sender_ips'
require 'sib-api-v3-sdk/models/create_sender_model'
require 'sib-api-v3-sdk/models/create_sms_campaign'
require 'sib-api-v3-sdk/models/create_sms_campaign_recipients'
require 'sib-api-v3-sdk/models/create_smtp_email'
require 'sib-api-v3-sdk/models/create_smtp_template'
require 'sib-api-v3-sdk/models/create_smtp_template_sender'
require 'sib-api-v3-sdk/models/create_update_folder'
require 'sib-api-v3-sdk/models/create_webhook'
require 'sib-api-v3-sdk/models/created_process_id'
require 'sib-api-v3-sdk/models/delete_hardbounces'
require 'sib-api-v3-sdk/models/email_export_recipients'
require 'sib-api-v3-sdk/models/error_model'
require 'sib-api-v3-sdk/models/get_account_marketing_automation'
require 'sib-api-v3-sdk/models/get_account_plan'
require 'sib-api-v3-sdk/models/get_account_relay'
require 'sib-api-v3-sdk/models/get_account_relay_data'
require 'sib-api-v3-sdk/models/get_aggregated_report'
require 'sib-api-v3-sdk/models/get_attributes'
require 'sib-api-v3-sdk/models/get_attributes_attributes'
require 'sib-api-v3-sdk/models/get_attributes_enumeration'
require 'sib-api-v3-sdk/models/get_campaign_overview'
require 'sib-api-v3-sdk/models/get_campaign_recipients'
require 'sib-api-v3-sdk/models/get_campaign_stats'
require 'sib-api-v3-sdk/models/get_child_info_api_keys'
require 'sib-api-v3-sdk/models/get_child_info_api_keys_v2'
require 'sib-api-v3-sdk/models/get_child_info_api_keys_v3'
require 'sib-api-v3-sdk/models/get_child_info_credits'
require 'sib-api-v3-sdk/models/get_child_info_statistics'
require 'sib-api-v3-sdk/models/get_children_list'
require 'sib-api-v3-sdk/models/get_client'
require 'sib-api-v3-sdk/models/get_contact_campaign_stats'
require 'sib-api-v3-sdk/models/get_contact_campaign_stats_clicked'
require 'sib-api-v3-sdk/models/get_contact_campaign_stats_opened'
require 'sib-api-v3-sdk/models/get_contact_campaign_stats_transac_attributes'
require 'sib-api-v3-sdk/models/get_contact_campaign_stats_unsubscriptions'
require 'sib-api-v3-sdk/models/get_contact_details'
require 'sib-api-v3-sdk/models/get_contacts'
require 'sib-api-v3-sdk/models/get_email_campaigns'
require 'sib-api-v3-sdk/models/get_email_event_report'
require 'sib-api-v3-sdk/models/get_email_event_report_events'
require 'sib-api-v3-sdk/models/get_extended_campaign_overview_sender'
require 'sib-api-v3-sdk/models/get_extended_campaign_stats'
require 'sib-api-v3-sdk/models/get_extended_campaign_stats_links_stats'
require 'sib-api-v3-sdk/models/get_extended_client_address'
require 'sib-api-v3-sdk/models/get_extended_contact_details_statistics'
require 'sib-api-v3-sdk/models/get_extended_contact_details_statistics_clicked'
require 'sib-api-v3-sdk/models/get_extended_contact_details_statistics_links'
require 'sib-api-v3-sdk/models/get_extended_contact_details_statistics_messages_sent'
require 'sib-api-v3-sdk/models/get_extended_contact_details_statistics_opened'
require 'sib-api-v3-sdk/models/get_extended_contact_details_statistics_unsubscriptions'
require 'sib-api-v3-sdk/models/get_extended_contact_details_statistics_unsubscriptions_admin_unsubscription'
require 'sib-api-v3-sdk/models/get_extended_contact_details_statistics_unsubscriptions_user_unsubscription'
require 'sib-api-v3-sdk/models/get_extended_list_campaign_stats'
require 'sib-api-v3-sdk/models/get_folder'
require 'sib-api-v3-sdk/models/get_folder_lists'
require 'sib-api-v3-sdk/models/get_folders'
require 'sib-api-v3-sdk/models/get_ip'
require 'sib-api-v3-sdk/models/get_ip_from_sender'
require 'sib-api-v3-sdk/models/get_ips'
require 'sib-api-v3-sdk/models/get_ips_from_sender'
require 'sib-api-v3-sdk/models/get_list'
require 'sib-api-v3-sdk/models/get_lists'
require 'sib-api-v3-sdk/models/get_process'
require 'sib-api-v3-sdk/models/get_processes'
require 'sib-api-v3-sdk/models/get_reports'
require 'sib-api-v3-sdk/models/get_reports_reports'
require 'sib-api-v3-sdk/models/get_senders_list'
require 'sib-api-v3-sdk/models/get_senders_list_ips'
require 'sib-api-v3-sdk/models/get_senders_list_senders'
require 'sib-api-v3-sdk/models/get_sms_campaign_overview'
require 'sib-api-v3-sdk/models/get_sms_campaign_stats'
require 'sib-api-v3-sdk/models/get_sms_campaigns'
require 'sib-api-v3-sdk/models/get_sms_event_report'
require 'sib-api-v3-sdk/models/get_sms_event_report_events'
require 'sib-api-v3-sdk/models/get_smtp_template_overview'
require 'sib-api-v3-sdk/models/get_smtp_template_overview_sender'
require 'sib-api-v3-sdk/models/get_smtp_templates'
require 'sib-api-v3-sdk/models/get_stats_by_domain'
require 'sib-api-v3-sdk/models/get_transac_aggregated_sms_report'
require 'sib-api-v3-sdk/models/get_transac_sms_report'
require 'sib-api-v3-sdk/models/get_transac_sms_report_reports'
require 'sib-api-v3-sdk/models/get_webhook'
require 'sib-api-v3-sdk/models/get_webhooks'
require 'sib-api-v3-sdk/models/manage_ip'
require 'sib-api-v3-sdk/models/post_contact_info'
require 'sib-api-v3-sdk/models/post_contact_info_contacts'
require 'sib-api-v3-sdk/models/post_send_failed'
require 'sib-api-v3-sdk/models/post_send_sms_test_failed'
require 'sib-api-v3-sdk/models/remaining_credit_model'
require 'sib-api-v3-sdk/models/remaining_credit_model_child'
require 'sib-api-v3-sdk/models/remaining_credit_model_reseller'
require 'sib-api-v3-sdk/models/remove_contact_from_list'
require 'sib-api-v3-sdk/models/remove_credits'
require 'sib-api-v3-sdk/models/request_contact_export'
require 'sib-api-v3-sdk/models/request_contact_import'
require 'sib-api-v3-sdk/models/request_contact_import_new_list'
require 'sib-api-v3-sdk/models/request_sms_recipient_export'
require 'sib-api-v3-sdk/models/send_email'
require 'sib-api-v3-sdk/models/send_email_attachment'
require 'sib-api-v3-sdk/models/send_report'
require 'sib-api-v3-sdk/models/send_report_email'
require 'sib-api-v3-sdk/models/send_sms'
require 'sib-api-v3-sdk/models/send_smtp_email'
require 'sib-api-v3-sdk/models/send_smtp_email_attachment'
require 'sib-api-v3-sdk/models/send_smtp_email_bcc'
require 'sib-api-v3-sdk/models/send_smtp_email_cc'
require 'sib-api-v3-sdk/models/send_smtp_email_reply_to'
require 'sib-api-v3-sdk/models/send_smtp_email_sender'
require 'sib-api-v3-sdk/models/send_smtp_email_to'
require 'sib-api-v3-sdk/models/send_template_email'
require 'sib-api-v3-sdk/models/send_test_email'
require 'sib-api-v3-sdk/models/send_test_sms'
require 'sib-api-v3-sdk/models/send_transac_sms'
require 'sib-api-v3-sdk/models/update_attribute'
require 'sib-api-v3-sdk/models/update_attribute_enumeration'
require 'sib-api-v3-sdk/models/update_campaign_status'
require 'sib-api-v3-sdk/models/update_child'
require 'sib-api-v3-sdk/models/update_contact'
require 'sib-api-v3-sdk/models/update_email_campaign'
require 'sib-api-v3-sdk/models/update_email_campaign_recipients'
require 'sib-api-v3-sdk/models/update_email_campaign_sender'
require 'sib-api-v3-sdk/models/update_list'
require 'sib-api-v3-sdk/models/update_sender'
require 'sib-api-v3-sdk/models/update_sms_campaign'
require 'sib-api-v3-sdk/models/update_smtp_template'
require 'sib-api-v3-sdk/models/update_smtp_template_sender'
require 'sib-api-v3-sdk/models/update_webhook'
require 'sib-api-v3-sdk/models/get_child_info'
require 'sib-api-v3-sdk/models/get_extended_campaign_overview'
require 'sib-api-v3-sdk/models/get_extended_client'
require 'sib-api-v3-sdk/models/get_extended_contact_details'
require 'sib-api-v3-sdk/models/get_extended_list'
require 'sib-api-v3-sdk/models/get_sms_campaign'
require 'sib-api-v3-sdk/models/get_account'
require 'sib-api-v3-sdk/models/get_email_campaign'

# APIs
require 'sib-api-v3-sdk/api/account_api'
require 'sib-api-v3-sdk/api/attributes_api'
require 'sib-api-v3-sdk/api/contacts_api'
require 'sib-api-v3-sdk/api/email_campaigns_api'
require 'sib-api-v3-sdk/api/folders_api'
require 'sib-api-v3-sdk/api/lists_api'
require 'sib-api-v3-sdk/api/process_api'
require 'sib-api-v3-sdk/api/reseller_api'
require 'sib-api-v3-sdk/api/sms_campaigns_api'
require 'sib-api-v3-sdk/api/smtp_api'
require 'sib-api-v3-sdk/api/senders_api'
require 'sib-api-v3-sdk/api/transactional_sms_api'
require 'sib-api-v3-sdk/api/webhooks_api'

module SibApiV3Sdk
  class << self
    # Customize default settings for the SDK using block.
    #   SibApiV3Sdk.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
