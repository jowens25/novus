tree -H '.' -T "Novus Repository" --noreport --charset utf-8 > index.html

sed -i '/<title>.*<\/title>/c<title>Novus Repository</title>' index.html && \
sed -i '/<h1>Novus Repository<\/h1>/a\
<div style="margin:20px 0;padding:15px;border-left:4px solid #007cba;font-family:monospace;font-size:14px;">\
<h3>Install:</h3>\
<code>curl https://jowens25.github.io/novus/install.sh | sh</code><br>\
</div>' index.html
