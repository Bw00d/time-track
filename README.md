# What Did I Do With My Time

## Summary
This is a simple activity tracking application to help identify how I spend my time throughout the day.. 

For it to be truly effective it will need quite a deal of interaction with the app, setting current activity continuously throughout the day. I'm sure this will be challenging, and will while likely require notifications to make sure I keep it up to the moment. I have not experimented with notifications yet so this will provide a good opportunity.

## Features
It consists of a Rails 5.1.7 app, including:
- A selection of useful gems for development and debugging such as
[rubocop](https://github.com/bbatsov/rubocop),
[brakeman](https://github.com/presidentbeef/brakeman),
[awesome_print](https://github.com/awesome-print/awesome_print),
[byebug](https://github.com/deivid-rodriguez/byebug), and
[better_errors](https://github.com/charliesome/better_errors).
- Preconfigured test environment, including:
    - [RSpec](http://rspec.info),
    [FactoryGirl](https://github.com/thoughtbot/factory_girl),
    [Capybara](https://github.com/teamcapybara/capybara) configured to work with
    [Selenium](http://www.seleniumhq.org/projects/webdriver/) and
    [ChromeDriver](https://sites.google.com/a/chromium.org/chromedriver/),
    [Database Cleaner](https://github.com/DatabaseCleaner/database_cleaner),
    and [SimpleCov](https://github.com/colszowka/simplecov).
    - General purpose test helpers, custom matchers and shared examples in
    [spec/support](https://github.com/brunofacca/zen-rails-base-app/tree/master/spec/support).
    
- Preconfigured authentication with the [Devise
gem](https://github.com/plataformatec/devise).
- Preconfigured authorization with the [Pundit
gem](https://github.com/elabs/pundit).
- Internationalization (i18n)
  - All of the base application's strings are in YML dictionaries. This is
  arguably a good practice even for single language applications. Having an
  internationalized base application makes it easier and faster to translate
  elements like Devise, the layout and error messages when creating a single
  language app in a non-English language.
  - Methods for translating enum attributes, including the generation of
  translated options for select boxes. Implemented and documented in
  [app/models/application_record.rb](https://github.com/brunofacca/zen-rails-base-app/blob/master/app/models/application_record.rb)
- jQuery
- HTML Layouts developed with Bootstrap 3 ([bootstrap-sass
gem](https://github.com/twbs/bootstrap-sass)) to use as a starting point,
including:
    - Navigation bar;
    - Displaying of flash messages and validation errors as Bootstrap alerts;
    - Role-based layout switching: different layouts for guests 
    (unauthenticated users), ordinary users and admins;
- Controller concerns such as `SkipAuthorization`.
- User-friendly error messages (flash) on exceptions such as 
`ActiveRecord::DeleteRestrictionError` and `Pundit::NotAuthorizedErrorand`.
- User management interface for admins in `/admin/users` with pagination
([kaminari gem](https://github.com/kaminari/kaminari)) and searching/filtering 
([ransack
gem](https://github.com/activerecord-hackery/ransack)). Accessible only by 
users with "admin" role. 
- Seed users for the development environment.
- Contact form built with the [mail_form
gem](https://github.com/plataformatec/mail_form).
- E-mails "sent" in the development environment are saved as html files in
`tmp/letter_opener` ([letter_opener
gem](https://github.com/ryanb/letter_opener)).
- The following JavaScript libraries:
  - [Select2](https://github.com/select2/select2) for better select boxes.
  - [SweetAlert2](https://github.com/limonte/sweetalert2) for better JS popups,
  including the replacement of the default `data-confirm` confirmation by a
  better-looking version.
  - ZenUtils: a small JavaScript library consisting of utility functions. See
  [app/assets/javascripts/zen-utils.js](https://github.com/brunofacca/zen-rails-base-app/blob/master/app/assets/javascripts/zen-utils.js).  
- SCSS utility classes for alignment, spacing and font size standardization. See
[app/assets/stylesheets/utility-classes.scss](https://github.com/brunofacca/zen-rails-base-app/blob/master/app/assets/stylesheets/utility-classes.scss).
- High test coverage.

## Development Environment Dependencies
- Ruby 2.4.9
- [Yarn](https://yarnpkg.com/en/docs/install)
- Required for running JavaScript-enabled feature specs:
    - [Selenium](http://www.seleniumhq.org/projects/webdriver/)
    - [ChromeDriver](https://sites.google.com/a/chromium.org/chromedriver/)
    - [Xvfb](https://www.x.org/archive/X11R7.6/doc/man/man1/Xvfb.1.xhtml) if
    running feature specs on a console-only (no graphical interface) *nix
    environment.

Consider using my [Zen Rails Development
Environment](https://github.com/brunofacca/rails-development-environment). It
 consists of a Ubuntu 16.04 (Xenial Xerus) Vagrant VM with all of the 
 above dependencies preinstalled.

## Usage
Setup tasks such as configuring  time zones, default locale and action mailer
(e.g., SMTP or transactional e-mail service) are not included in the following
steps as they are not specific to this base app.

  
1. Before attempting to run the application or its test suite, run `rails 
db:create db:migrate db:seed` within the project's root directory. That will 
create the following seed users:
    - Ordinary user: email: `user@test.com` / password: `Devpass1`
    - Admin user: email: `admin@test.com` / password: `Devpass1`

2. Customize the application colors by overwriting Bootstrap's variables in 
`app/assets/stylesheets/global.scss`.
3. Remove unused items from the application, such as gems from the `Gemfile`, 
RSpec helpers, custom matchers and shared examples from `spec/support`. 
4. Consider going through the [Zen Rails Security
Checklist](https://github.com/brunofacca/zen-rails-security-checklist) before
deploying the application to production.

## TODO
- Install and configure the [Secure Headers
gem](https://github.com/twitter/secureheaders).
- Set up CodeClimate with Rubocop, Reek, Brakeman, and ESLint engines.
- Set up continuous integration.
- Use Yarn instead of gems to install front end libraries such as jQuery and 
Select2.
- Add an asterisk to the labels of required form fields.
- Internationalize and translate the JS front end, mainly `global.js` and 
`zen-utils.js`.
- Build interface to edit Slots.
- Fix js so current slot is displayed.
- Set up search to view slots by day.
- Build a statistics page.
- Set up notifications.
- Fix the test suite
========================

##TestRSpec
---------

  Quick Start
  ===========
  
  TestRSpec allows you to run RSpec from within Sublime Text.
  
  TestRSpec tries its best to autodetect how to run RSpec. However, you might need to make
  adjustments to plugin's configuration if you have an uncommon setup.
  
  Documentation: https://github.com/astrauka/TestRSpec
  
  Default Keybindings
  ===================
  
  Launch RSpec for:
  
  - Current file:             Super+Shift+T
  - Current line:             Super+Shift+R
  - Rerun last run command:   Super+Shift+E
  
  Other commands:
  
  - Switch between code and spec:   Super+.
  - Create a spec:                  Super+Shift+C
  - Copy last run command:          Super+Shift+,
  - Close output panel:             Esc
  - Reveal output panel:            Super+Shift+X
  
  Super key is either Win or Cmd, depending on platform.
  
  Suggested Settings
  ==================
  
  Set `show_errors_inline` to `false` in your global settings.
  
  Having an Issue?
  ================
  
  Refer to the troubleshooting section at https://github.com/astrauka/TestRSpec
  
  Please report issues and suggestions there.

## Authors

- This app was build off the zen-rails-base-app(https://github.com/brunofacca/zen-rails-base-app) by **Bruno Facca** - [Twitter](https://twitter.com/bruno_facca) - 


## License

Released under the [MIT License](https://opensource.org/licenses/MIT).
