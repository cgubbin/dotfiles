function la --wraps='exa $EXA_STANDARD_OPTIONS $EXA_LA_OPTIONS' --wraps='exa --color=always --icons --group-directories-first --all' --description 'alias la exa --color=always --icons --group-directories-first --all'
  exa --color=always --icons --group-directories-first --all $argv; 
end
