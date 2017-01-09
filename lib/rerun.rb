# alias rraa="$C server 4000 lib,config **/*.{rb,ru,yml}"

def server(args)
  port, dir, pattern, e = args
  system(%{bundle exec rerun --dir #{dir} --pattern '#{pattern}' -- puma -e #{e || 'development'} --port=#{port} -R config.ru})
end

def testrun(args)
  dir, pattern, e = args
  system(%{bundle exec rerun --dir #{dir} --pattern '#{pattern}' -- RACK_ENV=#{e || 'development'} ruby test/run.rb})
end

