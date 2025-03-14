# Changelog

## [1.0.3] - 2025-03-11

### 🎨 Styling

- *(icon)* Fine-tune app icon color (#183)

### ⚙️ Miscellaneous Tasks

- *(README)* Remove status badg

## [1.0.2_(21)] - 2025-03-10

### 🚀 Features

- *(ui)* Convert LanguageScreen & ThemeScreen to stateless, fix back gesture behavior (Mobile layout is not yet) (#176)

### ⚙️ Miscellaneous Tasks

- *(lint)* Resolve analyzer warnings

## [1.0.1_(19)] - 2025-03-09

### 🐛 Bug Fixes

- *(database)* Change logsPerQuery type from int to double (#174)

## [1.0.0_(17)] - 2025-03-09

### 🚀 Features

- *(snackbar)* Add caution snackbar (#172)
- *(icon)* Update app icon (#165)

### 🚜 Refactor

- *(settings)* Change modal to screen (#167)
- *(settings)* Move existing settings to new Performance section (#166)
- *(base)* Improve formatting of _handleTabChange method parameters
- *(base)* Improve code readability and reduce duplication (#164)

### ⚡ Performance

- *(pi_hole_client)* Subscribe only to necessary provider properties (#171)
- Reduce unnecessary rebuilds during status updates (#161)

### ⚙️ Miscellaneous Tasks

- *(flutter)* Upgrade Flutter to 3.29.1 (#170)
- *(icon)* Tweak symbol size in app icon (#168)

## [0.9.3_(15)] - 2025-02-22

### 🐛 Bug Fixes

- *(secure_storage)* Clean up unused data (#150)
- *(add_server)* Change the default Pi-hole version to v6 (#149)
- *(edit_server)* Temporarily disable the changes (#148)
- *(l10n)* Update translations (#147)

### 🚜 Refactor

- Remove basic auth (#151)

### 🧪 Testing

- Add tests (#133)

### ⚙️ Miscellaneous Tasks

- *(flutter)* Bump version to 3.29.0 (#146)
- Update Flutter version to 3.27.4 in workflow files (#145)
- *(docker)* Update pihole images
- Update sonar coverage exclusions
- *(ui)* Minor UI appearance adjustments (#132)

## [0.9.2_(13)] - 2025-02-02

### 🐛 Bug Fixes

- *(graph)* Resolve home graph issues (#124)
- *(legal_modal)* Make AlertDialog scrollable (#119)
- *(home_charts)* Fix overtime graph not displayed when only 'permitted data' (#115)

### 🚜 Refactor

- *(widget)* Remove unused NoServerSelected widget
- *(lint)* Update lint rules (#114)

### 📚 Documentation

- Add CI/CD workflow documentation

### 🧪 Testing

- *(main)* Add tests (#126)
- *(base)* Add widget tests (#125)
- *(home)* Add widget tests (#121)
- *(logs)* Add tests (#117)
- *(advanced_settings)* Add widget tests (#116)

### ⚙️ Miscellaneous Tasks

- Rename bump version step for clarity and adjust fetch depth
- Refine version extraction condition for release workflows
- Add version bump step in test release (#112)

## [0.9.1_(11)] - 2025-01-25

### 🐛 Bug Fixes

- *(layout)* Fix screen layouts (#106)

### 🧪 Testing

- *(widget)* Add widget tests to improve coverage (#107)

### ⚙️ Miscellaneous Tasks

- Update test workflow to install system dependencies for snar (#111)
- Add test release workflow (#105)

## [0.9.0_(10)] - 2025-01-16

### 🚀 Features

- New beta release

<!-- generated by git-cliff -->
