var i, file;
var ad_names;

ad_names = ds_list_create();

i = 0;

file = file_text_open_read("names.txt");

if(file != -1)
{
	while(!file_text_eof(file))
	{
		ds_list_add(ad_names, file_text_read_string(file));
		file_text_readln(file); i++;
	}
	file_text_close(file);
}

return ad_names;