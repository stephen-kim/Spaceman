# Changelog

All notable changes to this project should be documented in this file.

The format follows Keep a Changelog and uses semantic version headings.

## [Unreleased]

## [1.1.4] - 2026-11-07

### Changed
- The permission error now points at the right place in System Settings: on macOS 27 the
  Accessibility list lives under Privacy & Security → Device Control and Data Access.
- Unsigned release builds now get a real ad-hoc code signature for the whole bundle (Sparkle's
  helpers included), so `codesign --verify` passes and macOS can attach a code requirement to the
  app when it is added to the Accessibility list.

## [1.1.3] - 2026-11-02

### Changed
- The release DMG now opens as a drag-to-install window: Spaceman.app on the left, an Applications
  link on the right, with a background picture and volume icon (built with create-dmg; falls back to a
  plain image with the Applications link when create-dmg is unavailable).

## [1.1.2] - 2026-11-02

### Changed
- New Sparkle EdDSA public key. Releases from this version on ship a signed `appcast.xml`, so
  "Check for Updates" works and later versions install automatically. Earlier builds (1.1.1 and
  below) cannot verify this feed and must be updated by hand once.

### Fixed
- Release scripts use the prebuilt Sparkle command line tools, which also work on current Xcode.

## [1.1.1] - 2026-11-02

### Fixed
- The "System Settings…" button on the Accessibility error now triggers the macOS Accessibility prompt, so
  Spaceman is registered in Privacy & Security → Accessibility instead of having to be added by hand.

## [1.1.0] - 2026-11-02

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
