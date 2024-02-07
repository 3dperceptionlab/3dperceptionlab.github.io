# 3D Perception Lab GitHub Pages Website
This website is based on [this theme](https://github.com/raviriley/agency-jekyll-theme). Refer to it for further details.

## Installation
We work with 2 main forms of installation: gh-pages or local deployment.

### Github pages
For github pages we just need to set master branch as deploy branch. In your repository go to Settings, Pages. Select Deploy from a branch, select master branch and save. Check Actions to see the status of the deployment.

### Local deployment (using Docker)
Docker and Docker Compose files have been configured. To create the image run:
```sh
docker build -t 3dpl/web .
```

Then it will be enough by running (in the same directory as the .yml file):
```
docker-compose up       # Creates the container and locally deploys the website available at 0.0.0.0:8080. To stop use Control + C and wait for the container to stop.
docker-compose up -d    # Does the same in a detatched manner
docker-compose stop     # To stop the container when running detatched
docker-compose down     # To stop the container (if running detached) besides removing the container and created networks.
```

## About

This is the [Agency Bootstrap theme](https://startbootstrap.com/themes/agency/), converted to a gem-based Jekyll theme with GitHub Pages support with some extra capabilities:

- GitHub Pages support
- contact form functionality powered by [Formspree.io](https://formspree.io)
- multiple language support (currently English, Spanish, & German)
- custom pages
- 404 page
- legal/Privacy Policy page
- Google Analytics support
- Markdown support
- custom images
- logo support (instead of just title text)
- automatically updating copyright years
- custom navigation bar, even without the header image(s)
- customizable footer
- custom accent color and dark/light colors
- horizontal scrolling support for client section


> :warning: **Notice for those using legacy Formspree contact forms:** :warning:
>
> Email-based forms are being [phased out](https://help.formspree.io/hc/en-us/articles/360056076314) by Formspree. [#11](https://github.com/raviriley/agency-jekyll-theme/pull/11) updated this theme to use the [new Formspree structure](https://help.formspree.io/hc/en-us/articles/360017735154-How-to-prevent-spam). Click [here](https://help.formspree.io/hc/en-us/articles/360056076314) for instructions on updating your site's form.


The Jekyll structure of this theme includes:

- `_portfolio` files - what generate the portfolio grid. YAML front matter handles all the details
- the `page` layout allows custom pages, as seen in the legal and 404 pages
- `sitetext.yml` enables complete customization of all site text
- `navigation.yml` enables fully customizable navigation
- `style.yml` enables fully customizable colors, background images, and other style-related things
