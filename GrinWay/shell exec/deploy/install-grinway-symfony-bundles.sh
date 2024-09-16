declare -A BUNDLE_NAMES
declare -A BUNDLE_VERSIONS

###> !CHANGE ME! ###

###> BEAUTIFIER ###
CONSOLE_TITLE_COLOR='\033[0;36m'
CONSOLE_NC='\033[0m'
START_INFO_TEXT="INITIALIZATION STARTED"
END_INFO_TEXT="INITIALIZATION END"
###< BEAUTIFIER ###

###> BUNDLES REPO ###
DEPENDENCIES_DIR="bundles"
REP_REMOTE_NAME="origin"
OWNER_NAMESPACE="GrinWay"
###< BUNDLES REPO ###

###> BUNDLES/EXTENSIONS ###
BUNDLE_NAMES[0]="env-processor-bundle"
BUNDLE_VERSIONS[0]="main"
BUNDLE_FULL_NAME[0]="${OWNER_NAMESPACE}/${BUNDLE_NAMES[0]}"

BUNDLE_NAMES[1]="service-bundle"
BUNDLE_VERSIONS[1]="main"
BUNDLE_FULL_NAME[1]="${OWNER_NAMESPACE}/${BUNDLE_NAMES[1]}"

BUNDLE_NAMES[2]="command-bundle"
BUNDLE_VERSIONS[2]="main"
BUNDLE_FULL_NAME[2]="${OWNER_NAMESPACE}/${BUNDLE_NAMES[2]}"

BUNDLE_NAMES[3]="web-app-bundle"
BUNDLE_VERSIONS[3]="main"
BUNDLE_FULL_NAME[3]="${OWNER_NAMESPACE}/${BUNDLE_NAMES[3]}"

BUNDLE_NAMES[4]="symfony-extensions"
BUNDLE_VERSIONS[4]="main"
BUNDLE_FULL_NAME[4]="${OWNER_NAMESPACE}/${BUNDLE_NAMES[4]}"
###< BUNDLES/EXTENSIONS ###

###< !CHANGE ME! ###

#composer run-script app_init_start

###> ALGO ###

#composer run-script app_before_init_start_string

###> INIT STRING ###
echo -e "\r\n"
echo -e "${CONSOLE_TITLE_COLOR}${START_INFO_TEXT}${CONSOLE_NC}"
echo -e "\r\n"
###< INIT STRING ###

#composer run-script app_after_init_start_string

###> REMOVE IF THERE ARE LINKS OR EMPTY DIRECTORIES ###
rm -fr "${PWD}/vendor/${OWNER_NAMESPACE}"
###< REMOVE IF THERE ARE LINKS OR EMPTY DIRECTORIES ###

#composer run-script app_before_mkdir_for_grinway_bundles

###> MOVE ###
mkdir "./${DEPENDENCIES_DIR}/${OWNER_NAMESPACE}" -p
cd "./${DEPENDENCIES_DIR}/${OWNER_NAMESPACE}"
###< MOVE ###

#composer run-script app_after_mkdir_for_grinway_bundles
#composer run-script app_before_grinway_bundles

###> CYCLE ###
for k in "${!BUNDLE_NAMES[@]}"
do
	B_FULL_NAME="${BUNDLE_FULL_NAME[${k}]}"
	B_NAME="${BUNDLE_NAMES[${k}]}"
	B_VERSION="${BUNDLE_VERSIONS[${k}]}"
	
	git clone "https://github.com/${B_FULL_NAME}.git" "${B_NAME}"
	
	cd "./${B_NAME}"
	git fetch "${REP_REMOTE_NAME}" "${B_VERSION}" --tags
	git checkout "${REP_REMOTE_NAME}/${B_VERSION}" -f
	git branch -D "${B_VERSION}"
	git checkout -b "${B_VERSION}" -f
	cd ".."
done
###< CYCLE ###

#composer run-script app_after_grinway_bundles

###> MOVE BACK ###
cd "../.."
###< MOVE BACK ###

###< ALGO ###


#composer run-script app_before_composer_install

composer install

#composer run-script app_after_composer_install

composer dump-autoload -o
#composer run-script app_before_symfony_console_assets_install
php "./bin/console" "assets:install"
#composer run-script app_before_symfony_console_cache_clear
php "./bin/console" "cache:clear"

#composer run-script app_before_init_end_string

echo -e "\r\n"
echo -e "${CONSOLE_TITLE_COLOR}${END_INFO_TEXT}${CONSOLE_NC}"

#composer run-script app_after_init_end_string
#composer run-script app_init_end