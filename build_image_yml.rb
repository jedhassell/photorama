require 'yaml'

dir = '/Users/joseplha/projects/jed/photorama/img/galleries/g01/'
prefix = '/img/galleries/g01/'
result = {}
Dir.foreach(dir) do |filename|
  result['images'] ||= []
  result['images'] << {'image_path' => "#{prefix}#{filename}", 'caption' => 'Ring Mountain', 'copyright' => '© Jed Hassell'} if filename.end_with?('.jpg')
end

puts result.to_yaml