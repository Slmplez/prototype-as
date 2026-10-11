using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("104301B7-72AE-11D5-B316-0800309CC2CE")]
[CoClass(typeof(XGenericObjectManagerClass))]
public interface XGenericObjectManager : IXGenericObjectManager
{
}
