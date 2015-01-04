##!/usr/local/bin/csh
\rm -rf run_SA_dir
mkdir run_SA_dir
cp workFiles/make_run_dir.csh run_SA_dir/.
cd run_SA_dir

ln -s ../.design
ln -s ../PLU
ln -s ../CONDOR
ln -s ../WORK
ln -s ../QTDB
ln -s ../PDB
ln -s ../tmp
ln -s ../cellList
ln -s ../dbFiles
ln -s ../xc_work
ln -s ../AxisWork
ln -s ../INCA_libs

cp ../../scripts/rundir/* .

echo "To run Palladium use: irun -R -xedebug -gui -64 -input run_inputs.tcl"
