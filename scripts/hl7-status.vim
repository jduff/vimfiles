" From http://www.thebitguru.com/blog/view/257-Editing%20HL7%20Messages%20in%20VIM

function! SetHL7StatusLine()
  set statusline=%<%f\ (HL7:\ %{HL7SegmentInfo()})\ %h%m%r%=\ %-14.(%l,%c%V%)\ %P
endfunction
" This function adds the segment name and field number to the status line.
function! HL7SegmentInfo()
  let line=getline(".")
  let pieces=split(line,"|")
  let cursorAt = col(".")
  if len(pieces) == 0
    return "No Segment"
  elseif (len(pieces) == 1) || (cursorAt <= strlen(pieces[0]))
    if strlen(pieces[0]) > 3
      return "Invalid segment?"
    else
      return pieces[0]
    endif
  endif
  let seg=pieces[0] . "-"
  let position=strlen(pieces[0])
  let segNum=0
  for index in range(1, len(pieces) - 1)
    let segNum += 1
    let position += 1
    let piece = pieces[index]
    if cursorAt <= (position + strlen(piece))
      return seg . segNum
    endif
    let position += strlen(piece)
  endfor
  " If the last piece was the separator (|) then VIM doesn't treat that
  " as a separate piece so we have to account for this special case.
  if strpart(line, strlen(line)-1, 1) == "|"
    let segNum += 1
  endif
  return seg . segNum
endfunction

" Invoke the script
call SetHL7StatusLine()
