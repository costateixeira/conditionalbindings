Functional requirements


### Parameterized/Flexible profiles
Some data exchanges are supported by common resources but have many special constraints and cases - Observation and ServiceRequests are used in multiple purposes and for some elements like ServiceRequest.orderDetail, the value sets may need to cover the many different possibilities.

For example:
* If the selected procedure code is for "Sampling", the prescriber can precise in the referral prescription the "type of sampling" he wants.

* If "diabetic education for patients with care path" is selected as procedure, the prescriber will precise the "type of session" and the "type of diabetes education" they want.

The business need is to allow for specialization of value sets without requiring the proliferation of many different profile and their dependency on fast-changing value sets. 
This could take the form of parametrizing bindings in profiles, i.e. make value sets for a given element depend on the actual value of an element in the resource.

<div class="dragon">
<p><b>Important:</b></p>
<p>This seems an aspect principally of business logic - what values are selected by a physician depending on another value. As such, the user interaction aspect cannot be determined only in FHIR - the logic will have to be implemented on the systems, not on the interfaces.</p>
<p>It is however legitimate to consider that the FHIR interfaces could enforce this logic. This is independent of the business logic but serves as a validation logic on the interfaces.</p>
<p>Since the FHIR specification is not the "master" driver for functionality, but a validation layer, this should not be too strict and blocking functionality evolutions.</p>
</div>


<br/>
