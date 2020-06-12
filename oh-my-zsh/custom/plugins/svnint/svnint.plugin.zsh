alias svnadd='svn st | awk '"'"'{if ( $1 == "?") {$1=""; print "\""substr($0,2)"\""}}'"'"' | xargs svn add'
alias svndel='svn st | awk '"'"'{if ( $1 == "!") {$1=""; print "\""substr($0,2)"\""}}'"'"' | xargs svn rm'
alias svndis='find . -iname ".svn" -print0 | xargs -0 rm -r'
alias svnfix='svn commit -m "fix"'
export SVN_EDITOR=vim

function svncom () {
    svn commit -m "$1"
}
