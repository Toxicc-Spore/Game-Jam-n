xx+=0.5;
yy+=0.5;

if (global.paused)
	drawalpha = approach(drawalpha, 0.8, 0.1);
else
	drawalpha = approach(drawalpha, 0, 0.1);
