const createReactNativeComponentClass = require('react-native/Libraries/Renderer/shims/createReactNativeComponentClass');

const NativeRNTouchbar = createReactNativeComponentClass('RNTouchbar', () => ({
   validAttributes: {},
   uiViewClassName: 'RCTRootView'
 }));

export default NativeRNTouchbar;
