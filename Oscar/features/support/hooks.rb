Before('@scenario_1') do |scenario|
  puts " Let’s Go scenario: #{scenario.title}"
end

After('@scenario_2') do |scenario|
    if scenario.failed?
      puts  "Failed #{scenario.exception.message}"
    else
      puts " Bye Bye it Passed"
    end
end

AfterConfiguration do |config|
  # read config file
  configuration = load_app_config_file('config.yml')
  # Load application configuration parameters
  $app_user = configuration['app']['admin_user']
  $app_pass = configuration['app']['admin_pass']
  $app_host = configuration['app']['host']
  $app_port = configuration['app']['port']
  $app_root = configuration['app']['rootPath']
end

