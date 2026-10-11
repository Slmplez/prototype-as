using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("1043018B-72AE-11D5-B316-0800309CC2CE")]
[CoClass(typeof(TestDirectorObjectClass))]
public interface TestDirectorObject : ITestDirectorObject
{
}
