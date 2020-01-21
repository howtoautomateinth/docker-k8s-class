# Create a password.txt file
cat <<EOF >./password.txt
username=admin
password=secret
EOF

# file base
cat <<EOF >./kustomization.yaml
secretGenerator:
- name: example-secret-1
  files:
  - password.txt
EOF

# list base
# cat <<EOF >./kustomization.yaml
# secretGenerator:
# - name: example-secret-2
#   literals:
#   - username=admin
#   - password=secret
# EOF