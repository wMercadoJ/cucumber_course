require 'rspec/expectations'
require 'pathname'
require 'yaml'
require 'json_spec/cucumber' 

AfterConfiguration do |config|
  # read config file
  configuration = load_app_config_file('env.yml')
  # Load application configuration parameters
  $app_user = configuration['app']['admin_user']
  $app_pass = configuration['app']['admin_pass']
  $app_host = configuration['app']['host']
  $app_port = configuration['app']['port']
  $app_root = configuration['app']['rootPath']
  $app_authorization_base64 = configuration['app']['authorization_base64']
end


# This method is to read the yml configuration file
def find_config_file(filename)
  root = Pathname.pwd
  while not root.root?
    root.find do |path|
      if path.file? and path.basename.to_s == filename
        return path.to_s
      end
    end
    root = root.parent
  end
  raise 'Configuration file ' #{filename}' not found!'
end

# this method is to load the yml file
def load_app_config_file(filename)
  config_file = find_config_file(filename)
  config = YAML.load_file(config_file)
  $app_context = config['app']['rootPath']
  return config
end
