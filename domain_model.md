# User Stories to Domain Model

## Scenario

### 1.
As a person,
So that I can use a bike,
I'd like a docking station to release a bike.

### 2.
As a person,
So that I can use a good bike,
I'd like to see if a bike is working

## Nouns in User Stories
- person
- bike
- docking station

## Verbs in User Stories
- release bike
- working

##  Functional representation of that story

| Objects        | Messages     |
|----------------|--------------|
| Person         |              |
| Bike           | working?     |
| Docking_Station | release_bike |

## How our Objects will use Messages to communicate with one another

Bike            <-- working?      --> true/false

Docking_Station <-- release_bike  --> bike
