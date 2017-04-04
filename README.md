# About
This projects aims to implement the newly introduced In-App review functionality via a React Native bridge.

Pull requests are very welcome and any additional functionality or enhancements are most welcome.

# Installation (RN Linker)
1. Run `npm install react-native-review --save`

2. Run `react-native link react-native-review`

3. Toggle on In-App Purchases for your App __(Project > Capabilities > In-App Purchases)__

4. Add the following JavaScript to your project:

```
import Review from 'react-native-review';

const appReview = new Review().requestReview();
```

# Manual Installation
1. Run `npm install react-native-review --save`

2. Add RNReview.xcodeprojc to your Projects libraries __(Right click 'Libraries' under your project and select 'Add files to "Project"...')__

3. Add 'lbRNReview.a' to your projects 'Build Phases' __(Project > Build Phases)__

2. Toggle on In-App Purchases for your App __(Project > Capabilities > In-App Purchases)__

3. Add the following JavaScript to your project:

```
import Review from 'react-native-review';

const appReview = new Review().requestReview();
```
