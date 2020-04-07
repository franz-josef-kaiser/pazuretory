#!/usr/bin/env sh

# Log out previously logged in users, which could possibly have sticky sessions.
echo "Logging out previously logged in users."
az logout

# (!) IMPORTANT
# Clean up everything early on. MS keeps a token cache and will
# use the wrong credentials, pulled from cache.
echo "Purging cache."
az cache purge
# `az` sometimes does not properly clean up or update.
# Removing file cache is a viable, easy (and brute force) option here.
echo "Purging cache with napalm."
rm ~/.azure/slsTokenCache.json
rm ~/.azure/accessTokens.json
rm ~/.azure/azureProfile.json

# Logging in
echo "Logging in."
az login