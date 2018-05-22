# Convert images

# Options: filename width
def img(args)

  # Get filename and width
  f, w = args

  # Get basename and extension
  b, x = f.split('.')

  # Retina and normal file names
  r = "#{b}_web@2x.#{x}"
  n = "#{b}_web.#{x}"

  # Create retina image
  puts "Create retina image #{}"
  cmd("convert #{f} -resize #{w}x -density 72 -quality 100 #{r}", [])

  # Compress retina image
  puts "Compress retina image"
  cmd("mogrify -strip -interlace Plane -sampling-factor 4:2:0 -quality 75% #{r}", [])

  # Create normal image
  puts "Create normal image"
  cmd("convert #{f} -resize #{w.to_i / 2}x -density 72 -quality 100 #{n}", [])

  # Compress normal image
  puts "Compress normal image"
  cmd("mogrify -strip -interlace Plane -sampling-factor 4:2:0 -quality 75% #{n}", [])

  puts "Done.\n"
end
