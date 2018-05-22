# alias rraa="$C server 4000 lib,config **/*.{rb,ru,yml}"
def server(args)
  port, dir, pattern, e = args
  begin
    if File.file?('./config/puma.rb')
      system(%{bundle exec rerun --no-notify --dir #{dir} --pattern '#{pattern}' -- pumactl -F config/puma.rb start})
    else
      system(%{bundle exec rerun --no-notify --dir #{dir} --pattern '#{pattern}' -- puma -e #{e || 'development'} --port=#{port} -R config.ru})
    end
  rescue
    puts "Shutting down..."; exit(0)
  end
end

def testrun(args)
  dir, pattern, e = args
  puts "ENVIRONMENT: #{e}"
  begin
    system(%{bundle exec rerun --no-notify --dir #{dir},test --pattern '#{pattern}' -- RACK_ENV=#{e || 'development'} ruby test/run.rb})
  rescue
    puts "Shutting down..."; exit(0)
  end
end
