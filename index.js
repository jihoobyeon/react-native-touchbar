const createReactNativeComponentClass = require('react-native/Libraries/Renderer/shims/createReactNativeComponentClass');

const NativeRNTouchbar = createReactNativeComponentClass('RNTouchbar', () => ({
   validAttributes: {},
   uiViewClassName: 'RCTView'
 }));

export default NativeRNTouchbar;
