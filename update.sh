# Description:
#   Updates files version
#
# Synopsis:
#   version.sh <mode> <chapter> <previous> <next>
#
# Arguments:
#   - Mode: Running mode
#     - test: testing mode
#     - real: no testing 
#   - Previous: Version from which files will be updated
#   - Next: Version to which files will be updated
#
# Examples:
# _$: update.sh 13 2 3
# _$: update.sh 23 3 6
#

if [ $# -ne 3 ]
then
   echo "Usage: $0 <chapter> <previous> <next>"
   exit 1
fi

path=`pwd`
cp ./chapter$1/*$2.rb ./
./version.sh real $2 $3
mv *$3.rb $path/chapter$1
