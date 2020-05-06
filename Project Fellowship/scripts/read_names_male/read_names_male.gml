var i, file;
var ad_names;

ad_names = ds_list_create();

i = 0;

file = file_text_open_read("names_m.txt");

if(file != -1)
{
	while(!file_text_eof(file))
	{
		name_to_add = file_text_read_string(file);
		
		if(string_length(name_to_add) > 4)
		{
			ds_list_add(ad_names, name_to_add);
		}
			
		file_text_readln(file); i++;
	}
	file_text_close(file);
}

return ad_names;