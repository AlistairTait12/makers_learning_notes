# Kick Off
- Do not commit to master 
- Configure repo to prevent this happening
- Branch Protection rules

> A lot of these Java-related terms are probably pretty unfamiliar to you! I suggest you stop here for a moment and take a moment to write one-sentence definitions of, at minimum, the:  
- Java Development Kit (JDK)
  - A collection of tools to assist in the development of a Java application
- Java Compiler
  - A compiler that converts your **source code** into **bytecode** that will then be converted to **machine code** when executed 
- Java Virtual Machine (JVM)
  - A virtual machine that allows a computer to run code that has been compiled to Java bytecode, either originally written in Java or in another language that has been compiled to Java bytecode. 
- Java Runtime Environment
  - Combines code created using the JDK and then creates an instance of a JVM that executes the program
- The 'heap'
  - An area of memory allocated to store objects instantiated by applications running on the JVM
- Garbage collection
  - Scouts memory for unused objects and deletes said objects to free up memory

> Why does anyone bother with static typing? Doesn't it just tie your hands?  
>   
> Do some research and find out.  

### There are benefits of Dynamically typed languages and Statically typed languages
#### Benefits of statically typed languages
- Catching of errors earlier
- Performance optimisation
- You are specifically stating which value type you expect so that other devs working on your project don't have to guess this (makes variable naming less ambiguous?)