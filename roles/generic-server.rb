name "generic-server"
description "Generic server"
run_list "recipe[utils]",  "recipe[logcheck]", "recipe[aide]", "recipe[monit]" 
#run_list recipe[fail2ban]", 
