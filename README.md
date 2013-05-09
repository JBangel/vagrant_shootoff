GOALS
=====
After running `vagrant up`, you should get a result on the following URLs:

* [http://192.168.10.100:8080/sample/](): A simple Java/Tomcat app.  
* [http://192.168.10.100:5000](): A simple Python/Flask app.  

NOTES
=====
* This VM is set to a private network. It's IP address is 192.168.10.100.  
* Tomcat's default port number is 8080.  
* Flask's (Python) default port number is 5000.  

TODO
====
* Install the following from apt-get:  
    * tomcat7  
    * python-virtualenv  
    * vim  
* Install `/vagrant/java_foo/sample.war` in `/var/lib/tomcat7/webapps/`
* Install all the requirements for the Flask app.  
    * `bin/pip install -r Requirements.txt`  
    * Working directory `/vagrant/python_foo`  
* Create a new group, `operations`.  
* Add two new users (Josh, Adam)  
    * Both passwords set to `Password123`  
    * Add them to the `operations` group.  
    * A new home directory for each, containing:  
        * A copy of `Welcome.txt` from the template `/vagrant/Welcome_template.txt` with their name included.  
        * A `develop` directory.  
* Flask set to run on boot  
    * Flask should use Upstart.  
      * `bin/python app/routes.py`
      * Working directory `/vagrant/python_foo`
      * Must install `Requirements.txt` first
