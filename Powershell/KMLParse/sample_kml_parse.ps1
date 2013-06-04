.\Parse-GTFSkml.ps1 -KMLasXMLfilePath .\wta_shapes-201306.kml -AsSQL
Invoke-Sqlcmd -ServerInstance SRVSQL1 -Database GTFSManager -InputFile C:\LocalStuff\Temp\shapes.sql
Invoke-Sqlcmd -ServerInstance SRVSQL1 -Database GTFSManager -InputFile C:\LocalStuff\Temp\stops.sql