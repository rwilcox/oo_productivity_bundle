

tell application "OmniOutliner Professional"
	set theStyle to (first named style of front document whose name is "Checked")
	
	set documentRows to every row of front document
	
	repeat with currentRow in documentRows
		if state of currentRow is checked then
			--		set mine to first name
			set styleList to named styles of styles of currentRow as list
			if styleList contains (theStyle as list) then
				log "did contain"
			else
				add theStyle to end of named styles of style of currentRow
			end if
		end if
	end repeat
end tell