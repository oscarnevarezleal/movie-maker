# Movie maker

This project uses GithubActions to assemble and release a random movie clip every hour or so.

Each of the frames is a code-generated image. Featured image is fetched using [Pexel API](https://www.pexels.com/)

This is a submission for the [2021 GitHub Actions Hackathon](https://dev.to/devteam/join-us-for-the-2021-github-actions-hackathon-on-dev-4hn4) on [DEV](https://dev.to)

## Actions used

- actions/checkout@v2
- actions/setup-go@v2
- goreleaser/goreleaser-action@v2
- FedericoCarboni/setup-ffmpeg@v1
- actions/upload-artifact@v2
- ncipollo/release-action@v1

## Tech

- [FfMpeg](https://www.ffmpeg.org/)
- [GoLang](https://golang.org/)
- [generativeart](github.com/jdxyw/generativeart)
- [Github Actions](https://github.com/features/actions)
