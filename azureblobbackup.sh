AZURE_ACCOUNT_NAME=
AZURE_ACCOUNT_KEY=
AZURE_CONTAINER=blobbackup
MOUNT=/mnt/nfs/AzureBlobBackup

if [ -d "$MOUNT/$AZURE_CONTAINER" ]; then
    echo "Directory $MOUNT/$CONTAINER already exists ...";
        echo "Update existing container backup ...";
        else
            echo "First time backing up container ...";
                echo "Creating directory $MOUNT/$AZURE_CONTAINER ...";
                    mkdir -p $MOUNT/$AZURE_CONTAINER
                    fi
                    
                    echo "Syncing container $AZURE_CONTAINER ...";
                    az storage blob download-batch -d $MOUNT/$AZURE_CONTAINER -s $AZURE_CONTAINER --account-name $AZURE_ACCOUNT_NAME --account-key $AZURE_ACCOUNT_KEY
