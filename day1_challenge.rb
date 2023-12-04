puts "Paste caliberation document as standard input (cmd or Std input in UI)"
$/ = "END"  
caliberation_doc = STDIN.gets

def numerics_from(calib_line)
   calib_line.scan(/\d/).join('')
end

def calib_suffix_for(calib_num)
    calib_num.length > 1 ? calib_num[-1, 1] : calib_num[0]
end

caliberation = 0
caliberation_doc.split("\n").each do |corrupted_calib|
    calib_line_num = numerics_from(corrupted_calib)
    line_caliberation = calib_line_num[0] + calib_suffix_for(calib_line_num)
    caliberation += line_caliberation.to_i
end

puts "\n\nHere you go lazy Elves!! go run with caliberation '#{caliberation}' and make it snow !!"
