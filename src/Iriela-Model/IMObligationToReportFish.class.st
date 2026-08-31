Class {
	#name : 'IMObligationToReportFish',
	#superclass : 'CMNorm',
	#category : 'Iriela-Model',
	#package : 'Iriela-Model'
}

{ #category : 'api - rules' }
IMObligationToReportFish >> action [
	"Return the method that should be observed. This is the action of the cormas model"
	"TODO: should be the action of report fish"
	^ [].
]

{ #category : 'api - rules' }
IMObligationToReportFish >> condition: agent [
	"This is the condition that determines if the rule should be applied or not. This method should return a boolean."
	"TODO: should be the condition that he just got a fish"
	^ []
]

{ #category : 'api - rules' }
IMObligationToReportFish >> consequence: agent [
	"Return the method that is executed if the rule is broken"

	^ [  ]
]
