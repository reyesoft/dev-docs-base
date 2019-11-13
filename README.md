# Multinexo API documentation

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


## Documented resources structure

Documented resources must define the following fields in the Front Matter:


    version: *API version*
    resource: *resource type*
    permalink: /docs/*{API version}*/resources/*{resource type}*/
    section: *Parent section name*
    partOf: *parent resource*
    attributes:
      -
        name: *attribute name*
        crud: *attribute crud*
        filter: *supported filter (optional)*
        required: *if the atribute is required (optional, defaults to false)*
        value_type: *supported content type (optional, defaults to string)*
