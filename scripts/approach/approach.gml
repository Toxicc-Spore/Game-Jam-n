function approach(value, gotovalue, _speed){
	if (value < gotovalue)
	    return min(value + _speed, gotovalue); 
	else
	    return max(value - _speed, gotovalue);
}
