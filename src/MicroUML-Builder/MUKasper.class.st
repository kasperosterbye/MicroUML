Class {
	#name : 'MUKasper',
	#superclass : 'Object',
	#category : 'MicroUML-Builder',
	#package : 'MicroUML-Builder'
}

{ #category : 'examples' }
MUKasper class >> example2Microdown [

	^ (MicrodownPresenter new document: '
Example of novel and comic derrived from anime

```pharoscript
MU
===
#AbstractSeries // ''the base class of story published in series.''
	- #name @ String // ''the title of the story''
	- #numEpisodes @ Integer % #private // ''the number of episodes in the story''
	> #findByName % #abstract // ''search by name''
=== 
#NovelSeries 
	--|> #AbstractSeries
	- #author @ String 
	- #Publisher @ String 
=== 
#ComicSeries 
	--|> #AbstractSeries 
	- #toonAuthor @ String
	- #storyAuthor @ String % #private
	> #print~{} 
=== 
#AnimeSeries
	--|> #AbstractSeries 
	- #director @ String 
	- #animators @ String % #private
	- #voiceActors @ String % #private
	> #play~{} 
	<>--#ComicSeries 
	    @ (nil -> ''based on'') 
=== 
#AnimeSeries	 -- #NovelSeries
	    @ (nil -> ''original'') 
extent: 600 @ 400
```
')  open
]

{ #category : 'examples' }
MUKasper class >> example30Microdown [

	^ (MicrodownPresenter new document: '
Example of novel and comic derrived from anime

```pharoscript
MU
===
#''AbstractSeries: Joe'' // ''the base class of story published in series.''
	- #name @ String // ''the title of the story''
	- #numEpisodes @ Integer % #private // ''the number of episodes in the story''

extent: 600 @ 400
```
')  open
]

{ #category : 'examples' }
MUKasper class >> example31Microdown [

	^ (MicrodownPresenter new document: '
Example of novel and comic derrived from anime

```pharoscript
MU
===
#''AbstractSeries: Joe'' // ''the base class of story published in series.''
	- #name @ String // ''the title of the story''
	- #numEpisodes @ Integer % #private // ''the number of episodes in the story''
	> #findByName % #abstract // ''search by name''

extent: 600 @ 400
```
')  open
]

{ #category : 'examples' }
MUKasper class >> example32Microdown [

	^ (MicrodownPresenter new document: '
Example of novel and comic derrived from anime

```pharoscript
MU
===
#''AbstractSeries: Joe'' // ''the base class of story published in series.''
	> #findByName % #abstract // ''search by name''

extent: 600 @ 400
```
')  open
]

{ #category : 'examples' }
MUKasper class >> example34Microdown [

	^ (MicrodownPresenter new document: '
Example of novel and comic derrived from anime

```pharoscript
MU
===
#''AbstractSeries: Joe'' // ''the base class of story published in series.''
	- String empty // ''the title of the story''
	- #numEpisodes @ Integer % #private // ''the number of episodes in the story''

extent: 600 @ 400
```
')  open
]

{ #category : 'examples' }
MUKasper class >> example35Microdown [

	^ (MicrodownPresenter new document: '
Example of novel and comic derrived from anime

```pharoscript
MU
===
#''AbstractSeries: Joe'' 

extent: 600 @ 400
```
')  open
]

{ #category : 'examples' }
MUKasper class >> example35Roassal [

	^ self roassalFrom: (
MU
===
#'AbstractSeries: Joe' 

)
]

{ #category : 'examples' }
MUKasper class >> example36Roassal [

	^ self roassalFrom: (
MU 
===
#AbstractSeries // 'the base class of story published in series.' + [ :ast | ast microUMLSource inspect ]
	- #name @ String // 'the title of the story'
	- #numEpisodes @ Integer % #private // 'the number of episodes in the story'
	> #findByName % #abstract // 'search by name' + [ :ast | ast microUMLSource inspect ]
=== 
'NovelSeries' 
	--|> #AbstractSeries
	- #author @ String 
	- #publisher @ String 
	> #read~{#Joe}
=== 
#ComicSeries 
	--|> #AbstractSeries 
	- #toonAuthor @ String
	- #storyAuthor @ String % #private
	> #print~{} 
=== 
#AnimeSeries
	--|> #AbstractSeries 
	- #director @ String 
	- #animators @ String % #private
	- #voiceActors @ String % #private
	> #play~{} 
	<>--#ComicSeries 
	    @ (nil -> 'based on') 
=== 
#AnimeSeries	 -- #NovelSeries
	    @ (nil -> 'original') 
)
]

{ #category : 'examples' }
MUKasper class >> exampleSerie [

	| uml builder |
	uml := MicroUMLAstBuilder exampleSerie.
	builder := MicroUMLRoassalBuilder new
		           classDiagramNode: uml diagram;
		           build.
	builder
		@ RSCanvasController;
		open
]

{ #category : 'examples' }
MUKasper class >> roassalFrom: uml [

	| builder |
	builder := MicroUMLRoassalBuilder new
		           classDiagramNode: uml diagram;
		           build.
	builder
		@ RSCanvasController;
		open
]
