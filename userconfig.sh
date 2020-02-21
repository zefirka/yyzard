while [ -z $USER_WORK_PROJECTS ]
do
    echo "\nSpecify user work projects name for ~/Projects/<name>"

    printf "\$USER_WORK_PROJECTS="
    read USER_WORK_PROJECTS
done

while [ -z $USER_CONFIG_GITHUB_URL ]
do
    echo "\nSpecify main github project for url like: https://<url>/<project>/<repo>/compare/<branch>\?expand=1"

    printf "\$USER_CONFIG_GITHUB_URL="
    read USER_CONFIG_GITHUB_URL
done

while [ -z $USER_CONFIG_GITHUB_PROJECT ]
do
    echo "\nSpecify main github project for url like: https://<url>/<project>/<repo>/compare/<branch>\?expand=1"

    printf "\$USER_CONFIG_GITHUB_PROJECT="
    read USER_CONFIG_GITHUB_PROJECT
done

while [ -z $USER_CONFIG_TRACKER_BASE_URL ]
do
    echo "\nSpecify Ticket tracker base url https://<base url>/ticket-id"

    printf "\$USER_CONFIG_TRACKER_BASE_URL="
    read USER_CONFIG_TRACKER_BASE_URL
done

echo "\
\n\
export USER_WORK_PROJECTS=$USER_WORK_PROJECTS\n\
export USER_CONFIG_GITHUB_URL=$USER_CONFIG_GITHUB_URL\n\
export USER_CONFIG_GITHUB_PROJECT=$USER_CONFIG_GITHUB_PROJECT\n\
export USER_CONFIG_TRACKER_BASE_URL=$USER_CONFIG_TRACKER_BASE_URL\n\
"