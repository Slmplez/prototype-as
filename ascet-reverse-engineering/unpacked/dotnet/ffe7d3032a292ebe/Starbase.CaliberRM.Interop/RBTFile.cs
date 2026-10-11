using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[CoClass(typeof(RBTFileClass))]
[Guid("104301AF-72AE-11D5-B316-0800309CC2CE")]
public interface RBTFile : IRBTFile
{
}
