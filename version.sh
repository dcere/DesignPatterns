# Description:
#   Updates files version
#
# Synopsis:
#   version.sh <mode> <previous> <next>
#
# Arguments:
#   - Mode: Running mode
#     - test: testing mode
#     - real: no testing 
#   - Previous: Version from which files will be updated
#   - Next: Version to which files will be updated
#
# Examples:
# _$: version.sh test 2 3
# _$: version.sh real 3 6
#

if [ $# -ne 3 ]
then
   echo "Usage: $0 <mode> <previous> <next>"
   exit 1
fi

if [ $1 = "test" ]
then
   rename -n "s/$2\.rb/$3\.rb/" *.rb
fi

if [ $1 = "real" ]
then
   rename -v "s/$2\.rb/$3\.rb/" *.rb
fi
