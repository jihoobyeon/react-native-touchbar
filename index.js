const createReactNativeComponentClass = require('react-native/Libraries/Renderer/shims/createReactNativeComponentClass');

const NativeRCTTouchBar = createReactNativeComponentClass('TouchBar', () => ({
   validAttributes: {},
   uiViewClassName: 'RCTTouchBar'
 }));

export default NativeRCTTouchBar;
