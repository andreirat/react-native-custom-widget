## WORK IN PROGRESS 🚨

# react-native-custom-widget

React Native custom widget

## Introduction 👨‍🏫

This library allows you to call essential methods from the iOS "WidgetKit Framework", which are needed when developing a widget. For example updating the widget timelines.

🚨 To be on the safe side: This library exposes API functionality of <a href="https://developer.apple.com/documentation/widgetkit/">WidgetKit</a>. The widgets themselves must be developed natively in SwiftUI.

## Installation

```sh
npm install react-native-custom-widget
```

## Usage

```js
import { setItem } from 'react-native-custom-widget';

// ...

const result = await setItem('Text', 'com.example.widget');
```

## Contributing

See the [contributing guide](CONTRIBUTING.md) to learn how to contribute to the repository and the development workflow.

---
---

## [Contributors 🤓](#Contributors)

| [<img alt="Andrei Rat" src="https://avatars.githubusercontent.com/u/17424445?v=4" width="117">](https://github.com/andreirat) |     |
|-------------------------------------------------------------------------------------------------------------------------------| --- |
| <p align="center">[Andrei Rat](https://github.com/andreirat) </p>                                                             |

## License

MIT

---

Made with [create-react-native-library](https://github.com/callstack/react-native-builder-bob)
