using System;
using System.IO;

class AscetReadEndpointTests
{
    static byte[] Table(params uint[][] rows)
    {
        using (var stream = new MemoryStream())
        using (var writer = new BinaryWriter(stream)) {
            writer.Write((uint)rows.Length);
            foreach (var row in rows) foreach (var field in row) writer.Write(field);
            return stream.ToArray();
        }
    }
    static uint[] Row(uint pid, uint port, uint state, uint address)
    {
        return new uint[] { state, address, ((port & 255) << 8) | (port >> 8), 0, 0, pid };
    }
    static void Refuses(byte[] table, int port)
    {
        try { AscetReadProbe.ListenerPID(table, port); }
        catch (Exception) { return; }
        throw new Exception("Expected malformed/missing/ambiguous listener refusal");
    }
    static int Main()
    {
        var matching = Row(123, 32503, 2, 0x0100007f);
        if (AscetReadProbe.ListenerPID(Table(matching), 32503) != 123) throw new Exception("Exact owner mismatch");
        if (AscetReadProbe.ListenerPID(Table(matching, Row(123, 32503, 2, 0)), 32503) != 123) throw new Exception("Duplicate binding mismatch");
        if (AscetReadProbe.ListenerPID(Table(Row(456, 32504, 2, 0), Row(456, 32503, 5, 0), Row(456, 32503, 2, 0x0200007f), matching), 32503) != 123)
            throw new Exception("Other connections affected exact listener selection");
        Refuses(Table(matching, Row(456, 32503, 2, 0)), 32503);
        Refuses(Table(Row(0, 32503, 2, 0)), 32503);
        Refuses(Table(Row(UInt32.MaxValue, 32503, 2, 0)), 32503);
        Refuses(Table(Row(456, 32504, 2, 0)), 32503);
        Refuses(Table(Row(456, 32503, 5, 0)), 32503);
        Refuses(Table(), 32503);
        Refuses(new byte[3], 32503);
        Refuses(BitConverter.GetBytes(UInt32.MaxValue), 32503);
        Refuses(Table(matching), 0);
        Refuses(Table(matching), 65536);
        Console.WriteLine("13 native endpoint parser cases passed; no ASCET connection");
        return 0;
    }
}
