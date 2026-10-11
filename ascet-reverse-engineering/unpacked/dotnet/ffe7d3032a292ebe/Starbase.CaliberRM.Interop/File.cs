using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[CoClass(typeof(FileClass))]
[Guid("104301A7-72AE-11D5-B316-0800309CC2CE")]
public interface File : IFile
{
}
