# S-BPM VM

This is a process virtual machine for S-BPM processes.

The application is being implemented for my master thesis at the FH Joanneum
Graz. For the master thesis please contact me at michaelvalentin.klammer@edu.fh-joanneum.at.

## Instalation

~~~bash
git clone https://github.com/klmmmv/sbpmvm.git
cd sbpmvm
mix deps.get
mix test
cd apps/sbpminterface
cd assets
npm install
cd ..
mix phx.server
~~~

You can now open a browser and go to localhost:4000

## Structure

This is an Elixir umbrella app which consists of three sub apps:

- sbpmcompiler:
    This is the runtime of the S-BPM processes. The can be instantiated through 
    this application.

- sbpminterface:
    This is a phoenix web application. It acts as a admin and user interface
    for the process execution and monitoring.
    You will be able to model and instantiate process models via this web app.

- sbpmvalidator:
    This (yet to be implemented) application validates a model to be handed
    over to the sbpmcompiler.


