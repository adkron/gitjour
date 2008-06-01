class SystemCaller
	def self.start_git_daemon(port, path)
		system "git-daemon --verbose --export-all --port=#{port} --base-path=#{path} --base-path-relaxed"
	end
	
	def self.clone(host, port, dir)
		system "git clone git://#{host}:#{port}/ #{dir}/"
	end
	
	def self.remote(dir, host, port)
    system "git remote add #{dir} git://#{service.host}:#{service.port}/"
	end
end