terraform {
    required_providers {
        github = {
            source = "integrations/github"
            version = "~>5.0"
        }
    }
}

# Provider
provider "github" {
    token = ""
}

# # User
# resource "github_membership" "membership_for_saparici0" {
#     username = "saparici0"
# }

resource "github_repository" "codebase" {
    name = "codebase"
    description = "my codebase"

    visibility = "public"

    auto_init = true
}

resource "github_repository" "web" {
    name = "web"
    description = "my web page"

    visibility = "public"

    auto_init = true
}

resource "github_branch" "master" {
    repository = "codebase"
    branch = "master"
}

resource "github_branch" "dev" {
    repository = "codebase"
    branch = "dev"
}

resource "github_branch" "hot_fix" {
    repository = "codebase"
    branch = "hot_fix"
}