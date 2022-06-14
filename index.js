const createReactNativeComponentClass = require('react-native/Libraries/Renderer/shims/createReactNativeComponentClass');

const NativeRCTTouchBar = createReactNativeComponentClass('RCTTouchBar', () => ({
   validAttributes: {},
   uiViewClassName: 'RCTTouchBar'
 }));

export default NativeRCTTouchBar;
