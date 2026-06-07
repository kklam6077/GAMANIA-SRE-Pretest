# 1. Build image
docker build -t sre-nginx .

# 2. Run container
docker run -d -p 8080:8080 --name sre-nginx sre-nginx

# 3. 驗證
curl http://localhost:8080/sre.txt  
curl -I http://localhost:8080/sre.txt
# 或直接開瀏覽器訪問 http://localhost:8080/sre.txt

# 4. 確認 process 以 non-root 執行
docker exec sre-nginx whoami               # 應輸出 nginx

# 5. 清理
docker stop sre-nginx && docker rm sre-nginx
