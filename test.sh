#!/bin/bash

contract=i.zxcvn.testnet

# near create-account $contract --masterAccount zxcvn.testnet --initialBalance 10
# near deploy $contract res/devgovgigs.wasm --initFunction new --initArgs '{}'

# for i in $(seq 1 2)
# do
# near call $contract add_post --accountId zxcvn.testnet --deposit 0.01 --args '{"parent_id":null,"body":{"post_type": "Idea","idea_version":"V1","name":"a'$i'","description":"aaa"},"labels":[]}'
# near call $contract add_post --accountId zxcvn.testnet --deposit 0.01 --args '{"parent_id":null,"body":{"post_type": "Idea","idea_version":"V1","name":"b'$i'","description":"bbb"},"labels":[]}'
# near call $contract add_post --accountId a.zxcvn.testnet --deposit 0.01 --args '{"parent_id":null,"body":{"post_type": "Idea","idea_version":"V1","name":"c'$i'","description":"ccc"},"labels":[]}'
# near call $contract add_post --accountId zxcvn.testnet --deposit 0.01 --args '{"parent_id":null,"body":{"post_type": "Idea","idea_version":"V1","name":"d'$i'","description":"ddd"},"labels":[]}'
# done

# near deploy $contract res/devgovgigs.wasm

# near call $contract unsafe_self_upgrade --accountId $contract --args $(base64 < res/devgovgigs.wasm ) --base64 --gas 300000000000000

#near call contract.devhubopen.testnet unsafe_self_upgrade --accountId contract.devhubopen.testnet --args $(base64 < res/devgovgigs.wasm ) --base64 --gas 300000000000000

# near call $contract unsafe_migrate --accountId $contract --gas 300000000000000

# cargo near deploy forum.potlock.near with-init-call new json-args {} prepaid-gas '100.0 Tgas' attached-deposit '0 NEAR' network-config mainnet sign-with-plaintext-private-key --signer-public-key ed25519:H15VWKYXKsEG7dfeb2xWqHEjb4FsmZTuMPY7NjUoX6XT --signer-private-key ed25519:47JqUN9iC95vKWqvySupvfnBmnvnnreaLmWEtVUwKhw6grRLhhCNp6MeC5sonZ27Zvwk25Ymg7hggkSUjDaCXqFX send

# near contract call-function  \
#     as-transaction forum.potlock.near set_allowed_categories json-args '{"new_categories":["AI PGF"]}' \
#     prepaid-gas '300 Tgas' \
#     attached-deposit '0 NEAR' \
#     sign-as forum.potlock.near  \
#     network-config mainnet \
#     sign-with-plaintext-private-key --signer-public-key ed25519:H15VWKYXKsEG7dfeb2xWqHEjb4FsmZTuMPY7NjUoX6XT --signer-private-key ed25519:47JqUN9iC95vKWqvySupvfnBmnvnnreaLmWEtVUwKhw6grRLhhCNp6MeC5sonZ27Zvwk25Ymg7hggkSUjDaCXqFX \
#     send


# near contract call-function \
#     as-transaction forum.potlock.near set_global_labels json-args '{"labels":[{"title":"Bounty","value":"Bounty","color":[124,102,220]},{"title":"Quick Start","value":"Quick Start","color":[220,194,102]},{"title":"A small build","value":"A small build","color":[4,164,110]}]}' \
#     prepaid-gas '300 Tgas' \
#     attached-deposit '0 NEAR' \
#     sign-as forum.potlock.near \
#     network-config mainnet \
#     sign-with-plaintext-private-key --signer-public-key ed25519:H15VWKYXKsEG7dfeb2xWqHEjb4FsmZTuMPY7NjUoX6XT --signer-private-key ed25519:47JqUN9iC95vKWqvySupvfnBmnvnnreaLmWEtVUwKhw6grRLhhCNp6MeC5sonZ27Zvwk25Ymg7hggkSUjDaCXqFX \
#     send


# near contract \
#     call-function  \
#     as-transaction forum.potlock.near edit_member json-args '{"member":"team:moderators","metadata":{"member_metadata_version":"V0","description":"The moderator group has permissions to create and edit RFPs, edit and manage proposals, and manage admins.","permissions":{"*":["use-labels","edit-post"]},"children":["megha19.near"],"parents":[]}}' \
#     prepaid-gas '300 Tgas' \
#     attached-deposit '0 NEAR' \
#     sign-as forum.potlock.near  \
#     network-config mainnet \
#     sign-with-plaintext-private-key --signer-public-key ed25519:H15VWKYXKsEG7dfeb2xWqHEjb4FsmZTuMPY7NjUoX6XT --signer-private-key ed25519:47JqUN9iC95vKWqvySupvfnBmnvnnreaLmWEtVUwKhw6grRLhhCNp6MeC5sonZ27Zvwk25Ymg7hggkSUjDaCXqFX \
#     send

near contract \
    # call-function  \
    # as-transaction forum.potlock.near remove_member json-args '{"member": "team:moderators"}' \
    # prepaid-gas '300 Tgas' \
    # attached-deposit '0 NEAR' \
    # sign-as forum.potlock.near  \
    # network-config mainnet \
    # sign-with-plaintext-private-key --signer-public-key ed25519:H15VWKYXKsEG7dfeb2xWqHEjb4FsmZTuMPY7NjUoX6XT --signer-private-key ed25519:47JqUN9iC95vKWqvySupvfnBmnvnnreaLmWEtVUwKhw6grRLhhCNp6MeC5sonZ27Zvwk25Ymg7hggkSUjDaCXqFX \
    # send
    

# near contract \
#     call-function  \
#     as-transaction forum.potlock.near add_member json-args '{"member":"megha19.near","metadata":{"member_metadata_version":"V0","description":"The moderator group has permissions to create and edit RFPs, edit and manage proposals, and manage admins.","permissions":{"*":["use-labels","edit-post"]},"children":[],"parents":["team:moderators"]}}' \
#     prepaid-gas '300 Tgas' \
#     attached-deposit '0 NEAR' \
#     sign-as forum.potlock.near  \
#     network-config mainnet \
#     sign-with-plaintext-private-key --signer-public-key ed25519:H15VWKYXKsEG7dfeb2xWqHEjb4FsmZTuMPY7NjUoX6XT --signer-private-key ed25519:47JqUN9iC95vKWqvySupvfnBmnvnnreaLmWEtVUwKhw6grRLhhCNp6MeC5sonZ27Zvwk25Ymg7hggkSUjDaCXqFX \
#     send


# cd discussions
# cargo near build
# cd ../community
# cargo near build
# cd ../community-factory
# cargo near build
# cd ..
# cargo near build

# cargo near deploy forum.potlock.near without-init-call network-config mainnet sign-with-plaintext-private-key --signer-public-key ed25519:H15VWKYXKsEG7dfeb2xWqHEjb4FsmZTuMPY7NjUoX6XT --signer-private-key ed25519:47JqUN9iC95vKWqvySupvfnBmnvnnreaLmWEtVUwKhw6grRLhhCNp6MeC5sonZ27Zvwk25Ymg7hggkSUjDaCXqFX send