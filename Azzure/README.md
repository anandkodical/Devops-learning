Creatinga free account on Azzure. Use below link to create an account.

Select Free trail while creating account which will not cost.
   
     https://azure.microsoft.com/en-in/pricing/purchase-options/azure-account/search?icid=free-search&ef_id=_k_Cj0KCQiA_qG5BhDTARIsAA0UHSIokRsBJbav0HoGFuDzVdX04-itef-w4sEEEupArSJzMppfgG3OkwcaAqIXEALw_wcB_k_&OCID=AIDcmm86ncqk20_SEM__k_Cj0KCQiA_qG5BhDTARIsAA0UHSIokRsBJbav0HoGFuDzVdX04-itef-w4sEEEupArSJzMppfgG3OkwcaAqIXEALw_wcB_k_&gad_source=1&gclid=Cj0KCQiA_qG5BhDTARIsAA0UHSIokRsBJbav0HoGFuDzVdX04-itef-w4sEEEupArSJzMppfgG3OkwcaAqIXEALw_wcB

**Creating a Virtual machine :-**

      1. Login to Azure account.

      2. CLick on 'Virtual machines' under Azure services section.

      3. Click on 'Create' -> 'Azure Virtual machine'.

      4. Make sure 'Subscription' selected as 'Free'.  Now create a new resource group.

      5. Provide Virtual machine name, Region, Image, Size, Authentication type, Username and click next. 

      6. Select disk type and click next.

      7. Now select relavent options in Networking, Management, Monitoring, Advanced and Tags section and click on create.



Create virtual machine
Enter virtual machines in the search.

Under Services, select Virtual machines.

In the Virtual machines page, select Create and then Virtual machine. The Create a virtual machine page opens.

In the Basics tab, under Project details, make sure the correct subscription is selected and then choose to Create new resource group. Enter myResourceGroup for the name.*.

Screenshot of the Project details section showing where you select the Azure subscription and the resource group for the virtual machine

Under Instance details, enter myVM for the Virtual machine name, and choose Ubuntu Server 22.04 LTS - Gen2 for your Image. Leave the other defaults. The default size and pricing is only shown as an example. Size availability and pricing are dependent on your region and subscription.

Screenshot of the Instance details section where you provide a name for the virtual machine and select its region, image, and size.

 Note

Some users will now see the option to create VMs in multiple zones. To learn more about this new capability, see Create virtual machines in an availability zone. Screenshot showing that you have the option to create virtual machines in multiple availability zones.

Under Administrator account, select SSH public key.

In Username enter azureuser.

For SSH public key source, leave the default of Generate new key pair, and then enter myKey for the Key pair name.

Now the virtual machine instance will be created and deployed within few minutes.


![image](https://github.com/user-attachments/assets/0aee2778-6aa3-4dcb-9471-b5bc6450abdc)





