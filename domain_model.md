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

### 3.
As a member of the public
So I can return bikes I've hired
I want to dock my bike at the docking station

### 4.
As a member of the public
So I can decide whether to use the docking station
I want to see a bike that has been docked

### 5.
As a member of the public,
So that I am not confused and charged unnecessarily,
I'd like docking stations not to release bikes when there are none available.

### 6.
As a maintainer of the system,
So that I can control the distribution of bikes,
I'd like docking stations not to accept more bikes than their capacity.

### 7.
As a system maintainer,
So that I can plan the distribution of bikes,
I want a docking station to have a default capacity of 20 bikes.

### 8.
 As a system maintainer,
So that busy areas can be served more effectively,
I want to be able to specify a larger capacity when necessary.

## Nouns in User Stories
- person
- bike
- docking station

## Verbs in User Stories
- release bike
- working
- dock

##  Functional representation of that story

| Objects         | Messages                              |
|-----------------|---------------------------------------|
| Person          |                                       |
| Bike            | working?                              |
| Docking_Station | release_bike <br>dock<br>bike         |

## How our Objects will use Messages to communicate with one another

Bike            <-- working?      --> true/false

Docking_Station <-- release_bike  --> bike

Docking_Station <-- dock

Docking_Station <-- bike          -->bike
