package io.konveyor.forklift.vmware
 
test_without_uefi_boot {
    mock_vm := { "name": "test", "firmware": "bios" }
    results = concerns with data.io.konveyor.forklift.vmware.vm as mock_vm
    count(results) == 0
}

test_with_uefi_boot {
    mock_vm := { "name": "test", "firmware": "efi" }
    results = concerns with data.io.konveyor.forklift.vmware.vm as mock_vm
    count(results) == 1
}
