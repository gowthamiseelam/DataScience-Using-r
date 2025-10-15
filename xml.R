library(xml2)
xml_content <- '<root>
<flower>
<Sepal.Length>5.1</Sepal.Length>
<Sepal.Width>3.5</Sepal.Width>
<Species>setosa</Species>
</flower>
<flower>
<Sepal.Length>4.9</Sepal.Length>
<Sepal.Width>3.0</Sepal.Width>
<Species>setosa</Species>
</flower>
</root>' 
writeLines(xml_content, "sample.xml")

xml_file <- read_xml("sample.xml")
print(xml_file)