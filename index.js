const createReactNativeComponentClass = require('react-native/Libraries/Renderer/shims/createReactNativeComponentClass');

const NativeRNTouchbar = createReactNativeComponentClass(() => ({
   validAttributes: {},
   uiViewClassName: 'RNTouchbar'
 }));

export default NativeRNTouchbar;
