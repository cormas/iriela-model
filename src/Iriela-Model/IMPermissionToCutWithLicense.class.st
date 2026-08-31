Class {
	#name : 'IMPermissionToCutWithLicense',
	#superclass : 'CMNorm',
	#category : 'Iriela-Model',
	#package : 'Iriela-Model'
}

{ #category : 'api - rules' }
IMPermissionToCutWithLicense >> action [
	"Return the method that should be observed. This is the action of the cormas model"

	"TODO: should be the cut action"
	^ [ ]
]

{ #category : 'api - rules' }
IMPermissionToCutWithLicense >> condition: agent [
	"This is the condition that determines if the rule should be applied or not. This method should return a boolean."

	^ true.
]

{ #category : 'api - rules' }
IMPermissionToCutWithLicense >> consequence: agent [
	"Return the method that is executed if the rule is broken"	
	^ [  ]
]
