# Movie maker

```shell
# +---------------------------------+
# |                                 |
# +---------------------------------+
# |                                 |
# |             Action!             |
# |                                 |
# +---------------------------------+
```

## About

This project uses GithubActions to assemble a random movie clip every hour or so. Each of the frames is an image taken from the [Unsplash Dataset](https://github.com/unsplash/datasets).

The movie clip is available in the form of an artifact available in the [release section](https://github.com/oscarnevarezleal/movie-maker/releases).

There is no release history.The artifacts are replaced every time the workflow runs. Making the movie clip unique.

This is a submission for the [2021 GitHub Actions Hackathon](https://dev.to/devteam/join-us-for-the-2021-github-actions-hackathon-on-dev-4hn4) on [DEV](https://dev.to)

## Actions used

- actions/checkout@v2
- actions/cache@v2
- FedericoCarboni/setup-ffmpeg@v1
- actions/upload-artifact@v2
- ncipollo/release-action@v1

## Tech

- [FfMpeg](https://www.ffmpeg.org/)
- [Unsplash Dataset](https://github.com/unsplash/datasets)
- [Github Actions](https://github.com/features/actions)
