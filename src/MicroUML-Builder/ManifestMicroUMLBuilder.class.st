"
Please describe the package using the class comment of the included manifest class. The manifest class also includes other additional metadata for the package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : 'ManifestMicroUMLBuilder',
	#superclass : 'PackageManifest',
	#category : 'MicroUML-Builder-Manifest',
	#package : 'MicroUML-Builder',
	#tag : 'Manifest'
}

{ #category : 'code-critics' }
ManifestMicroUMLBuilder class >> ruleCodeCruftLeftInMethodsRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGPackageDefinition #(#'MicroUML-Builder')) #'2026-07-22T10:07:15.492637+02:00') )
]

{ #category : 'code-critics' }
ManifestMicroUMLBuilder class >> ruleLongMethodsRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGPackageDefinition #(#'MicroUML-Builder')) #'2026-07-22T09:28:22.425864+02:00') )
]

{ #category : 'code-critics' }
ManifestMicroUMLBuilder class >> ruleReCyclomaticComplexityRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGMethodDefinition #(#MicroUMLRoassalBuilder #basicNewClassBoxFor: #false)) #'2026-07-22T10:17:41.529207+02:00') )
]

{ #category : 'code-critics' }
ManifestMicroUMLBuilder class >> ruleTempsReadBeforeWrittenRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGMethodDefinition #(#MicroUMLRoassalBuilder #basicNewClassBoxFor: #false)) #'2026-07-22T11:36:37.215236+02:00') )
]

{ #category : 'code-critics' }
ManifestMicroUMLBuilder class >> ruleThreeElementPointRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGMethodDefinition #(#'MicroUMLAstBuilder class' #exampleSerie #true)) #'2026-07-09T15:25:17.240565+03:00') #(#(#RGMethodDefinition #(#'MicroUMLAstBuilder class' #exampleSerie2 #true)) #'2026-07-09T15:25:26.141484+03:00') #(#(#RGPackageDefinition #(#'MicroUML-Builder')) #'2026-07-23T14:10:56.033234+02:00') )
]
