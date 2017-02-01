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
