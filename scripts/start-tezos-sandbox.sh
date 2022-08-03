#!/bin/bash
ALICE="alice,edpkvGfYw3LyB1UcCahKQk4rF2tvbMUk8GFiTuMjL75uGXrpvKXhjn,tz1VSUr8wwNhLAzempoch5d6hLRiTh8Cjcjb,unencrypted:edsk3QoqBuvdamxouPhin7swCvkQNgq4jP5KZPbwWNnwdZpSpJiEbq"
BOB="bob,edpkurPsQ8eUApnLUJ9ZPDvu98E8VNj4KtJa1aZr16Cr5ow5VHKnz4,tz1aSkwEot3L2kmUvcoxzjMomb9mvBNuzFK6,unencrypted:edsk3RFfvaFaxbHx8BMtEW1rKQcPtDML3LXjNqMNLCzC3wLC1bWbAt"
EVE="eve,edpku9qEgcyfNNDK6EpMvu5SqXDqWRLuxdMxdyH12ivTUuB1KXfGP4,tz1MnmtP4uAcgMpeZN6JtyziXeFqqwQG6yn6,unencrypted:edsk3Sb16jcx9KrgMDsbZDmKnuN11v4AbTtPBgBSBTqYftd8Cq3i1e"
MALLORY="mallory,edpkujwsG5JMrWVXQwmRMBoR9yJkokRbn6wy3monpQKBpnZTs1ogRR,tz1R2oNqANNy2vZhnZBJc8iMEqW79t85Fv7L,unencrypted:edsk3W5Fz1yWK39sLY6vidmgkfmGAXh6V2JqUiri9W1pFeeYWbFbJL"
TRENT="trent,edpkukjpYWLPEavoTXid8KqfYAY4J1rqtbWHWrzp22FgdRQqzaRkDD,tz1TfRXkAxbQ2BFqKV2dF4kE17yZ5BmJqSAP,unencrypted:edsk3ZBkw7qZMkLEJd7Fyt8ffPVVBuGEZ9MS5U6TjgtYQzPQVj3hgC"
MARKETA="marketa,edpktiaGKkt8Yu6m4Gse2GhMdJCVdCtcrjtqATn3y3sf7xTBDj5g2a,tz1fhigafd7PQAh3JBvq7efZ9g6cgBkaimJX,unencrypted:edsk3W5G7sxGVZP7k44JVsiE8NmUeq3Y3hcZPcmpSW2peRcZ8Hyfk2"
EULALIE="eulalie,edpkvCvic2obeedM7oMJaeyapEafg4dSdYuWvkZigKbcvc64q6ZKM7,tz1fEqJ6rD3mfQjVat7G6XJP522V6V8wWTP2,unencrypted:edsk3SauUEVox4fdsP4YoAuqo2YFvam1kSADJvPWE745jQ1oFSJUTs"
STELLA="stella,edpkvRuciP6vZeoXn1KJtBuEEtaD2SpHW59wbbCGt1SEDBL94W7AUE,tz1i3eqdPNs9zjpavVBFcF8JarJUgEErfsUK,unencrypted:edsk3YkQyZaZgY9TWVPX4jZ4tBzyfHABZy9NRNu79pxYWY1zdP5E9J"
CARLINE="carline,edpktxefxf3dtJEQLVb72MjV8yMiLh6DfCgNJQUV81rnsYJoZhbnK8,tz1PQP815EzZRktgLaEhtDCR22kiRrcQEurw,unencrypted:edsk3RfpoEY1G8cH4J1HswJ2xU3ZQggSnXxvrPHgn3mHyYdYQs4g9Z"
TABBIE="tabbie,edpkvXobE6tQLdsm3kPu3MYT2z2XrgVchfkK2WPB9tniNXdWSRyud3,tz1WP3xUvTP6vUWLRnexxnjNTYDiZ7QzVdxo,unencrypted:edsk3ZA4Uuirw4VXwGeamzLuQyn2juohC8eFYxD5fKobxUBX9HKWpu"
docker run --name my-sandbox -p 8732:20000  --rm -it tqtezos/flextesa:20210602 flextesarl mini-net --size 1 --number-of-bootstrap-accounts 1 --time-between-blocks 1 --timestamp-delay=-360000 --minimal-block-delay 0 --no-baking  --protocol-kind Florence --add-bootstrap-account="$ALICE@2_000_000_000_000" --add-bootstrap-account="$BOB@2_000_000_000_000" --add-bootstrap-account="$EVE@2_000_000_000_000" --add-bootstrap-account="$MALLORY@2_000_000_000_000" --add-bootstrap-account="$TRENT@2_000_000_000_000" --add-bootstrap-account="$MARKETA@2_000_000_000_000" --add-bootstrap-account="$EULALIE@2_000_000_000_000" --add-bootstrap-account="$STELLA@2_000_000_000_000" --add-bootstrap-account="$CARLINE@2_000_000_000_000" --add-bootstrap-account="$TABBIE@2_000_000_000_000" --no-daemons-for=alice --no-daemons-for=bob --no-daemons-for=eve --no-daemons-for=mallory --no-daemons-for=trent --no-daemons-for=marketa --no-daemons-for=eulalie --no-daemons-for=stella --no-daemons-for=carline --no-daemons-for=tabbie