require 'yaml'

dir = '/Users/joseplha/projects/jed/photorama/img/galleries/g02/'
prefix = '/img/galleries/g02/'
result = {}
Dir.foreach(dir) do |filename|
  result['images'] ||= []
  result['images'] << {'image_path' => "#{prefix}#{filename}", 'caption' => 'Headlands', 'copyright' => '© Jed Hassell'} if filename.end_with?('.jpeg')
end

puts result.to_yaml