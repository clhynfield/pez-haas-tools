#!/bin/bash

: ${PEZ_SLOT:=000}

pez_jump_host() {
    echo "ubuntu-$PEZ_SLOT.haas-$PEZ_SLOT.pez.pivotal.io"
}

jump() {
    ssh "ubuntu@$(pez_jump_host)" $@
}

