Paperclip::Attachment.default_options[:storage] = :s3

Paperclip::Attachment.default_options[:s3_region] = "us-west-2"

Paperclip::Attachment.default_options[:s3_protocol] = "https"

Paperclip::Attachment.default_options[:s3_host_name] = "s3-us-west-2.amazonaws.com"

Paperclip::Attachment.default_options[:default_url] = lambda { |image|
    ActionController::Base.helpers.asset_path('sample.jpg')
}

Paperclip::Attachment.default_options[:s3_credentials] = {
    bucket: ENV["S3_BUCKET_NAME"],
    access_key_id: ENV["AWS_ACCESS_KEY_ID"],
    secret_access_key: ENV["AWS_SECRET_ACCESS_KEY"]
}
