/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdi.internal.jdwp;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.lang.reflect.Field;
import org.eclipse.jdi.internal.jdwp.JdwpCommandPacket;
import org.eclipse.jdi.internal.jdwp.JdwpReplyPacket;

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

    protected abstract int readSpecificHeaderFields(byte[] var1, int var2) throws IOException;

    protected abstract int writeSpecificHeaderFields(byte[] var1, int var2) throws IOException;

    public static JdwpPacket build(byte[] bytes) throws IOException {
        int a = (bytes[0] & 0xFF) << 24;
        int b = (bytes[1] & 0xFF) << 16;
        int c = (bytes[2] & 0xFF) << 8;
        int d = (bytes[3] & 0xFF) << 0;
        int packetLength = a + b + c + d;
        a = (bytes[4] & 0xFF) << 24;
        b = (bytes[5] & 0xFF) << 16;
        c = (bytes[6] & 0xFF) << 8;
        d = (bytes[7] & 0xFF) << 0;
        int id = a + b + c + d;
        byte flags = bytes[8];
        JdwpPacket packet = (flags & 0xFFFFFF80) != 0 ? new JdwpReplyPacket() : new JdwpCommandPacket();
        packet.setId(id);
        packet.setFlags(flags);
        int index = 9;
        index += packet.readSpecificHeaderFields(bytes, 9);
        if (packetLength - 11 > 0) {
            packet.fDataBuf = new byte[packetLength - 11];
            System.arraycopy(bytes, index, packet.fDataBuf, 0, packet.fDataBuf.length);
        }
        return packet;
    }

    public byte[] getPacketAsBytes() throws IOException {
        int len = this.getLength();
        byte[] bytes = new byte[len];
        bytes[0] = (byte)(len >>> 24);
        bytes[1] = (byte)(len >>> 16);
        bytes[2] = (byte)(len >>> 8);
        bytes[3] = (byte)(len >>> 0);
        int id = this.getId();
        bytes[4] = (byte)(id >>> 24);
        bytes[5] = (byte)(id >>> 16);
        bytes[6] = (byte)(id >>> 8);
        bytes[7] = (byte)(id >>> 0);
        bytes[8] = this.getFlags();
        int index = 9;
        if ((index += this.writeSpecificHeaderFields(bytes, index)) < len && this.fDataBuf != null) {
            System.arraycopy(this.fDataBuf, 0, bytes, index, this.fDataBuf.length);
        }
        return bytes;
    }

    public static void getConstantMaps() {
        if (fgFlagStrings != null) {
            return;
        }
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.jdi.internal.jdwp.JdwpPacket");
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

