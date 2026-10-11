using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[CoClass(typeof(XGenericObjectClass))]
[Guid("104301A3-72AE-11D5-B316-0800309CC2CE")]
public interface XGenericObject : IXGenericObject
{
}
