# See https://docs.getchef.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "mmueller"
client_key               "#{current_dir}/mmueller.pem"
chef_server_url          "https://mmueller892.mylabserver.com/organizations/testorg"
cookbook_path            ["#{current_dir}/../cookbooks"]
