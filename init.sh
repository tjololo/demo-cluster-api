export GCP_B64ENCODED_CREDENTIALS=$( cat gcp-creds.json| base64 | tr -d '\n')
export EXP_CAPG_GKE=true
echo "$GCP_B64ENCODED_CREDENTIALS" | base64 -d
clusterctl init --infrastructure gcp