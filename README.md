# SusiDateTime - Snips/Rhasspy Skill

Simple skill for Snips or Rhasspy to make the assistant tell 
the current date and time.
The skill is written in Julia with the HermesMQTT framework.

### Julia

This skill is (like the entire SnipsHermesQnD framework) written in the
modern programming language Julia (because Julia is faster
then Python and coding is much much easier and much more straight forward).
However "Pythonians" often need some time to get familiar with Julia.

If you are ready for the step forward, start here: https://julialang.org/

Learn more about writing skillls in Julia with HermesMQTT.jl here: 
 [![](https://img.shields.io/badge/docs-latest-blue.svg)](https://andreasdominik.github.io/HermesMQTT.jl/dev)


## Installation

The skill can be installed from within the Julia REPL with the following
commands, if the HermesMQTT.jl framework is already installed 
and configured:

```julia
using HermesMQTT

install("SusiWeekly")
```

If the Rhasspy server is running (recommended) the installer will
install the skill on the local machine and upload intents and slots
to the Rhasspy server (locally or remote in a server-satellite setup).

## Usage

The skill comes with the two intents `Susi:TellTime` and `Susi:TellDate` 
in profils `en` and `de`.
After installation - *and re-training of the Rhasspy server* - the 
assistant should be able to answer to commands like     
*What time is it?*,    
*What is the date today?* or   
*tell me the date, please*.

Intent definitions for other languages can be added by writing the respective 
sentences.ini files.
