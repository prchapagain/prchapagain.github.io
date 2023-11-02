#!/bin/bash

#!/bin/zsh

################
# Get  info #
################
post_id=`date "+%d-%m-%Y"`
postdate=`date "+%Y-%m-%d"`
jekylldate=`date "+%Y-%m-%d"`
post_time=`date "+%H:%M:%S"`
time_offset=`date "+%z"`
read -p "Enter the post name: " post_variable;
read -p "Enter post title: " english_title;
touch  /home/computebox/Documents/khumnath.github.io/_posts/$postdate-$post_variable.markdown
read -p "Enter tags separated by commas: " tags;
function askYesNo {
        QUESTION=$1
        DEFAULT=$2
        if [ "$DEFAULT" = true ]; then
                OPTIONS="[Y/n]"
                DEFAULT="y"
            else
                OPTIONS="[y/N]"
                DEFAULT="n"
        fi
        read -p "$QUESTION $OPTIONS " -n 1 -s -r INPUT
        INPUT=${INPUT:-${DEFAULT}}
        echo ${INPUT}
        if [[ "$INPUT" =~ ^[yY]$ ]]; then
            ANSWER=true
        else
            ANSWER=false
        fi
}

askYesNo "Do you have picture to add for page thumbnail and for page?" true
DOIT=$ANSWER

if [ "$DOIT" = true ]; then
read -p "Enter image name with extension (like pic1.png): " image;

cat >/home/computebox/Documents/khumnath.github.io/_posts/$postdate-$post_variable.markdown<<EOF
---
lng_pair: id_$post_id
title: $post_variable
author: khumnath
category: others
tags: [ $tags ]
img: ":$image"
date: $jekylldate $post_time $time_offset
#remove '#' on published: false to unpublish post
#published: false
#markdown formated page contents below
---
![](../assets/img/posts/$image)
EOF
else
cat >/home/computebox/Documents/khumnath.github.io/_posts/$postdate-$post_variable.markdown<<EOF
---
lng_pair: id_$post_id
title: $post_variable
author: khumnath
category: others
tags: [ $tags ]
date: $jekylldate $post_time $time_offset
#remove '#' on published: false to unpublish post
#published: false
---
$page_content
EOF
fi
function asktranslate {
        QUESTION=$1
        DEFAULT=$2
        if [ "$DEFAULT" = true ]; then
                OPTIONS="[Y/n]"
                DEFAULT="y"
            else
                OPTIONS="[y/N]"
                DEFAULT="n"
        fi
        read -p "$QUESTION $OPTIONS " -n 1 -s -r INPUT
        INPUT=${INPUT:-${DEFAULT}}
        echo ${INPUT}
        if [[ "$INPUT" =~ ^[yY]$ ]]; then
            ANSWER=true
        else
            ANSWER=false
        fi
}

asktranslate "Do you want to create nepali translation of this page?" true
DOIT=$ANSWER

if [ "$DOIT" = true ]; then
read -p "Enter post title in nepali: " nepali_title;
touch /home/computebox/Documents/khumnath.github.io/ne/_posts/$postdate-$post_variable.markdown 
read -p "Enter nepali tags separated by commas: " tags_np;
cat >/home/computebox/Documents/khumnath.github.io/ne/_posts/$postdate-$post_variable.markdown<<EOF
---
lng_pair: id_$post_id
title: $nepali_title
author: खुमनाथ
category: others
tags: [ $tags_np ]
img: ":$image"
date: $jekylldate $post_time $time_offset
#remove '#' on published: false to unpublish post
#published: false
#markdown formated page contents below
---
![](../assets/img/posts/$image)
EOF
else

cat >/home/computebox/Documents/khumnath.github.io/ne/_posts/$postdate-$post_variable.markdown<<EOF
---
lng_pair: id_$post_id
title: $nepali_title
author: खुमनाथ
category: others
tags: [ $tags_np ]
date: $jekylldate $post_time $time_offset
#remove '#' on published: false to unpublish post
#published: false
#markdown formated page contents below
---
EOF
fi
exit 0
echo "Done! create page content in markdown and paste on newly created file in _posts/$postdate-$post_variable.markdown and language pair folder ne/_posts/$postdate-$post_variable.markdown  "
