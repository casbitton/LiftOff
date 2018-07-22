# LiftOff
Bulk downloader for wallpaper from interfacelift.com, Edit the script if you require alternative or custom resolutions.

Run the script, get the wallpaper! 🖼

~~~
./liftoff.sh

[1] 1920x1080
[2] 2560x1440
[3] 3840x2160

Select Resolution: 1
Pages to Search: 1

~ New images will be saved to 1920x1080/
~ Bees deployed! Search and Download in progress

[ List of files downloading here ]

~ All Done!
~ 1920x1080/ now contains 10 images

~~~

## Misc

### Updates and Backfill
```wget``` will check to see if you have the requested image already, there is no need to download it twice 🧙‍. If you decide to rerun the script every month or so it's quick to top up the folder with the latest images.

### Soft Page Limit
There is an artificial limit of 300 pages, this block can be removed if you like to live dangerously. Each page will typically contain 10 Images, this can balloon quickly and will rapidly consume disk space!

### Mac OS?
You are unfortunately missing a few key features from `grep`!

Update `grep` with [Homebrew](https://brew.sh "Brew") 😇

```
brew install grep --with-default-names
grep --version
grep (GNU grep) 3.1
Packaged by Homebrew
```

Give it another whirl 👌

#### This script will probably stop working one day 💣
