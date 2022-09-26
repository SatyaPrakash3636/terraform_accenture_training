resource "github_repository" "myrepo"{
name = "accentureTerraformTest"
visibility = "private"
}

resource "github_repository" "myrepo1"{
name = "accentureTerraformProd"
visibility = "public"
}

