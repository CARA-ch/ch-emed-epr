# Workflow overview of CH-EMED

## MTP

A medication treatment plan (MTP) is an entry that describes the introduction of a medication into the patient's treatment plan.
It contains information about the medication and dosage instructions , and may contain start and end dates.
All actors should consider the patient is taking that medication as long as the MTP entry is active and the current time is between the start and end time.

An MTP entry can be in the following status: `active`, `suspended`, `cancelled` or `refused`.
In the state `active`, the 
In the states `suspended`, `cancelled` or `refused`, the patient should not be taking the medication.
The state `suspended` is reversible to `active` with the publication of a PADV OK entry.
The state `cancelled` indicates the treatment has been stopped, the state `refused` indicates a healthcare professional has refused this treatment because 
States `cancelled` and `refused` are definitive.

## PRE

A prescription (PRE) is an entry that describes a prescription (or ordinance) that a doctor (or any authorized healthcare professional) makes.

A PRE entry can be in the following states: 

## DIS

A dispense (DIS) is an entry that describes an act of dispensing one or more medications to a patient.
It's usually done by a pharmacist and may occasionnaly be done by another healthcare professional.
They can be for a prescribed treatment or at the patient's request (over-the-counter, OTC).
A dispense entry has no status, it's always considered `active`. Only PADV COMMENTs can apply to it.

## PADV