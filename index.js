const createReactNativeComponentClass = require('react-native/Libraries/Renderer/shims/createReactNativeComponentClass');

const NativeRNTouchbar = createReactNativeComponentClass('TouchBar', () => ({
   validAttributes: {},
   uiViewClassName: 'RNTouchbarRootView'
 }));

export default NativeRNTouchbar;
