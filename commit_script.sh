for Y in {2017..2019}
do
    if [$Y == 2019]
    then
        mkdir $Y && cd $Y
        for M in {1..6}
        do
            mkdir $M && cd $M
            for D in {1..31}
            do
                mkdir $D && cd $D
                for i in {1..12}
                do
                    echo "$i on $M/$D/$Y" > commit_$i.md
                    export GIT_COMMITTER_DATE="$Y-$M-$D 12:$i:00"
                    export GIT_AUTHOR_DATE="$Y-$M-$D 12:$i:00"
                    git add commit_$i.md -f
                    git commit --date="$Y-$M-$D 12:0$i:00" -m "$i on $M $D $Y"
                done
            cd ../
            done
        cd ../
        done
    else
        mkdir $Y && cd $Y
        for M in {1..12}
        do
            mkdir $M && cd $M
            for D in {1..31}
            do
                mkdir $D && cd $D
                for i in {1..12}
                do
                    echo "$i on $M/$D/$Y" > commit_$i.md
                    export GIT_COMMITTER_DATE="$Y-$M-$D 12:$i:00"
                    export GIT_AUTHOR_DATE="$Y-$M-$D 12:$i:00"
                    git add commit_$i.md -f
                    git commit --date="$Y-$M-$D 12:0$i:00" -m "$i on $M $D $Y"
                done
            cd ../
            done
        cd ../
        done
    fi
cd ../
done
git push origin master
git rm -rf 20**
git rm -rf 19**
git commit -am "tidy up"
git push origin master

