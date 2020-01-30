# OTBulkPayout
This will bulk payout TRAC earned on your node for all current held jobs.

Please make sure you edit the script to put your ERC725 ID where it says "0xCHANGEMETOYOURerc725ID" 

1: SSH into your node to access the command line interface

2: Clone the project to your local machine by running:

git clone https://github.com/Guinnessstache/OTBulkPayout

3: Navigate to the OTBulkPayout directory by running:

cd OTBulkPayout/

4: Edit the bulkpayout.sh script to add in your ERC725 ID for the node you are on.  Replace 0xCHANGEMETOYOURerc725ID with your ERC725 ID

sudo nano bulkpayout.sh

5: Save the file by press Ctrl+x, then Shift+y to save the file then press Enter when it asks "File Name to Write: bulkpayout.sh"

6: We now need to make the script executable by running the following command:

chmod +x bulkpayout.sh

7: You are now ready to run the script and process your bulk payout by using the following command:

./bulkpayout.sh

Thats it!  You can now check OThub and watch as you see the jobs get paid out.  You can tell it's working by looking at your "Paid Out" collumn when looking under the "My Nodes" section.
