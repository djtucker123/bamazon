
below will identify all the node/npm modules that are referenced in the folder yields the required list for "npm install console.table dotenv inquirer mysql" which has to be run form command line to populate node_modules folder

find * -type f ! -path "node_modules/*" -exec grep "require(" '{}' \;  | awk -F"require" '{ print $NF }' | grep -v "./" | awk -F"(" '{ print $2 }'  | awk -F")" '{ print $1 }'  | sed "s|\"||g" | sort -u | awk '{ printf("%s ",$0) }' 

