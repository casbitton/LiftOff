# LiftOff
Bulk downloader for wallpaper from interfacelift.com, Edit the script if you require alternative or custom resolutions.

Run the script, get the wallpaper! 🖼️

~~~
./liftoff.sh

Widescreen 16:9
-------------------
- 6400x3600
- 5120x2880
- 4096x2304
- 3840x2160
- 3200x1800
- 2880x1620
- 2560x1440
- 1920x1080

Widescreen 16:10
-------------------
- 6400x4000
- 5120x3200
- 3840x2400
- 3360x2100
- 2880x1800
- 2560x1600
- 2304x1440
- 2048x1280
- 1920x1200

Ultrawide 21:9
-------------------
- 3840x1600
- 3440x1440
- 2560x1080

~ Select Resolution: 3840x1600
3840x1600 Selected
~ Pages to Search: 1
~ New images will be saved to 3840x1600/
~ Bees deployed! Search and Download in progress
~ All Done!
~ 3840x1600/ now contains 8 images

~~~

## Misc

### Updates and Backfill
```wget``` will check to see if you have the requested image already, there is no need to download it twice 🧙‍♂️. If you decide to rerun the script every month or so it's quick to top up the folder with the latest images.

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
