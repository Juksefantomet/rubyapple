require 'rubygems'
require 'rmagick'
require 'fileutils'

module Rubyapple
class Main
  def initialize
    args = ARGV[0..-1]

    unless !args[1]
      image = Magick::Image.read(args[1])[0].strip!
    end

    case
    when args[0] == 'help'
      puts "initializing.. help"
      puts ""
      puts "rubyapple gen-apple-touch imagename.png"
      puts " -- outputs apple-touch-icon-* files to apple_images/*"
      puts ""
      puts "rubyapple gen-drawables imagename.png"
      puts " -- outputs drawable-*         files to drawable_images/*"
      puts ""
      puts "rubyapple gen-all imagename.png"
      puts " -- outputs all types         files to *_images/*"
      puts ""
    when args[0] == 'gen-apple-touch'
      puts "initializing.. gen-apple-touch"
      generate_apples(image)
    when args[0] == 'gen-drawables'
      puts "initializing.. gen-drawables"
      generate_drawables(image)
    when args[0] == 'gen-all'
      puts "initializing.. generation of all types.."
      generate_apples(image)
      generate_drawables(image)
    when args[0] == 'version' || args[0] == '-v'
      puts "Current rubyapple version: #{Rubyapple::VERSION}"
    else
      puts "-"
      puts "did you forget something?"
      puts "-"
      puts "use 'rubyapple help' for more information"
    end

    unless args[0]
      puts "correct syntax:"
      puts " rubyapple type image.png"
      puts "use 'rubyapple help' for more information"
    end

  end

  def generate_apples(img)
    if !File.directory?('apple_images/')
      puts "Creating folder apple_images..."
      create_folder('apple_images')
    end
    # apple-touch-icon-sizes.png
    sizes = [16, 32, 57, 70, 76, 96, 114, 120, 144, 152, 167, 180, 270, 310]

    temp = img

    puts "Generating pictures.. apple-touch-icon-types"
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
    puts "Done!"
  end

  def generate_drawables(img)
    if !File.directory?('drawable_images/')
      puts "Creating folder drawable_images..."
      create_folder('drawable_images')
    end

    temp = img

    path = "drawable_images/"

    puts "Generating pictures.. drawable-types"

    temp.resize_to_fill(36, 36).write(path + "drawable-ldpi-icon.png")
    temp.resize_to_fill(48, 48).write(path + "drawable-mdpi-icon.png")
    temp.resize_to_fill(72, 72).write(path + "drawable-hdpi-icon.png")
    temp.resize_to_fill(96, 96).write(path + "drawable-xhdpi-icon.png")
    temp.resize_to_fill(144, 144).write(path + "drawable-xxhdpi-icon.png")
    temp.resize_to_fill(192, 192).write(path + "drawable-xxxhdpi-icon.png")

    puts "Done!"
  end

  def create_folder(folname)
    FileUtils.mkdir_p(folname)
  end
end
end
