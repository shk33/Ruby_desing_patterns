Desing Patterns implement in Ruby
====================

12 most common design patterns implemented in Ruby.
The book reference is "Design Patterns: Elements of Reusable Object-Oriented Software"  by Ralph Johnson, John Vlissides, Richard Helm, and Erich Gamma.
The code is taken from the Tutplus course titled "Design Patterns in Ruby"

==Template Method Pattern
"Define the skeleton of an algorithm in an operation, deferring some steps to subclasses. Template method lets subclasses redifine certain steps of an algorithm without changing the algorithm's structure"

Strategy Pattern
"Define a family of algorithms, encapsulate each one, and make them interchangeable. Strategy lets the algorithm vary independently from clients that use it"

Observer Pattern
"Define a one-to-many dependency betwee objects so that when one object changes state, all its dependencies are notified and updated automatically "

Iterator Pattern
"In object-oriented programming, the iterator pattern is a design pattern in which an iterator is used to traverse a container and access the container's elements. The iterator pattern decouples algorithms from containers; in some cases, algorithms are necessarily container-specific and thus cannot be decoupled."

Command Pattern
"Encapsulate a request as an object, thereby letting you parameterize clients with different requests, queue or log requests, and support undoable operations"

Factory Method Pattern
"Define an interface for creating an object, but let subclasses decide wich class to instantiate. Factory method lets a class defer instantiation to subclasses"

Abstract Factory Pattern
"Provide an interface for creating families of related or dependent objects without specifiyin their concrete classes"

Singleton Pattern
The singleton pattern is a design pattern that restricts the instantiation of a class to one object. This is useful when exactly one object is needed to coordinate actions across the system. The concept is sometimes generalized to systems that operate more efficiently when only one object exists, or that restrict the instantiation to a certain number of objects.