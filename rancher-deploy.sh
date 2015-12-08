#Tear down existing Node Container, before next deployment
/home/rjbrenna/rancher-compose-v0.5.3/rancher-compose --url $URL --access-key $ACCESS_KEY --secret-key $SECRET_KEY rm --force

# update Image tag for Rancher to use for deployment
sed -i "s/tag/${BUILD_ID}/g" docker-compose.yml

#Start the new containers
/home/rjbrenna/rancher-compose-v0.5.3/rancher-compose --url $URL --access-key $ACCESS_KEY --secret-key $SECRET_KEY --project-name ${JOB_NAME} --verbose create

/home/rjbrenna/rancher-compose-v0.5.3/rancher-compose --url $URL --access-key $ACCESS_KEY --secret-key $SECRET_KEY --project-name ${JOB_NAME} --verbose start
