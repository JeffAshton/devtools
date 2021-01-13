#!/bin/bash
set -eu

terraform-0.12 init -backend=false -input=false -lock=false
terraform-0.12 0.12upgrade -yes
