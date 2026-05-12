module BuildingsHelper
  CLOUDFRONT_HOST = "https://d3tlw7q61ww5gp.cloudfront.net".freeze

  def building_image_url(image, resize_to_limit: [1800, 1800])
    if active_storage_image?(image)
      active_storage_image_url(image, resize_to_limit: resize_to_limit)
    else
      legacy_building_image_url(image)
    end
  end

  def building_image_tag(image, **options)
    image_tag(
      building_image_url(image, resize_to_limit: options.delete(:resize_to_limit) || [1800, 1800]),
      options
    )
  end

  def building_lazy_image_tag(image, **options)
    tag.img(
      {
        "data-lazy": building_image_url(image, resize_to_limit: options.delete(:resize_to_limit) || [1800, 1800])
      }.merge(options)
    )
  end

  def active_storage_image?(image)
    image.respond_to?(:variant)
  end

  def legacy_building_image_url(path)
    return path if path.to_s.match?(%r{\Ahttps?://})

    escaped_path = path.to_s.split("/").map { |segment| ERB::Util.url_encode(segment) }.join("/")
    "#{CLOUDFRONT_HOST}/#{escaped_path}"
  end

  private

  def active_storage_image_url(image, resize_to_limit:)
    return url_for(image) unless Gem.loaded_specs.key?("image_processing")

    url_for(image.variant(resize_to_limit: resize_to_limit, saver: { quality: 78, strip: true }))
  rescue LoadError
    url_for(image)
  end
end
