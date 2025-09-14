ENV_FILE=assets/.env

# Fail if .env doesn't exist
if [ ! -f $ENV_FILE ]; then
    echo "$ENV_FILE file not found!"
    exit 1
fi

# Output xcconfig file
OUTPUT_FILE=ios/Flutter/Env.xcconfig
echo "// Auto-generated from $ENV_FILE" > $OUTPUT_FILE

# Read each line in .env and export to xcconfig
while IFS='=' read -r key value
do
    if [[ ! "$key" =~ ^# && -n "$key" ]]; then
    echo "$key=$value" >> $OUTPUT_FILE
    fi
done < $ENV_FILE

