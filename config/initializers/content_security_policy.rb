# Be sure to restart your server when you modify this file.

# Define an application-wide content security policy
# For further information see the following documentation
# https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Security-Policy

Rails.application.config.content_security_policy do |policy|
  policy.default_src :none
  policy.connect_src :self, :https
  policy.font_src    :self, :https, :data
  policy.img_src     '*', :data
  # script_src
  # unsafe_eval: required when previewing a story submission
  # policy.script_src  :self, :unsafe_inline, :unsafe_eval, "https://google-analytics.com", "https://googletagmanager.com/"
  policy.script_src  :self, :unsafe_inline, :unsafe_eval, :https
  policy.style_src   :self, :unsafe_inline
  policy.form_action :self

  # Specify URI for violation reports
  policy.report_uri "/csp-violation-report"
end

# If you are using UJS then enable automatic nonce generation
# Rails.application.config.content_security_policy_nonce_generator =
#   -> request { SecureRandom.base64(16) }

# Report CSP violations to a specified URI
# For further information see the following documentation:
# https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Security-Policy-Report-Only
Rails.application.config.content_security_policy_report_only = false
