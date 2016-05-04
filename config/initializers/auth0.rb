Rails.application.config.middleware.use OmniAuth::Builder do
  provider(
    :auth0,
    '6b8vHkyHsxcETSS1lvmMWDxWC2cv2Hou',
    'tQF2uB-7i4rkgH371WAHLhenw9fZrajcDQ_Pg5CCOmlMqOJgDwCUgwSmpXJ7n738',
    'mdwbkny27.auth0.com',
    callback_path: "/auth/auth0/callback"
  )
end