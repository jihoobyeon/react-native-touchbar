const createReactNativeComponentClass = require('react-native/Libraries/Renderer/shims/createReactNativeComponentClass');

const NativeRNTouchbar = createReactNativeComponentClass('RNTouchbar', () => ({
   validAttributes: {},
   uiViewClassName: 'RCTUIView'
 }));

export default NativeRNTouchbar;
