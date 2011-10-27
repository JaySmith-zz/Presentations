Demo 1 Script


So in this solution to the deployment story we have automated our deployment using MS Build.

How many of you have automated your build either for continous integration or for deployment purposes?

This solution is one used by a several teams and it is effective, the draw backs are that you have to 
	maintain a complete copy of the Web.config file for each environment you want to deploy to.
	
Let's take a look at the web.config files.

As you can see our main web.config file has a lot of settings as we would expect, as well as a applicationSettings
	section where we specify some application specific settings.  These are the ones we want to change for
	the different environments.

Lets take a look at the other config files....

Now that we see we have a seperate file for each environment lets look at the ms build script.

The ms build script takes care of the heavy lifting of doing a clean build of our code, we also 
	use the asp precompile to minimize the performance hit of JIT compiling it when we deploy.
	
The build script then removes all config files and then copies the correct one to the deployment
	directory and names it web.config.
	
We use a cmd file to kick of the build script with the coorect parameters.  The makes deployment
	 to different environment much quicker and easier.
	 
A short side note, a colleage of mine, Devlin Liles, wrote a great blog post on how to Execute
	CMD files from within Visual Studio and have the output directed to your output window.
	I have set that up and love, it.  You can find that article on 
	http://devlinliles.com/post/Batch-File-and-Command-File-running-in-Visual-Studio.aspx
	
So lets execute the command file to deploy to test and look at the results.  Taking a look
	at our web.config file we see that we got the correct file, and settings.
	
There are some obvious problems here, we are maintaining a complete seperate file for each 
	environment we want to deploy to.  It can be easy to have errors introduced in the configuration.

