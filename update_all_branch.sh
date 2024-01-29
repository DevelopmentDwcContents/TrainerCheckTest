#!/bin/sh

# ブランチ配列の定義
branch_arr="Both-1 Both-2 Interaction-1 Interaction-2 Manner-1 Manner-2 TrainerCheck1 TrainerCheck2-1 TrainerCheck2-2"

stash_num=$1

echo "stash_num = $1"

# 配列の要素を取り出しループ
for git_branch in $branch_arr; do
    echo "branch = $git_branch"
    git switch $git_branch
    git branch
    git stash apply $1
    git add .
    git commit -m "update"
    git push origin $git_branch
done

git switch main
