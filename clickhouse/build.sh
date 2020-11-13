echo "check if command 'sudo' exist"
SUDO=sudo
if command -v sudo >/dev/null 2>&1; then
    echo 'sudo exist'
else
    echo 'sudo not exist'
    SUDO=""
fi

# cd bin && curl -O 'https://builds.clickhouse.tech/master/aarch64/clickhouse' && chmod a+x ./clickhouse \
#     # && https://github.com/ClickHouse/ClickHouse/blob/master/programs/server/config.xml \
#     # && https://github.com/ClickHouse/ClickHouse/blob/master/programs/server/users.xml \
    # && cd ..
$SUDO docker build -t 9d77v/clickhouse-server:arm64.2020-09-05 .
$SUDO docker push 9d77v/clickhouse-server:arm64.2020-09-05
