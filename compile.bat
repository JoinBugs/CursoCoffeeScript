:header
	@Echo OFF
	Color A
	Title Compile
:init
	IF NOT EXIST js MD js
:start
	FOR %%I IN (*.coffee) Do Coffee -c -o js %%I
:end
	Echo Compiled Completed.
	Pause>nul