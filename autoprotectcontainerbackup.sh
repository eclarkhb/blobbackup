AZURE_ACCOUNT_NAME=205000ey
AZURE_ACCOUNT_KEY=toe0y+LdTYFsfd6EGMzHphJir1gXnfe/N46pm3C70aqmdg/J5mC3lj2ZqvKPRlj4TVIyfklOhf1S/PD69gr4FQ==
MOUNT=/mnt/nfs/AzureBlobBackup

AZURE_CONTAINERS=($(
    az storage container list --account-name $AZURE_ACCOUNT_NAME --account-key $AZURE_ACCOUNT_KEY --query [*].name --output tsv
    ))
    
    for CONTAINER in "${AZURE_CONTAINERS[@]}"
    
    do
        if [ -d "$MOUNT/$AZURE_ACCOUNT_NAME/$CONTAINER" ]; then
                echo "";
                        echo "Directory $MOUNT/$AZURE_ACCOUNT_NAME/$CONTAINER already exists ...";
                                echo "Update existing container ...";
                                    else
                                            echo "";
                                                    echo "New container detected ...";
                                                            echo "Creating directory $MOUNT/$AZURE_ACCOUNT_NAME/$CONTAINER ...";
                                                                    mkdir -p $MOUNT/$AZURE_ACCOUNT_NAME/$CONTAINER
                                                                        fi
                                                                        
                                                                            echo "Syncing container $CONTAINER ...";
                                                                                az storage blob download-batch -d $MOUNT/$AZURE_ACCOUNT_NAME/$CONTAINER -s $CONTAINER --account-name $AZURE_ACCOUNT_NAME --account-key $AZURE_ACCOUNT_KEY
                                                                                    echo "";
                                                                                    done
