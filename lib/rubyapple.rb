require 'rubygems'
require 'rmagick'
require 'fileutils'

class Rubyapple
  def initialize
    if !File.directory?('apple_images/')
      puts "apple_images folder does not exist, please create it and run rubyapple again"
      puts "----"
      puts "rubyapple imagename.png"
      return
    end

    img = Magick::Image.read(ARGV[0])[0].strip!

    # apple-touch-icon-sizes.png
    sizes = [16, 32, 57, 70, 76, 96, 114, 120, 144, 152, 167, 180, 270, 310]

    temp = img

    @numi = 0
    (0..sizes.length).each do |x|
      fsizes = "#{sizes[@numi]}x#{sizes[@numi]}"
      fname = "apple-touch-icon-#{fsizes}.png"
      fname2 = "apple-touch-icon-#{fsizes}-precomposed.png"
      path = "apple_images/"
      temp.resize_to_fill(sizes[@numi].to_i, sizes[@numi].to_i).write(path + "#{fname}")
      temp.resize_to_fill(sizes[@numi].to_i, sizes[@numi].to_i).write(path + "#{fname2}")
      if @numi < sizes.length - 1
        @numi += 1
      end
    end

  end
end
