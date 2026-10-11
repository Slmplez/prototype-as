using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[CoClass(typeof(StateListenerClass))]
[Guid("10430167-72AE-11D5-B316-0800309CC2CE")]
public interface StateListener : IStateListener
{
}
