# Claude Code

Provides an Ubuntu 24.04 machine for sandboxing [Claude Code](https://claude.com/product/claude-code) in a virtual machine. Sandbox like its 2017 again.

Stolen from [Emil Burzo](https://blog.emilburzo.com/2026/01/running-claude-code-dangerously-safely/), except he seems to use one VM per project and I just want a single VM for all local LLM chatbot tomfoolery.

The `projects/` directory is made available in the VM at `/agent-workspace`. Copy (or `git clone`) your project into that directory, fire up the VM, let Claude do whatever it wants, shutdown the VM, and accept the file modifications however you want (copy the files back to their original home, or `git commit` and `git push`, or what have you). Anthropic doesn't get to touch your host machine.
