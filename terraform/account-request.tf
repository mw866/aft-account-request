# Copyright Amazon.com, Inc. or its affiliates. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#
module "sandbox_account_4" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "test4@chriswang.tech"
    AccountName  = "test4"
    # Syntax for top-level OU
    ManagedOrganizationalUnit = "Sandbox"
    # Syntax for nested OU
    # ManagedOrganizationalUnit = "Sandbox (ou-xfe5-a8hb8ml8)"
    SSOUserEmail     = "test4@chriswang.tech"
    SSOUserFirstName = "Chris"
    SSOUserLastName  = "Wnag"
  }

  change_management_parameters = {
    change_requested_by = "Chris Wang"
    change_reason       = "testing the account vending process"
  }

  # account_customizations_name = "wiz"
}
