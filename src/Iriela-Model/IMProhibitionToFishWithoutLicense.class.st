Class {
	#name : 'IMProhibitionToFishWithoutLicense',
	#superclass : 'CMNorm',
	#category : 'Iriela-Model',
	#package : 'Iriela-Model'
}

{ #category : 'api - rules' }
IMProhibitionToFishWithoutLicense >> action [
	"Return the method that should be observed. This is the action of the cormas model"

	^ [ self agent fish ]
]

{ #category : 'api - rules' }
IMProhibitionToFishWithoutLicense >> condition: agent [
	"This is the condition that determines if the rule should be applied or not. This method should return a boolean."

	^ (self agent hasLicense) not.
]

{ #category : 'api - rules' }
IMProhibitionToFishWithoutLicense >> consequence: agent [
	"Return the method that is executed if the rule is broken"

	^ []
]
