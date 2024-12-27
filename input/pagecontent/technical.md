
### Options
The following options could be considered:

#### Creation of individual profiles
This should be carefully considered for scope of maintenance, especially around:  
1. Maintaining and adding official profiles that may be fast-changing. The maintenance of official profiles may not be compatible with the time to implementation.
2. Maintaining the valuesets on profiles (official or not) - the maintenance of value sets also has its governance process.

#### Parameterized profiles
There is a possibility that comprehensively parameterized profiles could allow this and other conditional dependencies.  
This is currently not available and there is no timeline yet.

#### Additional bindings 
FHIR has a simpler mechanism called "additional bindings" where we can select different bindings for an element, and optionally define contexts for usage of each of these value sets.
This mechanism is described below and there is an example in the [ConditionalReferral profile](StructureDefinition-ConditionalReferral.html#tabs-diff).

The validation is visible in the valid instances [example 1](ServiceRequest-ExampleReferralOK1.html) and [exxample 2](ServiceRequest-ExampleReferralOK2.html), and also in the 
[example](ServiceRequest-ExampleReferralKO.html) that is correctly found [invalid](qa.html) as it uses the wrong value of `ServiceRequest.orderDetail` for the `ServiceRequest.code` value.



### How to define conditional additional bindings

...