const createReactNativeComponentClass = require('react-native/Libraries/Renderer/shims/createReactNativeComponentClass');

const NativeRNTouchbar = createReactNativeComponentClass(() => ('RNTouchbar', {
   validAttributes: {},
   uiViewClassName: 'RNTouchbar'
 }));

export default NativeRNTouchbar;
