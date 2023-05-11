# build user-service
cd ../../user-service/ftrip.io.user-service
docker build -t ftripio/user-service -f Dockerfile .

# build notification-service
cd ../../notification-service/ftrip.io.notification-service
docker build -t ftripio/notification-service -f Dockerfile .

# build email-service
cd ../../email-service/ftrip.io.email-service
docker build -t ftripio/email-service -f Dockerfile .

# build notification-service
cd ../../realtime-communication-service/ftrip.io.realtime-communication-service
docker build -t ftripio/realtime-communication-service -f Dockerfile .