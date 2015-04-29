# r-lint
[![wercker status](https://app.wercker.com/status/afe1356d3192d53bbeff7e1f0e0b6bee/s "wercker status")](https://app.wercker.com/project/bykey/afe1356d3192d53bbeff7e1f0e0b6bee)

A step to generate coverage on an R package.  Best used with one of the
[rocker](https://registry.hub.docker.com/repos/rocker/) images.  Uploads the
coverage results to codecov.io.

In order for this to work you need to set a protected environment variable
`CODECOV_TOKEN` in your wercker project settings.

```yaml
    - jimhester/r-codecov
```

# License

The MIT License (MIT)

Copyright (c) 2015 Jim Hester

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

# Changelog

## 0.0.3
- Use run_script function

## 0.0.2
- Always install github covr prior to running, and install devtools if needed.

## 0.0.1
- initial release
