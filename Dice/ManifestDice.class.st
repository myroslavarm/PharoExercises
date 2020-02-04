"
I store metadata for this package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestDice,
	#superclass : #PackageManifest,
	#category : #'Dice-Manifest'
}

{ #category : #'code-critics' }
ManifestDice class >> ruleRBCascadedNextPutAllsRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#Die #printOn: #false)) #'2020-02-04T13:08:48.669029+02:00') )
]

{ #category : #'code-critics' }
ManifestDice class >> ruleReNoPrintStringInPrintOnRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#Die #printOn: #false)) #'2020-02-04T13:08:46.473029+02:00') )
]
