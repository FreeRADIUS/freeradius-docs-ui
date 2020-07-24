# FreeRadius Wiki Theme

A modification of the default Antora docs theme.

## Development

From the ui theme dir run `npm run dev` or `gulp preview` to develop using sample content

## Deploying

Run `npm run stage` which combines the `gulp` `npm run build` and `surge` commands.

Otherwise you can run these steps individually:

Run `gulp` to build ui theme zip file.

Then to build the site using this theme with antora use this command:

`antora site.yml`

To stage the built site use the follwing surge command:

`npx surge prod-build --domain freeradius-wiki.surge.sh`

the site can then be previewed at [https://freeradius-wiki.surge.sh/freeradius-server/latest/](https://freeradius-wiki.surge.sh/freeradius-server/latest/)
