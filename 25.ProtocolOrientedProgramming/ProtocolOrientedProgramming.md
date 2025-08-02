# Protocol Oriented Programming

## Swift - the First POP Language

At WWDC 2015, Apple announced that Swift is the world’s first Protocol-Oriented Programming (POP) language.

## So, what is Protocol-Oriented Programming (POP)?

Protocol-Oriented Programming is a new programming paradigm ushered in by Swift 2.0. In the Protocol-Oriented approach, we start designing our system by defining protocols.

We rely on new concepts:

        - Protocol Extension
        - Protocol Inheritance
        - Protocol Compositions

In Swift, value types are preferred over reference types (which are classes). However, Object-Oriented concepts don’t work well with structs and enums. Because a struct can not inherit from another struct, and an enum can not inherit from another enum.

So, inheritance, which is a fundamental concept of Object-Oriented Programming, can not be applied to value types. But we learned earlier that value types can inherit from protocols.

Therefore, value types are now the preferred type of Protocol-Oriented Programming.

## Start with a Protocol

When designing a software system, we try to identify the elements needed to satisfy the requirements of a given system. We then model the relationships between these elements.

There is two ways to do that.

- Start with a superclass and model its relationships through inheritance
- Start with a protocol and model the relationship as a protocol implementation.

However, Apple tells us:
