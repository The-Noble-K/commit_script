for Y in {2017..2019}
do
  mkdir $Y
  cd $Y
  for M in {1..12}
  do
    mkdir $M
    cd $M
    for D in {1..31}
    do
      mkdir $D
      cd $D
      for i in {1..9}
      do
        echo "$i on $M/$D/$Y" > commit.md
        export GIT_COMMITTER_DATE="$Y-$M-$D 12:$i:00"
        export GIT_AUTHOR_DATE="$Y-$M-$D 12:$i:00"
        git add commit.md -f
        git commit --date="$Y-$M-$D 12:0$i:00" -m "$i on $M $D $Y"
      done
      cd ../
    done
    cd ../
  done
  cd ../
done
git push origin master
git commit -m "cleanup"
git push origin master
