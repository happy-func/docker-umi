# docker-umi

## Getting Started

```bash
$ docker build . -t docker-umi
```
## 问题描述
>宿主机可安装依赖,但是用docker打镜像不行。如果把我们的现有项目Copy进node镜像，进入容器内部就又可以正常安装依赖了。所以猜测是在打镜像的时候不能去读这个文件夹。
## Error Message

```bash
 => CACHED [ui_builder 3/7] WORKDIR /data/customer                                                                                                                                                                                    0.0s
 => [ui_builder 4/7] COPY package.json yarn.lock ./                                                                                                                                                                                   0.5s
 => ERROR [ui_builder 5/7] RUN yarn                                                                                                                                                                                                 162.4s
------
 > [ui_builder 5/7] RUN yarn:
#11 2.140 yarn install v1.22.15
#11 2.354 [1/4] Resolving packages...
#11 2.928 [2/4] Fetching packages...
#11 75.35 info fsevents@2.3.2: The platform "linux" is incompatible with this module.
#11 75.35 info "fsevents@2.3.2" is an optional dependency and failed compatibility check. Excluding it from installation.
#11 75.44 info fsevents@1.2.13: The platform "linux" is incompatible with this module.
#11 75.44 info "fsevents@1.2.13" is an optional dependency and failed compatibility check. Excluding it from installation.
#11 75.45 [3/4] Linking dependencies...
#11 75.46 warning " > @ant-design/pro-layout@6.34.1" has unmet peer dependency "antd@>=4.18.0".
#11 75.46 warning "@ant-design/pro-layout > @ant-design/pro-provider@1.6.0" has unmet peer dependency "antd@>=4.18.0".
#11 75.46 warning "@ant-design/pro-layout > @ant-design/pro-utils@1.35.3" has unmet peer dependency "antd@>=4.18.0".
#11 75.46 warning "@ant-design/pro-layout > @ant-design/pro-utils > react-sortable-hoc@2.0.0" has unmet peer dependency "prop-types@^15.5.7".
#11 75.46 warning " > react-quill@1.3.5" has incorrect peer dependency "react@^0.14.9 || ^15.3.0 || ^16.0.0".
#11 75.47 warning " > @umijs/plugin-qiankun@2.36.0" has incorrect peer dependency "react@16".
#11 75.47 warning " > @umijs/plugin-qiankun@2.36.0" has incorrect peer dependency "react-dom@16".
#11 75.47 warning " > @umijs/plugin-qiankun@2.36.0" has unmet peer dependency "webpack@^4.41.0".
#11 75.47 warning "@umijs/preset-react > @umijs/plugin-layout@0.18.1" has unmet peer dependency "@ant-design/icons@^4.0.0".
#11 75.47 warning "@umijs/preset-react > @umijs/plugin-dva > babel-plugin-dva-hmr@0.4.2" has unmet peer dependency "redbox-react@1.x".
#11 75.47 warning "@umijs/preset-react > @umijs/plugin-dva > dva@2.6.0-beta.22" has incorrect peer dependency "react@^16.8.4".
#11 75.47 warning "@umijs/preset-react > @umijs/plugin-dva > dva@2.6.0-beta.22" has incorrect peer dependency "react-dom@^16.8.4".
#11 75.47 warning "@umijs/preset-react > @umijs/plugin-dva > dva-loading@3.0.22" has unmet peer dependency "dva-core@^1.1.0 | ^1.5.0-0 | ^1.6.0-0".
#11 75.47 warning "@umijs/preset-react > @umijs/plugin-locale > react-intl@3.12.1" has incorrect peer dependency "react@^16.3.0".
#11 75.47 warning "@umijs/preset-react > @umijs/plugin-dva > dva > connected-react-router@6.5.2" has incorrect peer dependency "react@^16.4.0".
#11 75.47 warning "@umijs/preset-react > @umijs/plugin-dva > dva > connected-react-router@6.5.2" has unmet peer dependency "react-router@^4.3.1 || ^5.0.0".
#11 132.2 [4/4] Building fresh packages...
#11 141.5 $ umi generate tmp
#11 143.5 ENOENT: no such file or directory, open '/data/customer/src/.umi/umi.ts'
#11 143.5 Error: ENOENT: no such file or directory, open '/data/customer/src/.umi/umi.ts'
#11 143.5     at Object.openSync (fs.js:497:3)
#11 143.5     at Object.readFileSync (fs.js:393:35)
#11 143.5     at Object.fn (/data/customer/node_modules/umi-plugin-mf-bootstrap/dist/index.js:9:21)
#11 143.5     at /data/customer/node_modules/@umijs/core/lib/Service/Service.js:623:28
#11 143.5     at Generator.next (<anonymous>)
#11 143.5     at asyncGeneratorStep (/data/customer/node_modules/@umijs/core/lib/Service/Service.js:110:103)
#11 143.5     at _next (/data/customer/node_modules/@umijs/core/lib/Service/Service.js:112:194)
#11 143.5     at /data/customer/node_modules/@umijs/core/lib/Service/Service.js:112:364
#11 143.5     at new Promise (<anonymous>)
#11 143.5     at /data/customer/node_modules/@umijs/core/lib/Service/Service.js:112:97
#11 143.5 error Command failed with exit code 1.
#11 143.5 info Visit https://yarnpkg.com/en/docs/cli/install for documentation about this command.
------
executor failed running [/bin/sh -c yarn]: exit code: 1

```
