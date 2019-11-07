# docker.python2.7-jessie-nfs

## 指令 (without data volume)

情境一：若傳入參數 pyfile，可調整要執行的檔案，例如：傳入 -e pyfile=main2.py，
則Container會執行: python main2.py

<pre><code>$ docker run -d --restart=always --net=host -e "pyfile=main2.py" cutejaneii/docker.python2.7.16-jessie:with-nfs</code></pre>

情境二：若不傳入參數 pyfile，則預設執行 python main.py

<pre><code>$ docker run -d --restart=always --net=host cutejaneii/docker.python2.7-jessie-nfs</code></pre>


## 指令 (with data volume)

情境一：若傳入參數 pyfile，可調整要執行的檔案，例如：傳入 -e pyfile=main2.py，
則Container會執行: python main2.py

<pre><code>$ docker run -d --restart=always --net=host -e "pyfile=main2.py" -v /var/docker_volume/api/app:/app -v volume_nfs:/nfs cutejaneii/docker.python2.7.16-jessie:with-nfs</code></pre>

情境二：若不傳入參數 pyfile，則預設執行 python main.py

<pre><code>$ docker run -d --restart=always --net=host -v /var/docker_volume/api/app:/app -v volume_nfs:/nfs cutejaneii/docker.python2.7.16-jessie:with-nfs</code></pre>
