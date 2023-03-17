#!/bin/bash
set -eu

terraform-0.13 init -input=false -lock=false
terraform-0.13 0.13upgrade -yes
