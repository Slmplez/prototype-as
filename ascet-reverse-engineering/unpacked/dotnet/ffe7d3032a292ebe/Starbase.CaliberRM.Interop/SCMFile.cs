using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("104301B3-72AE-11D5-B316-0800309CC2CE")]
[CoClass(typeof(SCMFileClass))]
public interface SCMFile : ISCMFile
{
}
