using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[CoClass(typeof(CollectionClass))]
[Guid("52082DDC-54F4-11D3-8055-00A0C9AC24E9")]
public interface Collection : IStCollection
{
}
