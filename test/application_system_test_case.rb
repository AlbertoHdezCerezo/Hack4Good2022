require "test_helper"
# https://peter.sh/experiments/chromium-command-line-switches/
class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  driven_by :selenium, using: :headless_chrome, screen_size: [1400, 1400]
end
