AZURE_ACCOUNT_NAME=205000ey
AZURE_ACCOUNT_KEY=toe0y+LdTYFsfd6EGMzHphJir1gXnfe/N46pm3C70aqmdg/J5mC3lj2ZqvKPRlj4TVIyfklOhf1S/PD69gr4FQ==
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
