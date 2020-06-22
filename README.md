# shunit2 GitHub Action

This is a simple GitHub Action based on a Docker Alpine minimal image.

## Usage

This is a workfloy yml example:

```yaml
name: CD
on:
  push:
    branches:
      - master
  pull_request:
    branches:
      - master
jobs:
  # This workflow contains a single job called "build"
  build:
    # The type of runner that the job will run on
    runs-on: ubuntu-latest

    # Steps represent a sequence of tasks that will be executed as part of the job
    steps:
      # Checks-out your repository under $GITHUB_WORKSPACE, so your job can access it
      - uses: actions/checkout@v2

      - name: GitHub Action to run shunit2 tests
        uses: garciasdos/shunit2-github-action@v0.4
```
## Available variables

[WIP] in next release the tests directory will be available as environment variable.
Example: 
```
      - name: GitHub Action to run shunit2 tests
        uses: garciasdos/shunit2-github-action@v0.4
        env:
          SHUNIT_TEST_FOLDER:"the/folder"
```
## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.


