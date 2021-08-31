### Build Instructions
```shell
docker build -t racadm:latest .
```

### Get System Bios Information
```shell
read -s -p "iDrac7 Password: " PASSWORD && \
echo && \
for i in $(seq 1 12)
do
echo "Processing 10.0.1.$(( 10 + $i ))" 
docker run -it --rm \
    -v $PWD:/root \
    racadm:latest \
    -r 10.0.1.$(( 10 + $i )) -u root -p $PASSWORD --nocertwarn \
    getsysinfo | grep 'Service Tag\|System BIOS Version\|Firmware Version'
done
```