#!/usr/bin/env bats

load bats-assertion/bats-assertion

@test "show help" {
  run ./bin/wp-offsite-backup --help

  assert_success
  assert_lines_match "WP Offsite Backup" 0
  assert_lines_match "usage: wp-offsite-backup \[<config>\|--config\|--help\]" 1
  assert_lines_match "wp-offsite-backup/bin/../config" 2
  assert_lines_match "wp-offsite-backup/bin/../log" 3

}

@test "lists config" {
  run ./bin/wp-offsite-backup --config

  assert_success
  assert_lines_match "default"
  assert_lines_match "config\-sample"

}
