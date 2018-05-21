# sidekiq Basic 

To run the code please run following commnads

bundle install --path .bundle 

To run the sidekiq job you full fill three requirements 
1. Sidekiq Client API 
2. Sidekiq Server
3. Redis Server 
 
sudo apt-get install redis-server 
sudo service redis-server start 

Open two terminal to see the magic of sidekiq process 

#Terminal 1 

First up and run the sidekiq

bundle exec sidekiq -r ./worker.rb

#Terminal 2 

Open irb console 

bundle exec irb -r ./worker.rb

>> OurWorker.perform_async('hard')

By the you can see the log on the sidekiq running terminal which is Terminal 1 





