# Decide

Decide is a Rails 5 + React application for discussing and voting on topics. This document explains how to get the project running locally, how to run the automated checks, and highlights the most recent changes.

## Prerequisites

Ensure the following tools are installed before setting up the project:

* **Ruby** 2.7 or later (developed against Ruby 2.7.8)
* **Bundler** 2.4+
* **Node.js** 7.9 (to match the front-end toolchain)
* **Yarn** or **npm** for installing JavaScript dependencies
* **PostgreSQL** 9.6 or later

## Installation & Setup

1. **Install Ruby dependencies**

   ```bash
   bundle install
   ```

2. **Configure environment variables**

   Copy `.env.example` to `.env` (create one if it does not exist) and populate any required keys such as database credentials.

3. **Set up the database**

   ```bash
   bundle exec rails db:create db:migrate
   ```

4. **Install JavaScript dependencies**

   ```bash
   npm install
   # or
   yarn install
   ```

5. **Start the application**

   In one terminal window, run the Rails server:

   ```bash
   bundle exec rails server
   ```

   In another window, build the React assets:

   ```bash
   npm run start
   ```

   Visit `http://localhost:3000` in your browser. The navigation bar now includes a "You have been missed" link that opens a refreshed welcome page.

## Running Tests

Execute the full Rails test suite with:

```bash
bundle exec rspec
```

Front-end specs (if any) can be run with:

```bash
npm test
```

### Troubleshooting: offline environments

Both the Ruby and Node dependency installers reach out to public
registries. If you are working in a sandbox without external network
access, `bundle install` and `npm install` will fail with HTTP 403 (or
similar) responses. In that case you will need to configure the
environment to allow outbound access to `rubygems.org` and the npm
registry, or supply an internal mirror that the package managers can
use instead.

## Recent Updates

* Added a dedicated "You have been missed" page that can be accessed from the global navigation.
* Cleaned up the routing configuration to remove duplicate declarations and expose the new page at `/missed`.
* Documented installation, setup, and testing workflows in this README.
* Bumped Rails to 5.1.7 and refreshed key security-sensitive gems (puma 3.12.6, rack 2.0.9, loofah 2.21.4, nokogiri 1.13.10).
* Raised the baseline runtime to Ruby 2.7.8 so the upgraded dependency set remains supported.
