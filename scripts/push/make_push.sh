openssl pkcs12 -in vendor.p12 -nocerts -out vendor.key

openssl pkcs12 -export -inkey vendor.key -in push_production_identity.pem -out PushCert.p12

openssl pkcs12 -in PushCert.p12 -out PushCert.pem -nodes -clcerts

cp PushCert.pem ../../server