using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("104301A9-72AE-11D5-B316-0800309CC2CE")]
[CoClass(typeof(FileStaticsClass))]
public interface FileStatics : IFileStatics
{
}
