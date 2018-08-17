require 'rubygems'
require 'selenium-cucumber'

# Store command line arguments
Selenium::WebDriver::Chrome.driver_path = 'C:\selenium_driver_chrome\chromedriver.exe'
$browser_type = ENV['BROWSER'] || 'chrome'
$platform = ENV['PLATFORM'] || 'desktop'
$os_version = ENV['OS_VERSION']
$device_name = ENV['DEVICE_NAME']
$udid = ENV['UDID']
$app_path = ENV['APP_PATH']

# check for valid parameters
validate_parameters $platform, $browser_type, $app_path

# If platform is android or ios create driver instance for mobile browser
if $platform == 'android' or $platform == 'iOS'
  
  if $browser_type == 'native'
    $browser_type = "Browser"
  end
  
  if $platform == 'android'
    $device_name, $os_version = get_device_info
  end
  
  desired_caps = {
    caps:       {
      platformName:  $platform,
      browserName: $browser_type,
      versionNumber: $os_version,
      deviceName: $device_name,
      udid: $udid,
      app: ".//#{$app_path}"
      },
    }

  begin
    $driver = Appium::Driver.new(desired_caps).start_driver
  rescue Exception => e
    puts e.message
    Process.exit(0)  
  end
else # else create driver instance for desktop browser
  begin
    # Set Language: English
    # options = Selenium::WebDriver::Chrome::Options.new(args: ['--lang=en'])
    # Set Language: Japan => en
    # Set Langugae: Chinese => ch
    options = Selenium::WebDriver::Chrome::Options.new(args: ['--lang=ch'])
    $driver = Selenium::WebDriver.for(:"#{$browser_type}", options: options)
    $driver.manage().window().maximize()
  rescue Exception => e
    puts e.message
    Process.exit(0)
  end
end
