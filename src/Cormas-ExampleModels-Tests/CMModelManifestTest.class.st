Class {
	#name : 'CMModelManifestTest',
	#superclass : 'TestCase',
	#instVars : [
		'manifests'
	],
	#category : 'Cormas-ExampleModels-Tests',
	#package : 'Cormas-ExampleModels-Tests'
}

{ #category : 'running' }
CMModelManifestTest >> setUp [

	super setUp.
	manifests := CMModelManifest allSubclasses.
]

{ #category : 'tests' }
CMModelManifestTest >> testAllManifestsCanBeLoadedAndUnloaded [

	manifests do: [ :manifest |
		manifest load.
		self assert: manifest isLoaded.
		manifest delete.
		self deny: manifest isLoaded ]
]

{ #category : 'tests' }
CMModelManifestTest >> testAllManifestsHaveBaselineName [

	manifests do: [ :manifest |
		self assert: manifest baselineName isNotEmpty ]
]

{ #category : 'tests' }
CMModelManifestTest >> testAllManifestsHaveDescription [

	manifests do: [ :manifest |
		self assert: manifest aboutThisModel isNotEmpty ]
]

{ #category : 'tests' }
CMModelManifestTest >> testAllManifestsHaveGithubRepositoryName [

	manifests do: [ :manifest |
		self assert: manifest githubRepositoryName isNotEmpty ]
]

{ #category : 'tests' }
CMModelManifestTest >> testAllManifestsHaveModelName [

	manifests do: [ :manifest |
		self assert: manifest modelName isNotEmpty ]
]

{ #category : 'tests' }
CMModelManifestTest >> testAllManifestsHaveScreenshot [

	manifests do: [ :manifest |
		self assert: manifest screenshot isForm ]
]
