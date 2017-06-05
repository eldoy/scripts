# alias rraa="$C server 4000 lib,config **/*.{rb,ru,yml}"

def server(args)
  port, dir, pattern, e = args
  begin
    system(%{bundle exec rerun --dir #{dir} --pattern '#{pattern}' -- puma -e #{e || 'development'} --port=#{port} -R config.ru})
  rescue
    puts "Shutting down..."; exit(0)
  end
end

def testrun(args)
  dir, pattern, e = args
  puts "ENVIRONMENT: #{e}"
  begin
    system(%{bundle exec rerun --dir #{dir},test --pattern '#{pattern}' -- RACK_ENV=#{e || 'development'} ruby test/run.rb})
  rescue
    puts "Shutting down..."; exit(0)
  end
end

# Kill the process running at port. Usage kp <port>
def kp(args)
  args.each do |port|
    r = `lsof -i tcp:#{port}`
    r.split("\n").each do |l|
      next if l =~ /^COMMAND/
      l =~ /[A-z]+\s+(\d{1,10})/
      pid = $1
      `kill -9 #{pid}` if pid
    end
  end
end
