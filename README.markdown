This gem provides syslog-style logging for rails applications.

Standard rails log:

    Completed 200 OK in 103ms (Views: 83.7ms | ActiveRecord: 0.0ms)
  
With logjam_formatter, including optional user_id:

    Dec 18 17:36:17 elk rails[13902]: INFO user[10]: Completed 200 OK in 103ms (Views: 83.7ms | ActiveRecord: 0.0ms)
  
## Installation

Gemfile:

    gem 'logjam_formatter'
    
application.rb:

    config.logger.formatter = Logjam::Formatter.new

## User ids

User ids can be logged via a global hash, $user_ids. You can use a before_filter in your application_controller to set it, eg:

    before_filter { |controller| ($user_ids ||= {})[Thread.current] = controller.session[:user_id] || 0 }

This is optional -- if $user_ids is undefined, that part of the log line will be left out.
   
## Log file analysis

Logjam::Formatter was written to work well with [Logjam](http://github.com/alpinegizmo/logjam).
