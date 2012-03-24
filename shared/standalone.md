## Standalone applications 

These applications are executed as normal system processes rather than deployed through an application or web server. 
These are often background or asynchronous jobs that work on processing items off a queue, for example. 

The standalone Ruby applications will support such worker libraries as **resque** or **delayed_jobs** 

- Ability to run rake tasks directly from the console
- Requires 0.3.16.beta.5 or higher.
