const createReactNativeComponentClass = require('react-native/Libraries/Renderer/shims/createReactNativeComponentClass');

const NativeRNTouchbar = createReactNativeComponentClass('TouchBar', () => ({
   validAttributes: {},
   uiViewClassName: 'TouchBar'
 }));

export default NativeRNTouchbar;
