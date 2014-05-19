What is this
------------

Used to do a quick intro into using chef-solo within a docker container.

How do I use this?
------------------

    $ docker build -t chef-solo .
    $ docker run -it chef-solo bash

    # chef-solo

How do I make simple changes while learning chef ?
--------------------------------------------------

You can just edit the `/chef/cookbooks/helloworld/recipes/default.rb` file 
for now, while inside the docker container.

Where are the Key files?
------------------------

* /etc/chef/solo.rb
* /chef/cookbooks/helloworld/recipes/default.rb
* /chef/node.json

Did it work?
------------

    # chef-solo
    Starting Chef Client, version 11.12.4
    Compiling Cookbooks...
    Converging 1 resources
    Recipe: helloworld::default
      * file[/tmp/helloworld.txt] action create
        - create new file /tmp/helloworld.txt
        - update content in file /tmp/helloworld.txt from none to dffd60
            --- /tmp/helloworld.txt	2014-05-19 14:31:41.663134765 +0000
            +++ /tmp/.helloworld.txt20140519-10-1prltu5	2014-05-19 14:31:41.663134765 +0000
            @@ -1 +1,2 @@
            +Hello, World!
        - change mode from '' to '0544'
        - change owner from '' to 'root'
        - change group from '' to 'root'
      * package[hello] action install
        - install version 2.8-4 of package hello
     Running handlers:
     Running handlers complete
     Chef Client finished, 1/1 resources updated in 1.442621537 seconds
