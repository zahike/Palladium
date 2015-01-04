##!/usr/local/bin/csh
if ($#argv < 1) then 
	echo "Please add directory name"
else 
source scripts/compile/setup
echo "new compilation directory $1"
\rm -rf $1
mkdir $1
cd $1
cp ../scripts/compile/* .
date
source make_SA_model.csh |tee make_SA_model.log
if($?) then 
	echo Error on compilation
	exit 1
endif
source ../scripts/make_run_dir.csh
date  
echo MELLANOX_STAGE_End  
echo "coffee |_P ?"
endif
