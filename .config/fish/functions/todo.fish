function todo --wraps=ag\ --color-line-number\ \'1\;36\'\ --color-path\ \'1\;36\'\ --print-long-lines\ --silent\ \'\(\(//\|\#\|\<!--\|\;\|/\\\*\|^\)\\s\*\(TODO\|FIXME\|FIX\|BUG\|UGLY\|HACK\|NOTE\|IDEA\|REVIEW\|DEBUG\|OPTIMIZE\)\|^\\s\*-\ \\\[\ \\\]\)\' --description alias\ todo\ ag\ --color-line-number\ \'1\;36\'\ --color-path\ \'1\;36\'\ --print-long-lines\ --silent\ \'\(\(//\|\#\|\<!--\|\;\|/\\\*\|^\)\\s\*\(TODO\|FIXME\|FIX\|BUG\|UGLY\|HACK\|NOTE\|IDEA\|REVIEW\|DEBUG\|OPTIMIZE\)\|^\\s\*-\ \\\[\ \\\]\)\'
  ag --color-line-number '1;36' --color-path '1;36' --print-long-lines --silent '((//|#|<!--|;|/\*|^)\s*(TODO|FIXME|FIX|BUG|UGLY|HACK|NOTE|IDEA|REVIEW|DEBUG|OPTIMIZE)|^\s*- \[ \])' $argv
        
end
