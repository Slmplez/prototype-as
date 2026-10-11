/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdi.internal.spy;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.Field;
import org.eclipse.jdi.internal.spy.JdwpCommandPacket;
import org.eclipse.jdi.internal.spy.JdwpReplyPacket;

public abstract class JdwpPacket {
    public static final byte FLAG_REPLY_PACKET = -128;
    protected static final int MIN_PACKET_LENGTH = 11;
    private static String[] fgFlagStrings = null;
    protected int fId = 0;
    protected byte fFlags = 0;
    protected byte[] fDataBuf = null;
    static /* synthetic */ Class class$0;

    void setId(int id) {
        this.fId = id;
    }

    public int getId() {
        return this.fId;
    }

    void setFlags(byte flags) {
        this.fFlags = flags;
    }

    public byte getFlags() {
        return this.fFlags;
    }

    public int getLength() {
        return 11 + this.getDataLength();
    }

    public int getDataLength() {
        return this.fDataBuf == null ? 0 : this.fDataBuf.length;
    }

    public byte[] data() {
        return this.fDataBuf;
    }

    public DataInputStream dataInStream() {
        if (this.fDataBuf != null) {
            return new DataInputStream(new ByteArrayInputStream(this.fDataBuf));
        }
        return new DataInputStream(new ByteArrayInputStream(new byte[0]));
    }

    public void setData(byte[] data) {
        this.fDataBuf = data;
    }

    protected abstract void readSpecificHeaderFields(DataInputStream var1) throws IOException;

    protected abstract void writeSpecificHeaderFields(DataOutputStream var1) throws IOException;

    public static JdwpPacket read(InputStream inStream) throws IOException {
        DataInputStream dataInStream = new DataInputStream(inStream);
        int packetLength = dataInStream.readInt();
        int id = dataInStream.readInt();
        byte flags = dataInStream.readByte();
        JdwpPacket packet = (flags & 0xFFFFFF80) != 0 ? new JdwpReplyPacket() : new JdwpCommandPacket();
        packet.setId(id);
        packet.setFlags(flags);
        packet.readSpecificHeaderFields(dataInStream);
        if (packetLength - 11 > 0) {
            packet.fDataBuf = new byte[packetLength - 11];
            dataInStream.readFully(packet.fDataBuf);
        }
        return packet;
    }

    public void write(OutputStream outStream) throws IOException {
        DataOutputStream dataOutStream = new DataOutputStream(outStream);
        this.writeHeader(dataOutStream);
        this.writeData(dataOutStream);
    }

    protected void writeHeader(DataOutputStream dataOutStream) throws IOException {
        dataOutStream.writeInt(this.getLength());
        dataOutStream.writeInt(this.getId());
        dataOutStream.writeByte(this.getFlags());
        this.writeSpecificHeaderFields(dataOutStream);
    }

    protected void writeData(DataOutputStream dataOutStream) throws IOException {
        if (this.fDataBuf != null) {
            dataOutStream.write(this.fDataBuf);
        }
    }

    public static void getConstantMaps() {
        if (fgFlagStrings != null) {
            return;
        }
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.jdi.internal.spy.JdwpPacket");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        Field[] fields = clazz.getDeclaredFields();
        fgFlagStrings = new String[8];
        int i = 0;
        while (i < fields.length) {
            String name;
            Field field = fields[i];
            if ((field.getModifiers() & 1) != 0 && (field.getModifiers() & 8) != 0 && (field.getModifiers() & 0x10) != 0 && (name = field.getName()).startsWith("FLAG_")) {
                name = name.substring(5);
                try {
                    byte value = field.getByte(null);
                    int j = 0;
                    while (j < fgFlagStrings.length) {
                        if ((1 << j & value) != 0) {
                            JdwpPacket.fgFlagStrings[j] = name;
                            break;
                        }
                        ++j;
                    }
                }
                catch (IllegalAccessException illegalAccessException) {
                }
                catch (IllegalArgumentException illegalArgumentException) {}
            }
            ++i;
        }
    }

    public static String[] getFlagMap() {
        JdwpPacket.getConstantMaps();
        return fgFlagStrings;
    }
}

