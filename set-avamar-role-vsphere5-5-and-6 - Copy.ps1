# Setup arrary vCenter
$vCenters = @(
    "winvcenter10.irvineqa.local"
    # "linuxvcenter2.irvineqa.local"
    );

# Store username and password 
$user = "administrator@vsphere.local"
$password = "P3t3rPan@1"

# connect
Connect-VIServer -server $vCenters -User $user -Password $password

# Get-VIPrivilege -Name *Alarm*
# Get-VIPrivilege -PrivilegeGroup "Alarms"
# $Permission = "Create Alarm"
# Set-VIPermission -Permission $Permission


# Test on vCenter version 6
# Entity or group privileges 'Alarms'
Set-VIRole -Role "avamar" -AddPrivilege (Get-VIPrivilege -Group "Alarms" -Name "Create alarm")

# Entity or group privileges 'Datastore'
Set-VIRole -Role "avamar" -AddPrivilege (Get-VIPrivilege -Group "Datastore" -Name "Allocate space")
Set-VIRole -Role "avamar" -AddPrivilege (Get-VIPrivilege -Group "Datastore" -Name "Browse datastore")
Set-VIRole -Role "avamar" -AddPrivilege (Get-VIPrivilege -Group "Datastore" -Name "Configure datastore")
Set-VIRole -Role "avamar" -AddPrivilege (Get-VIPrivilege -Group "Datastore" -Name "Low level file operations")
Set-VIRole -Role "avamar" -AddPrivilege (Get-VIPrivilege -Group "Datastore" -Name "Move datastore")
Set-VIRole -Role "avamar" -AddPrivilege (Get-VIPrivilege -Group "Datastore" -Name "Remove datastore")
Set-VIRole -Role "avamar" -AddPrivilege (Get-VIPrivilege -Group "Datastore" -Name "Remove file")
Set-VIRole -Role "avamar" -AddPrivilege (Get-VIPrivilege -Group "Datastore" -Name "Rename datastore")

# Entity or group privileges 'Extension'
Set-VIRole -Role "avamar" -AddPrivilege (Get-VIPrivilege -Group "Extension" -Name "Register extension")
Set-VIRole -Role "avamar" -AddPrivilege (Get-VIPrivilege -Group "Extension" -Name "Unregister extension")
Set-VIRole -Role "avamar" -AddPrivilege (Get-VIPrivilege -Group "Extension" -Name "Update extension")

# Entity or group privileges 'Folder'
Set-VIRole -Role "avamar" -AddPrivilege (Get-VIPrivilege -Group "Folder" -Name "Create folder")

# Entity or group privileges 'Global'
Set-VIRole -Role "avamar" -AddPrivilege (Get-VIPrivilege -Group "Global" -Name "Cancel task")
Set-VIRole -Role "avamar" -AddPrivilege (Get-VIPrivilege -Group "Global" -Name "Disable methods")
Set-VIRole -Role "avamar" -AddPrivilege (Get-VIPrivilege -Group "Global" -Name "Enable methods")
Set-VIRole -Role "avamar" -AddPrivilege (Get-VIPrivilege -Group "Global" -Name "Licenses")
Set-VIRole -Role "avamar" -AddPrivilege (Get-VIPrivilege -Group "Global" -Name "Log event")
Set-VIRole -Role "avamar" -AddPrivilege (Get-VIPrivilege -Group "Global" -Name "Manage custom attributes")
Set-VIRole -Role "avamar" -AddPrivilege (Get-VIPrivilege -Group "Global" -Name "Set custom attribute")
Set-VIRole -Role "avamar" -AddPrivilege (Get-VIPrivilege -Group "Global" -Name "Settings")

# Entity or group privileges 'Network'
Set-VIRole -Role "avamar" -AddPrivilege (Get-VIPrivilege -Group "Network" -Name "Assign network")
Set-VIRole -Role "avamar" -AddPrivilege (Get-VIPrivilege -Group "Network" -Name "Configure")

# Entity or group privileges 'Resource'
Set-VIRole -Role "avamar" -AddPrivilege (Get-VIPrivilege -Group "Resource" -Name "Assign virtual machine to resource pool")

# Entity or group privileges 'Sessions'
Set-VIRole -Role "avamar" -AddPrivilege (Get-VIPrivilege -Group "Sessions" -Name "validate session")

# Entity or group privileges 'Tasks'
Set-VIRole -Role "avamar" -AddPrivilege (Get-VIPrivilege -Group "Tasks" -Name "Create task")
Set-VIRole -Role "avamar" -AddPrivilege (Get-VIPrivilege -Group "Tasks" -Name "Update task")

# Entity or group privileges 'vApp'
Set-VIRole -Role "avamar" -AddPrivilege (Get-VIPrivilege -Group "vApp" -Name "Export")
Set-VIRole -Role "avamar" -AddPrivilege (Get-VIPrivilege -Group "vApp" -Name "Import")
Set-VIRole -Role "avamar" -AddPrivilege (Get-VIPrivilege -Group "vApp" -Name "vApp application configuration")

# Entity or group privileges 'Virtual machine: Configuration'
Set-VIRole -Role "avamar" -AddPrivilege (Get-VIPrivilege -Group "Configuration" -Name "Add existing disk")
Set-VIRole -Role "avamar" -AddPrivilege (Get-VIPrivilege -Group "Configuration" -Name "Add new disk")
Set-VIRole -Role "avamar" -AddPrivilege (Get-VIPrivilege -Group "Configuration" -Name "Add or remove device")
Set-VIRole -Role "avamar" -AddPrivilege (Get-VIPrivilege -Group "Configuration" -Name "Advanced")
Set-VIRole -Role "avamar" -AddPrivilege (Get-VIPrivilege -Group "Configuration" -Name "Change CPU count")
Set-VIRole -Role "avamar" -AddPrivilege (Get-VIPrivilege -Group "Configuration" -Name "Change resource")
Set-VIRole -Role "avamar" -AddPrivilege (Get-VIPrivilege -Group "Configuration" -Name "Configure managedBy")
Set-VIRole -Role "avamar" -AddPrivilege (Get-VIPrivilege -Group "Configuration" -Name "Disk change tracking")
Set-VIRole -Role "avamar" -AddPrivilege (Get-VIPrivilege -Group "Configuration" -Name "Disk Lease")
Set-VIRole -Role "avamar" -AddPrivilege (Get-VIPrivilege -Group "Configuration" -Name "Extend virtual disk")
Set-VIRole -Role "avamar" -AddPrivilege (Get-VIPrivilege -Group "Configuration" -Name "Host USB device")
Set-VIRole -Role "avamar" -AddPrivilege (Get-VIPrivilege -Group "Configuration" -Name "Memory")
Set-VIRole -Role "avamar" -AddPrivilege (Get-VIPrivilege -Group "Configuration" -Name "Modify device settings")
Set-VIRole -Role "avamar" -AddPrivilege (Get-VIPrivilege -Group "Configuration" -Name "Raw device")
Set-VIRole -Role "avamar" -AddPrivilege (Get-VIPrivilege -Group "Configuration" -Name "Reload from path")
Set-VIRole -Role "avamar" -AddPrivilege (Get-VIPrivilege -Group "Configuration" -Name "Remove disk")
Set-VIRole -Role "avamar" -AddPrivilege (Get-VIPrivilege -Group "Configuration" -Name "Rename")
Set-VIRole -Role "avamar" -AddPrivilege (Get-VIPrivilege -Group "Configuration" -Name "Reset guest information")
Set-VIRole -Role "avamar" -AddPrivilege (Get-VIPrivilege -Group "Configuration" -Name "Settings")
Set-VIRole -Role "avamar" -AddPrivilege (Get-VIPrivilege -Group "Configuration" -Name "Swapfile placement")
Set-VIRole -Role "avamar" -AddPrivilege (Get-VIPrivilege -Group "Configuration" -Name "Upgrade virtual machine compatibility")

# Entity or group privileges 'Virtual machine: Guest Operation'
Set-VIRole -Role "avamar" -AddPrivilege (Get-VIPrivilege -Group "Guest Operations" -Name "Guest Operation Modifications")
Set-VIRole -Role "avamar" -AddPrivilege (Get-VIPrivilege -Group "Guest Operations" -Name "Guest Operation Program Execution")
Set-VIRole -Role "avamar" -AddPrivilege (Get-VIPrivilege -Group "Guest Operations" -Name "Guest Operation Queries")

# Entity or group privileges 'Virtual machine: Interaction'
Set-VIRole -Role "avamar" -AddPrivilege (Get-VIPrivilege -Group "Interaction" -Name "Console interaction")
Set-VIRole -Role "avamar" -AddPrivilege (Get-VIPrivilege -Group "Interaction" -Name "Device connection")
Set-VIRole -Role "avamar" -AddPrivilege (Get-VIPrivilege -Group "Interaction" -Name "Guest operating system management by VIX API")
Set-VIRole -Role "avamar" -AddPrivilege (Get-VIPrivilege -Group "Interaction" -Name "Power off")
Set-VIRole -Role "avamar" -AddPrivilege (Get-VIPrivilege -Group "Interaction" -Name "Power on")
Set-VIRole -Role "avamar" -AddPrivilege (Get-VIPrivilege -Group "Interaction" -Name "Reset")
Set-VIRole -Role "avamar" -AddPrivilege (Get-VIPrivilege -Group "Interaction" -Name "VMware Tools install")

# Entity or group privileges 'Virtual machine: Inventory'
Set-VIRole -Role "avamar" -AddPrivilege (Get-VIPrivilege -Group "Inventory" -Name "Create from existing")
Set-VIRole -Role "avamar" -AddPrivilege (Get-VIPrivilege -Group "Inventory" -Name "Create new")
Set-VIRole -Role "avamar" -AddPrivilege (Get-VIPrivilege -Group "Inventory" -Name "Register")
Set-VIRole -Role "avamar" -AddPrivilege (Get-VIPrivilege -Group "Inventory" -Name "Remove")
Set-VIRole -Role "avamar" -AddPrivilege (Get-VIPrivilege -Group "Inventory" -Name "Unregister")

# Entity or group privileges 'Virtual machine: Provisioning'
Set-VIRole -Role "avamar" -AddPrivilege (Get-VIPrivilege -Group "Provisioning" -Name "Allow disk access")
Set-VIRole -Role "avamar" -AddPrivilege (Get-VIPrivilege -Group "Provisioning" -Name "Allow read-only disk access")
Set-VIRole -Role "avamar" -AddPrivilege (Get-VIPrivilege -Group "Provisioning" -Name "Allow virtual machine download")
Set-VIRole -Role "avamar" -AddPrivilege (Get-VIPrivilege -Group "Provisioning" -Name "Clone virtual machine")
Set-VIRole -Role "avamar" -AddPrivilege (Get-VIPrivilege -Group "Provisioning" -Name "Mark as template")

# Entity or group privileges 'Virtual machine: Snapshot Management'
Set-VIRole -Role "avamar" -AddPrivilege (Get-VIPrivilege -Group "Snapshot management" -Name "Create snapshot")
Set-VIRole -Role "avamar" -AddPrivilege (Get-VIPrivilege -Group "Snapshot management" -Name "Remove snapshot")
Set-VIRole -Role "avamar" -AddPrivilege (Get-VIPrivilege -Group "Snapshot management" -Name "Revert to snapshot")




# disconnect
Disconnect-VIServer -Server * -Confirm:$False