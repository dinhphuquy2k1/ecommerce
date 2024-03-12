1. Download Docker Desktop
   ```sh
   https://www.docker.com/products/docker-desktop/
    ```
2. Download nvm

    ```sh
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
    nvm install 10.15.2
    node -v
    ```

3. Clone project

    ```sh
    git clone git@github.com:dinhphuquy2k1/e-commerce.git
    ```

4. backend

   build app

    ``` sh
    docker-compose up -d
    ```

   library django
   ``` sh
   pip freeze > requirements.txt
   ```

   active virtual environment
   ``` sh
   source env/bin/activate
   ```

5. Open web page locally

   http://localhost:8080/

   http://localhost:30001/

## database and sql

   ``` sh
   sudo docker exec db sh /docker-entrypoint-initdb.d/run-sql.sh
   ```
