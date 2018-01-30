# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/)
and this project adheres to [Semantic Versioning](http://semver.org/spec/v2.0.0.html).

## [Unreleased](https://github.com/consul/consul/compare/v0.12...consul:master)

### Added
- Added Drafting phase to Budgets https://github.com/consul/consul/pull/2285
- Added 'Publish investments price' phase to Budgets https://github.com/consul/consul/pull/2296
- Allow admins to destroy budgets without investments https://github.com/consul/consul/pull/2283
- Added rubocop-rspec gem, enabled cops one by one fixing offenses.
- Added CSV download link to budget_investments https://github.com/consul/consul/pull/2147
- Added Capistrano task to automate maintenance mode https://github.com/consul/consul/pull/1932
- Added actions to edit and delete a budget's headings https://github.com/consul/consul/pull/1917
- Allow Budget Investments to be Related to other content https://github.com/consul/consul/pull/2311
- New Budget::Phase model to add dates, enabling and more https://github.com/consul/consul/pull/2323
- Add optional Guide page to help users decide between Proposal & Investment creation https://github.com/consul/consul/pull/2343
- Add advanced search menu to investments list https://github.com/consul/consul/pull/2142
- Allow admins to edit Budget phases https://github.com/consul/consul/pull/2353
- Budget new Information phase https://github.com/consul/consul/pull/2349

### Changed
- Updated multiple minor & patch gem versions thanks to [Depfu](https://depfu.com)
- Updated rubocop version and ignored all cops by default
- Removed legislation section arrows and duplicate html tag thanks to [xarlybovi](https://github.com/xarlybovi) https://github.com/consul/consul/issues/1704
- Display proposal and investment image when sharing in social networks https://github.com/consul/consul/pull/2202
- Redirect admin to budget lists after edit https://github.com/consul/consul/pull/2284
- Improve budget investment form https://github.com/consul/consul/pull/2280
- Prevent edition of investments if budget is in the final phase https://github.com/consul/consul/pull/2223
- Split 'routes.rb' file into multiple small files https://github.com/consul/consul/pull/1908
- Design Improvements https://github.com/consul/consul/pull/2327
- Change concept of current budget to account for multiple budgets https://github.com/consul/consul/pull/2322
- Investment valuation finished alert https://github.com/consul/consul/pull/2324
- Updated translations to other languages from Crowdin contributions https://github.com/consul/consul/pull/2347 especial mention to @ferraniki for 100% Valencian translation!
- Finished budgets list order https://github.com/consul/consul/pull/2355
- Improvements for Admin::Budget::Investment filters https://github.com/consul/consul/pull/2344
- Clean up Travis logs https://github.com/consul/consul/pull/2357
- Advanced filters design https://github.com/consul/consul/pull/2379

### Deprecated
- Budget's `description_*` columns will be erased from database in next release. Please run rake task `budgets:phases:generate_missing` to migrate them. Details at Warning section of https://github.com/consul/consul/pull/2323
- Budget::Investment's `internal_comments` attribute usage was removed, because of https://github.com/consul/consul/pull/2403, run rake task `investments:internal_comments:migrate_to_thread` to migrate existing values to the new internal comments thread. In next release database column will be removed.

### Removed
- Spending Proposals urls from sitemap, that model is getting entirely deprecated soon.

### Fixed
- Fixed deprecation warning in specs https://github.com/consul/consul/pull/2293
- Fix social images meta tags https://github.com/consul/consul/pull/1124

### Security
- Upgraded Paperclip version up to 5.2.1 to fix security problem https://github.com/consul/consul/pull/2393

## [0.12.0](https://github.com/consul/consul/compare/v0.11...v0.12) - 2018-01-03

### Added
- Added Images to Budget Investment's Milestones https://github.com/consul/consul/pull/2186
- Added Documents to Budget Investment's Milestones https://github.com/consul/consul/pull/2191
- Added Publication Date Budget Investment's Milestones https://github.com/consul/consul/pull/2188
- New setting `feature.allow_images` to allow upload and show images for both (proposals and budget investment projects). Set it manually through console with `Setting['feature.allow_images'] = true`
- Related Content feature. Now Debates & Proposals can be related https://github.com/consul/consul/issues/1164
- Map validations https://github.com/consul/consul/pull/2207
- Added spec for 'rake db:dev_seed' task https://github.com/consul/consul/pull/2201
- Adds timestamps to polls https://github.com/consul/consul/pull/2180 (Run `rake polls:initialize_timestamps` to initialize attributes created_at and updated_at with the current time for all existing polls, or manually through console set correct values)

### Changed
- Some general Design improvements https://github.com/consul/consul/pull/2170 https://github.com/consul/consul/pull/2198
- Improved Communities design https://github.com/consul/consul/pull/1904
- Made Milestones description required & hided title usage https://github.com/consul/consul/pull/2195
- Improved generic error message https://github.com/consul/consul/pull/2217
- Improved Sitemap for SEO https://github.com/consul/consul/pull/2215

### Fixed
- Notifications for hidden resources https://github.com/consul/consul/pull/2172
- Notifications exceptions https://github.com/consul/consul/pull/2187
- Fixed map location update https://github.com/consul/consul/pull/2213

## [0.11.0](https://github.com/consul/consul/compare/v0.10...v0.11) - 2017-12-05

### Added
- Allow social media image meta tags to be overwritten https://github.com/consul/consul/pull/1756 & https://github.com/consul/consul/pull/2153
- Allow users to verify their account against a local Census https://github.com/consul/consul/pull/1752
- Make Proposals & Budgets Investments followable by users https://github.com/consul/consul/pull/1727
- Show user followable activity on public user page https://github.com/consul/consul/pull/1750
- Add Budget results view & table https://github.com/consul/consul/pull/1748
- Improved Budget winners calculations https://github.com/consul/consul/pull/1738
- Allow Documents to be uploaded to Proposals and Budget Investments https://github.com/consul/consul/pull/1809
- Allow Communities creation on Proposals and Budget Investments (Run rake task 'communities:associate_community') https://github.com/consul/consul/pull/1815 https://github.com/consul/consul/pull/1833
- Allow user to geolocate Proposals and Budget Investments on a map https://github.com/consul/consul/pull/1864
- Legislation Process Proposals https://github.com/consul/consul/pull/1906
- Autocomplete user tags https://github.com/consul/consul/pull/1905
- GraphQL API docs https://github.com/consul/consul/pull/1763
- Show recommended proposals and debates to users based in their interests https://github.com/consul/consul/pull/1824
- Allow images & videos to be added to Poll questions https://github.com/consul/consul/pull/1835 https://github.com/consul/consul/pull/1915
- Add Poll Shifts, to soon replace Poll OfficerAssignments usage entirely (for now just partially)
- Added dropdown menu for advanced users https://github.com/consul/consul/pull/1761
- Help text headers and footers https://github.com/consul/consul/pull/1807
- Added a couple of steps for linux installation guidelines https://github.com/consul/consul/pull/1846
- Added TotalResult model, to replace Poll::FinalRecount https://github.com/consul/consul/pull/1866 1885
- Preview Budget Results by admins https://github.com/consul/consul/pull/1923
- Added comments to Polls https://github.com/consul/consul/pull/1961
- Added images & videos to Polls https://github.com/consul/consul/pull/1990 https://github.com/consul/consul/pull/1989
- Poll Answers are orderable now https://github.com/consul/consul/pull/2037
- Poll Booth Assigment management https://github.com/consul/consul/pull/2087
- Legislation processes documents https://github.com/consul/consul/pull/2084
- Poll results https://github.com/consul/consul/pull/2082
- Poll stats https://github.com/consul/consul/pull/2075
- Poll stats on admin panel https://github.com/consul/consul/pull/2102
- Added investment user tags admin interface https://github.com/consul/consul/pull/2068
- Added Poll comments to GraphQL API https://github.com/consul/consul/pull/2148
- Added option to unassign Valuator role https://github.com/consul/consul/pull/2110
- Added search by name/email on several Admin sections https://github.com/consul/consul/pull/2105
- Added Docker support https://github.com/consul/consul/pull/2127 & documentation https://consul_docs.gitbooks.io/docs/content/en/getting_started/docker.html
- Added population restriction validation on Budget Headings https://github.com/consul/consul/pull/2115
- Added a `/consul.json` route that returns installation details (current release version and feature flags status) for a future dashboard app https://github.com/consul/consul/pull/2164

### Changed
- Gem versions locked & cleanup https://github.com/consul/consul/pull/1730
- Upgraded many minor versions https://github.com/consul/consul/pull/1747
- Rails 4.2.10 https://github.com/consul/consul/pull/2128
- Updated Code of Conduct to use contributor covenant 1.4  https://github.com/consul/consul/pull/1733
- Improved consistency to all "Go back" buttons https://github.com/consul/consul/pull/1770
- New CONSUL brand https://github.com/consul/consul/pull/1808
- Admin panel redesign https://github.com/consul/consul/pull/1875 https://github.com/consul/consul/pull/2060
- Swapped Poll White/Null/Total Results for Poll Recount https://github.com/consul/consul/pull/1963
- Improved Poll index view https://github.com/consul/consul/pull/1959 https://github.com/consul/consul/pull/1987
- Update secrets and deploy secrets example files https://github.com/consul/consul/pull/1966
- Improved Poll Officer panel features
- Consistency across all admin profiles sections https://github.com/consul/consul/pull/2089
- Improved dev_seeds with more Poll content https://github.com/consul/consul/pull/2121
- Comment count now updates live after publishing a new one https://github.com/consul/consul/pull/2090

### Removed
- Removed Tolk gem usage, we've moved to Crowdin service https://github.com/consul/consul/pull/1729
- Removed Polls manual recounts (model Poll::FinalRecount) https://github.com/consul/consul/pull/1764
- Skipped specs for deprecated Spending Proposal model https://github.com/consul/consul/pull/1773
- Moved Documentation to https://github.com/consul/docs https://github.com/consul/consul/pull/1861
- Remove Poll Officer recounts, add Final & Totals votes https://github.com/consul/consul/pull/1919
- Remove deprecated Poll results models https://github.com/consul/consul/pull/1964
- Remove deprecated Poll::Question valid_answers attribute & usage https://github.com/consul/consul/pull/2073 https://github.com/consul/consul/pull/2074

### Fixed
- Foundation settings stylesheet https://github.com/consul/consul/pull/1766
- Budget milestone date localization https://github.com/consul/consul/pull/1734
- Return datetime format for en locale https://github.com/consul/consul/pull/1795
- Show bottom proposals button only if proposals exists https://github.com/consul/consul/pull/1798
- Check SMS verification in a more consistent way https://github.com/consul/consul/pull/1832
- Allow only YouTube/Vimeo URLs on 'video_url' attributes https://github.com/consul/consul/pull/1854
- Remove empty comments html https://github.com/consul/consul/pull/1862
- Fixed admin/poll routing errors https://github.com/consul/consul/pull/1863
- Display datepicker arrows https://github.com/consul/consul/pull/1869
- Validate presence poll presence on Poll::Question creation https://github.com/consul/consul/pull/1868
- Switch flag/unflag buttons on use via ajax https://github.com/consul/consul/pull/1883
- Flaky specs fixed https://github.com/consul/consul/pull/1888
- Fixed link back from moderation dashboard to root_path https://github.com/consul/consul/pull/2132
- Fixed Budget random pagination order https://github.com/consul/consul/pull/2131
- Fixed `direct_messages_max_per_day` set to nil https://github.com/consul/consul/pull/2100
- Fixed notification link error when someone commented a Topic https://github.com/consul/consul/pull/2094
- Lots of small UI/UX/SEO/SEM improvements

## [0.10.0](https://github.com/consul/consul/compare/v0.9...v0.10) - 2017-07-05
### Added
- Milestones on Budget Investment's
- Feature flag to enable/disable Legislative Processes
- Locale site pages customization
- Incompatible investments

### Changed
- Localization files reorganization. Check migration instruction at https://github.com/consul/consul/releases/tag/v0.10
- Rails 4.2.9

## [0.9.0](https://github.com/consul/consul/compare/v0.8...v0.9) - 2017-06-15
### Added
- Budgets
- Basic polls
- Collaborative legistlation
- Custom pages
- GraphQL API
- Improved admin section

### Changed
- Improved admin section
- Rails 4.2.8
- Ruby 2.3.2

### Deprecated
- SpendingProposals are deprecated now in favor of Budgets

### Fixed
- CKEditor locale compilation fixed
- Fixed bugs in mobile layouts

## [0.8.0](https://github.com/consul/consul/compare/v0.7...v0.8)- 2016-07-21
### Added
- Support for customization schema, vía specific custom files, assets and folders

### Changed
- Rails 4.2.7
- Ruby 2.3.1

### Fixed
- Fixed bug causing errors on user deletion

## [0.7.0] - 2016-04-25
### Added
- Debates
- Proposals
- Basic Spending Proposals

### Changed
- Rails 4.2.6
- Ruby 2.2.3

[Unreleased]: https://github.com/consul/consul/compare/v0.12...consul:master
[0.12.0]: https://github.com/consul/consul/compare/v0.11...v0.12
[0.11.0]: https://github.com/consul/consul/compare/v0.10...v0.11
[0.10.0]: https://github.com/consul/consul/compare/v0.9...v0.10
[0.9.0]: https://github.com/consul/consul/compare/v0.8...v0.9
[0.8.0]: https://github.com/consul/consul/compare/v0.7...v0.8
