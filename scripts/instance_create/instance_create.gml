function instance_create(xx, yy, object, var_structs = {})
{
	return instance_create_depth(xx, yy, 0, object, var_structs);
}