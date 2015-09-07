#Search a file for name
require 'rspec/expectations'
require 'pathname' #Ruby libraries
require 'yaml'
require 'json_spec/cucumber' # library to json management 

AfterConfiguration do |config|
  # read config file
  configuration = load_app_config_file('env.yml')
  # Load application configuration parameters $global_variables
  $app_user = configuration['app']['admin_user']
  $app_pass = configuration['app']['admin_pass']
  $app_host = configuration['app']['host']
  $app_port = configuration['app']['port']
  $app_root = configuration['app']['rootPath']
  $app_proxy = configuration['app']['proxy']
  $app_proxy_port = configuration['app']['proxy_port']
end

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


def load_app_config_file(filename)
  config_file = find_config_file(filename)
  config = YAML.load_file(config_file)  # validation of file
  $app_context = config['app']['rootPath']  # [top level] [level inside top level] call of variables
  return config
end
