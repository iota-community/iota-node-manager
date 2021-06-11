#!/usr/bin/env bash

red=$(tput setaf 1)
none=$(tput sgr0)

show_help() {
    printf "usage: $0 [--help] [--report] [--test] [<path to package>]
Script for running all unit and widget tests with code coverage.
(run from root of repo)
where:
    <path to package>
        runs all tests with coverage and reports
    -t, --test
        runs all tests with coverage, but no report
    -r, --report
        generate a coverage report
        (requires lcov, install with Homebrew)
    -e, --exclude
        excludes json_serializable and freezed files
        (requires flutter dev_dependency remove_from_coverage)
    -h, --help
        print this message
"
}

run_tests() {
    if [[ -f "pubspec.yaml" ]]; then
        rm -f coverage/lcov.info
        rm -f coverage/lcov-final.info
        flutter test --coverage
    else
        printf "\n${red}Error: this is not a Flutter project${none}"
        exit 1
    fi
}

run_report() {
    if [[ -f "coverage/lcov.info" ]]; then
        lcov -r coverage/lcov.info lib/resources/l10n/\* lib/\*/fake_\*.dart \
             -o coverage/lcov-final.info
        genhtml -o coverage coverage/lcov-final.info
        open coverage/index-sort-l.html
    else
        printf "\n${red}Error: no coverage info was generated${none}"
        exit 1
    fi
}

exclude_files() {
    if [[ -f "coverage/lcov.info" ]]; then
        flutter pub run remove_from_coverage -f coverage/lcov.info -r '.freezed.dart$'
        flutter pub run remove_from_coverage -f coverage/lcov.info -r '.g.dart$'
    else
        printf "\n${red}Error: no coverage info was generated${none}"
        exit 1
    fi
}

case $1 in
    -h|--help)
        show_help
        ;;
    -t|--test)
        run_tests
        ;;    
    -r|--report)
        run_report
        ;;
    -e|--exclude)
        exclude_files
        ;;
    *)
        run_tests
        exclude_files
        run_report
        ;;
esac