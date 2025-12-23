"
I'm a class that sorts the completion list by the number of implementors of each item.
It first obtains the raw list from NoSorter, then reorders it.
"
Class {
	#name : 'ImplementorsSorter',
	#superclass : 'CompletionSorter',
	#category : 'Implementors-Sorter',
	#package : 'Implementors-Sorter'
}

{ #category : 'sorting' }
ImplementorsSorter >> numberOfImplementorsOf: aSelector [

	^ (SystemNavigation default allImplementorsOf: aSelector) size
]

{ #category : 'sorting' }
ImplementorsSorter >> sortCompletionList: anOrderedCollection [

	^ anOrderedCollection sort: [ :a :b |
		(self numberOfImplementorsOf: a contents)
			> (self numberOfImplementorsOf: b contents) ]
]
