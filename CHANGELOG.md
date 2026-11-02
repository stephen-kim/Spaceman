# Changelog

All notable changes to this project should be documented in this file.

The format follows Keep a Changelog and uses semantic version headings.

## [Unreleased]

### Added
- Merged the feature set of [ruittenb/Spaceman](https://github.com/ruittenb/Spaceman): click-to-switch and
  menu/grid space switching (smooth, fast or instant), navigation arrows and Mission Control button, HUD overlay,
  icon shapes/fills/colors/fonts/sizes, two-row layout, nearby/current-only visibility, per-display numbering,
  quick rename, preferences backup/restore, AppleScript remote control, auto-shrink, and translations
  (de, es, es-419, fr, nl).
- "Current / total" visibility mode that shows a single compact `1/6` indicator per display.
- Unit test target (`SpacemanTests`), now run in CI.

### Fixed
- Sparkle feed URL now points at this repository's GitHub Releases, where the release workflow publishes `appcast.xml`.

### Changed
- The app is no longer sandboxed (required for space switching via Accessibility and simulated gestures).
- Sparkle updated to 2.9.x.
- Preferences from the previous 1.0.0 style picker are migrated automatically; the custom display style IDs
  used before this merge are no longer read.

## [1.0.0] - 2026-02-06

### Notes
- Semantic-version baseline for the existing `1.0` release (`1.0` == `1.0.0`).
