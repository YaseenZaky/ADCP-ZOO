function spraytimvars = spraytimvars(linenorson)

spraytimvars.Spraytimecell = ut2ds(linenorson.time);
spraytimvars.Spraytime = datetime(spraytimvars.Spraytimecell,'TimeZone',"Etc/GMT",'InputFormat','dd-MMM-yyyy HH:mm:ss');
spraytimvars.Spraytimedtnm = datenum(spraytimvars.Spraytime);
