for Y in {2015..2018} do
     mkdir $Y_commits
     cd $Y_commits
     for M in {1..12}  do
         mkdir $M_commits
         cd $M_commits
         for D in {1..31}  do
             mkdir $D_commits
             cd $D_commits
             for i in {1..12}  do
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
for Y in {2015..2019} do
    mkdir $Y_commits_2
    cd $Y_commits_2
    for M in {1..6} do
        mkdir $M_commits_2
        cd $M_commits_2
        for D in {1..31} do
            mkdir $D_commits_2
            cd $D_commits_2
            for i in {1..12} do
                echo "$i_2 on $M/$D/$Y" > commit_2.md
                export GIT_COMMITTER_DATE="$Y-$M-$D 12:$i:00"
                export GIT_AUTHOR_DATE="$Y-$M-$D 12:$i:00"
                git add commit_2.md -f
                git commit --date="$Y-$M-$D 12:0$i:00" -m "$i on $M $D $Y"
            done
        cd ../
        done
    cd ../
    done
cd ../
done
git push origin master

