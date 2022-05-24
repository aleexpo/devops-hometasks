#resource "github_repository" "test" {
#    name= "test"
#    auto_init = true
#    visibility = "public"
#  
#}

resource "github_repository_file" "tests" {
    count = length(var.files)
    repository = "devops-hometasks"
    branch = "main"
    file = "task-11/${element(var.files, count.index)}"
    content = file("${var.path}/${element(var.files, count.index)}")
    commit_message = "uploaded by terraform"
    overwrite_on_create = true


}