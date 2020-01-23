cat <<EOF > ./kustomization.yaml
secretGenerator:
- name: mysql-pass
  literals:
  - password=YOUR_PASSWORD
EOF

cat <<EOF >> ./kustomization.yaml
resources:
- mysql.yaml
- wordpress.yaml
- phpmyadmin.yaml
EOF

cat <<EOF >> ./kustomization.yaml
generatorOptions:
  disableNameSuffixHash: true
EOF




