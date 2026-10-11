using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[CoClass(typeof(FileReferenceClass))]
[Guid("10430069-72AE-11D5-B316-0800309CC2CE")]
public interface FileReference : IFileReference
{
}
