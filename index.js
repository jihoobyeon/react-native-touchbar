//import { createReactNativeComponentClass } from 'react-native-macos';
const createReactNativeComponentClass = require('react-native/Libraries/Renderer/shims/createReactNativeComponentClass');

const NativeRNTouchbar = createReactNativeComponentClass('TouchBar', () => {
  validAttributes: {},
  uiViewClassName: 'RNTouchbar'
});

export default NativeRNTouchbar;
