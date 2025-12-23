Class {
	#name : 'BaselineOfImplementorsSorter',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfImplementorsSorter',
	#package : 'BaselineOfImplementorsSorter'
}

{ #category : 'baselines' }
BaselineOfImplementorsSorter >> baseline: spec [

	<baseline>
	spec for: #common do: [
			spec package: 'Implementors-Sorter'.
			spec package: 'Implementors-Sorter-Tests' with: [ spec requires: #( 'Implementors-Sorter' ) ]].
]
