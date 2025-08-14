Class {
	#name : 'BaselineOfCormasExampleModels',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfCormasExampleModels',
	#package : 'BaselineOfCormasExampleModels'
}

{ #category : 'baselines' }
BaselineOfCormasExampleModels >> baseline: spec [

	<baseline>
	spec for: #common do: [
		spec
			package: 'Cormas-ExampleModels';
		
			package: 'Cormas-ExampleModels-Tests'
			with: [ spec requires: #('Cormas-ExampleModels') ].
			
		spec
			group: 'Tests' with: #('Cormas-ExampleModels-Tests');
			group: 'default' with: #('Cormas-ExampleModels') ].

]
