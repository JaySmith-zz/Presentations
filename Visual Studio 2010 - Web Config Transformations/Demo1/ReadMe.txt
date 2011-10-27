Demo 1 Script

So in this solution to the deployment story we have automated our deployment using MS Build.

How many of you have automated your build either for continous integration or for deployment purposes?

This solution is one used by a several teams where I work and it is effective.  It is also a solution you
can use if you haven't gone to Visual Studio 2010 yet.
	
Let's take a look at the web.config files.
	[Open web.config]
	
As you can see our main web.config file has a lot of settings as we would expect.

Lets create an applicationSettings section where we specify some application specific settings.  These are the ones we want to change for the different environments.

	[Add 1 - App Settings to file]

And has you would expect we have to do that to all three files, so lets go ahead and do that.

	[Modify web-test.config]
	[Modify web-production.config]

Ok, so we have 3 seperate config files, so how do we take advantage of this fact? 

If there is a task I am going to be doing all the time I always look for a way to automate it.  In this case publishing our project to the server or staging area is something we are going to be doing a lot, so lets automate that task with MS Build.

What do we normally do in a build?
	Clean the Solution
	Compile the code and make sure it is free of syntax errors
	Publish the code to a test server or stage to be moved to production
	
In this case we also want to make sure the correct web config file gets moved along with the code.

Note this approach also allows you to take advantage of the asp precompile to minimize the performance hit of JIT compiling it when we deploy.

[Open the Deployment.proj file]

We want a build file that mimics what we would have done manually. Let's take a quick over view of the build file.

This build file is set to Deploy as the defaultTarget (line 2), this target has a depencency on the BuildSolution target (line 13).  The build solution is where we are cleaning the solution and compiling (line 45), and taking advantage of the asp precomiler(line 46).

In the Property Group section (line 4) we see that this build will produce a Release build using the Demo1.sln solution.  Everything else looks as you would expect.  The interesting item inthe Property Group is the TargetEnvironment tag (line 10).  This is the tag we have added to allow us which environment we are building for.  We use this in the Deploy target to move the correct config file into the output directory.

When we execute this build file, the Build Solution is going to clean, build, and precompile the project.  Then the Deploy target is going to copy the solution files to the destination directory, remove all web.config files and then copy the config file for the specified target environment and rename it to web.config.

This is all done by executing the build file.  We could do this from the command line and specify the TargetEnvironment variable, or we could automate this by creating a command file that already has the correct command line settings.  Remimber automate common task.
	
[Open Deploy2Test.cmd]
	 
A short side note, a colleage of mine, Devlin Liles, wrote a great blog post on how to Execute
	CMD files from within Visual Studio and have the output directed to your output window.
	I have set that up and love, it.  You can find that article on 
	http://devlinliles.com/post/Batch-File-and-Command-File-running-in-Visual-Studio.aspx
	
So lets execute the command file to deploy to test and look at the results.  Taking a look
	at our web.config file we see that we got the correct file, and settings.
	
	[open web.config]
	
There are some obvious problems here, the biggest is we are maintaining a complete seperate file for each 
	environment we want to deploy to.  It can be easy to have errors introduced in the configuration.

