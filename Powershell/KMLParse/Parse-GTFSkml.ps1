param([String] $KMLasXMLfilePath, [switch]$AsSQL = $false)

[xml]$kml = Get-Content $KMLasXMLfilePath

[System.XML.XmlNamespaceManager] $nsmanager = new-object System.XML.XmlNamespaceManager($kml.NameTable);
$nsmanager.AddNamespace("kml", "http://www.opengis.net/kml/2.2")

#Parse out stops
$XMLstops = $kml.SelectNodes("kml:kml/kml:Document/kml:Folder[kml:name='Stops']/kml:Placemark", $nsmanager)
[String] $StopID = ""
[String] $Coordinates = ""
if ($AsSQL) {
    "DELETE FROM dbo.kml_stops;" |  Out-File -FilePath stops.sql
} else {
    "stop_id,stop_lon,stop_lat,stop_name" | Out-File -FilePath stops.txt
}
for ($i=0;$i -lt $XMLstops.Count ;$i++) {
    [System.XML.XmlNode] $XMLStop = $XMLStops.Item($i)
    #$XMLStops.Item($i).description.ToString()
    $StopID = $XMLStops.Item($i).description.InnerText
    if ($StopID.length -le 0) {
        $StopID = $XMLStops.Item($i).description
    } else {
        $StopID = $StopID.Substring(0,$StopID.IndexOf("<br/>"))
    }
    $StopID = $StopID.Replace("Stop id: ", "")
    $Coordinates = $XMLStops.Item($i).Point.coordinates
    $Coordinates = $Coordinates.Replace(",0", "")
    $StopName = $XMLStops.Item($i).name
    if (!($XMLStop.InnerXML -like "*style*")) {
        if ($AsSQL) {
            "INSERT INTO dbo.kml_stops VALUES($StopID,$Coordinates,'$StopName');" | Out-File -FilePath stops.sql -Append
        } else {
            "$StopID,$Coordinates,$StopName" | Out-File -FilePath stops.txt -Append
        }
    }
}


#Parse out shapes
$XMLshapes = $kml.SelectNodes("kml:kml/kml:Document/kml:Folder[kml:name='Shapes']/kml:Placemark", $nsmanager)
[String] $ShapeID = ""
[String] $Coordinates = ""
if ($AsSQL) {
    "DELETE FROM dbo.kml_shapes;" |  Out-File -FilePath shapes.sql
} else {
    "shape_id,shape_pt_lon,shape_pt_lat,shape_pt_sequence" | Out-File -FilePath shapes.txt
}
for ($i=0;$i -lt $XMLshapes.Count ;$i++) {
    #$XMLStops.Item($i).description.ToString()
    $ShapeID = $XMLshapes.Item($i).name
    $Coordinates = $XMLshapes.Item($i).LineString.coordinates
    $Coordinates = $Coordinates.Replace(",0", "")
    [String[]] $CoordinateList = $Coordinates.Split()
    [int] $Seq = 1
    foreach ($Coordinate in $CoordinateList) {
        [String] $CoordinateString = $Coordinate
        if ($CoordinateString.Length -gt 2) {
            if ($AsSQL) {
                "INSERT INTO dbo.kml_shapes VALUES($ShapeID,$CoordinateString,$Seq);" | Out-File -FilePath shapes.sql -Append
            } else {
                "$ShapeID,$CoordinateString,$Seq" | Out-File -FilePath shapes.txt -Append
            }
            $Seq++
        }
    }
}
