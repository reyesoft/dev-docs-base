# Dev Docs Base documentation

## Installation

```bash
sudo apt-get install ruby ruby-dev make gcc build-essential
sudo gem install jekyll bundler
bundle install
bundle exec jekyll serve
```

## Publish to Github Pages

If you want to publish form master branch:

```bash
bundle exec jgd
```

If you want to publish from other branch:

```bash
bundle exec jgd -r BRANCH_NAME
```

## Quickstart

Copy or rename *\_config.copy.yml* file to *\_config.yml* and fill the required fields:

- title
- version
- email
- description
- baseurl
- url
- appurl
- apiurl
- api_name
- git_address
- git_edit_address
- logo_url
- tip_image
- styleguide_img_url

You can add an image with the name `bg.jpg` in the `img` folder to be used as header background.

## Documented resources structure

Documented resources must define the following fields in the YAML Front Matter:

``` yaml
version: API version
resource: resource type
permalink: /docs/{API version}/resources/{resource type}/
section: Parent section name
partOf: parent resource
attributes:
  -
    name: attribute name
    crud: attribute crud
    filter: supported filter (optional)
    required: if the atribute is required (optional, defaults to false)
    value_type: supported content type (optional, defaults to string)
```
