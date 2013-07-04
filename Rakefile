
namespace :test do
	task :build do	
		system("xctool -project Peeler.xcodeproj -scheme Peeler build")
	end
end

task :test => ['test:build']
