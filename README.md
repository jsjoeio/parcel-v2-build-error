# Parcel v2 Build Error

Reproducing [this issue](https://github.com/parcel-bundler/parcel/issues/6433).

## Reproduction Steps
1. `yarn`
2. `yarn build`

### Expected

Parcel outputs an error.
```javascript
🚨 Build failed.
Error: Bundles must have unique names
AssertionError [ERR_ASSERTION]: Bundles must have unique names
    at BundlerRunner.nameBundles (/Users/jp/Dev/repros/parcel-v2-build-error/node_modules/@parcel/core/lib/requests/BundleGraphRequest.js:482:23)
    at processTicksAndRejections (internal/process/task_queues.js:95:5)
    at async BundlerRunner.bundle (/Users/jp/Dev/repros/parcel-v2-build-error/node_modules/@parcel/core/lib/requests/BundleGraphRequest.js:434:5)
    at async RequestTracker.runRequest (/Users/jp/Dev/repros/parcel-v2-build-error/node_modules/@parcel/core/lib/RequestTracker.js:694:20)
    at async Parcel._build (/Users/jp/Dev/repros/parcel-v2-build-error/node_modules/@parcel/core/lib/Parcel.js:661:25)
    at async Parcel.run (/Users/jp/Dev/repros/parcel-v2-build-error/node_modules/@parcel/core/lib/Parcel.js:510:18)
    at async run (/Users/jp/Dev/repros/parcel-v2-build-error/node_modules/parcel/lib/cli.js:367:7)
```

### Actual

Parcel builds without errors.
