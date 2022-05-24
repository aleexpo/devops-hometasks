#resource "github_repository" "devops-hometasks" {
#    name= "devops-hometasks"
#    auto_init = true
#    visibility = "public"
#  
#}

resource "github_repository_file" "devops-hometasks" {
    count = length(var.files)
    repository = "devops-hometasks"
    branch = "main"
    file = "task-11/${element(var.files, count.index)}"
    content = file("${var.path}/${element(var.files, count.index)}")
    commit_message = "uploaded by terraform"
    commit_author = "aleexpo"
    commit_email = "alexerik1239@gmail.com"
    overwrite_on_create = true


}