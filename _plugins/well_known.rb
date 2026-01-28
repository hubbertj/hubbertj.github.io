# Jekyll plugin to ensure .well-known directory is copied to _site
Jekyll::Hooks.register :site, :post_write do |site|
  source = File.join(site.source, '.well-known')
  dest = File.join(site.dest, '.well-known')
  if File.directory?(source)
    FileUtils.mkdir_p(dest)
    FileUtils.cp_r(File.join(source, '.'), dest)
    Jekyll.logger.info "Copied .well-known directory to #{dest}"
  end
end
