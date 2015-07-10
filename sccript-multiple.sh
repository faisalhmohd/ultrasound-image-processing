cd /media/faisal/Data/Thesis/matlab/11/post/sweep_11u/2d
for i in *.mnc;
do
	mnc2nii $i -dual
done

rm *.mnc 
clear


cd /media/faisal/Data/Thesis/matlab/11/post/sweep_11v/2d
for i in *.mnc;
do
	mnc2nii $i -dual
done

rm *.mnc 
clear

cd /media/faisal/Data/Thesis/matlab/11/post/sweep_11w/2d
for i in *.mnc;
do
	mnc2nii $i -dual
done

rm *.mnc 
clear

cd /media/faisal/Data/Thesis/matlab/11/post/sweep_11x/2d
for i in *.mnc;
do
	mnc2nii $i -dual
done

rm *.mnc 
clear

cd /media/faisal/Data/Thesis/matlab/11/pre/sweep_11a/2d
for i in *.mnc;
do
	mnc2nii $i -dual
done

rm *.mnc 
clear

cd /media/faisal/Data/Thesis/matlab/11/pre/sweep_11b/2d
for i in *.mnc;
do
	mnc2nii $i -dual
done

rm *.mnc 
clear

cd /media/faisal/Data/Thesis/matlab/11/pre/sweep_11c/2d
for i in *.mnc;
do
	mnc2nii $i -dual
done

rm *.mnc 
clear

cd /media/faisal/Data/Thesis/matlab/11/pre/sweep_11d/2d
for i in *.mnc;
do
	mnc2nii $i -dual
done

rm *.mnc 
clear


echo "You are DONE!"