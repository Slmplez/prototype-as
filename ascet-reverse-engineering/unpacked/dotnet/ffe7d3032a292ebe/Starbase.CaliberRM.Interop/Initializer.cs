using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[CoClass(typeof(InitializerClass))]
[Guid("3709431F-0757-49B8-909B-99BD777C9BD0")]
public interface Initializer : IStInitializer
{
}
