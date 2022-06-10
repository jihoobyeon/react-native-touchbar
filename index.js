//import { createReactNativeComponentClass } from 'react-native-macos';
const createReactNativeComponentClass = require('react-native/Libraries/Renderer/shims/createReactNativeComponentClass');

const NativeRNTouchbar = createReactNativeComponentClass('TouchBar', () => {
  uiViewClassName: 'RNTouchbar',
  validAttributes: {}
});

export default NativeRNTouchbar;
