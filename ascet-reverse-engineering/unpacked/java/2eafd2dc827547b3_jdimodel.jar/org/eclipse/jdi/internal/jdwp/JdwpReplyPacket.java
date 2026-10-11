/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdi.internal.jdwp;

import java.io.IOException;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.jdi.internal.jdwp.JdwpPacket;

public class JdwpReplyPacket
extends JdwpPacket {
    public static final short NONE = 0;
    public static final short INVALID_THREAD = 10;
    public static final short INVALID_THREAD_GROUP = 11;
    public static final short INVALID_PRIORITY = 12;
    public static final short THREAD_NOT_SUSPENDED = 13;
    public static final short THREAD_SUSPENDED = 14;
    public static final short THREAD_NOT_ALIVE = 15;
    public static final short INVALID_OBJECT = 20;
    public static final short INVALID_CLASS = 21;
    public static final short CLASS_NOT_PREPARED = 22;
    public static final short INVALID_METHODID = 23;
    public static final short INVALID_LOCATION = 24;
    public static final short INVALID_FIELDID = 25;
    public static final short INVALID_FRAMEID = 30;
    public static final short NO_MORE_FRAMES = 31;
    public static final short OPAQUE_FRAME = 32;
    public static final short NOT_CURRENT_FRAME = 33;
    public static final short TYPE_MISMATCH = 34;
    public static final short INVALID_SLOT = 35;
    public static final short DUPLICATE = 40;
    public static final short NOT_FOUND = 41;
    public static final short INVALID_MONITOR = 50;
    public static final short NOT_MONITOR_OWNER = 51;
    public static final short INTERRUPT = 52;
    public static final short INVALID_CLASS_FORMAT = 60;
    public static final short CIRCULAR_CLASS_DEFINITION = 61;
    public static final short FAILS_VERIFICATION = 62;
    public static final short ADD_METHOD_NOT_IMPLEMENTED = 63;
    public static final short SCHEMA_CHANGE_NOT_IMPLEMENTED = 64;
    public static final short INVALID_TYPESTATE = 65;
    public static final short HIERARCHY_CHANGE_NOT_IMPLEMENTED = 66;
    public static final short DELETE_METHOD_NOT_IMPLEMENTED = 67;
    public static final short UNSUPPORTED_VERSION = 68;
    public static final short NAMES_DONT_MATCH = 69;
    public static final short CLASS_MODIFIERS_CHANGE_NOT_IMPLEMENTED = 70;
    public static final short METHOD_MODIFIERS_CHANGE_NOT_IMPLEMENTED = 71;
    public static final short NOT_IMPLEMENTED = 99;
    public static final short NULL_POINTER = 100;
    public static final short ABSENT_INFORMATION = 101;
    public static final short INVALID_EVENT_TYPE = 102;
    public static final short ILLEGAL_ARGUMENT = 103;
    public static final short OUT_OF_MEMORY = 110;
    public static final short ACCESS_DENIED = 111;
    public static final short VM_DEAD = 112;
    public static final short INTERNAL = 113;
    public static final short UNATTACHED_THREAD = 115;
    public static final short INVALID_TAG = 500;
    public static final short ALREADY_INVOKING = 502;
    public static final short INVALID_INDEX = 503;
    public static final short INVALID_LENGTH = 504;
    public static final short INVALID_STRING = 506;
    public static final short INVALID_CLASS_LOADER = 507;
    public static final short INVALID_ARRAY = 508;
    public static final short TRANSPORT_LOAD = 509;
    public static final short TRANSPORT_INIT = 510;
    public static final short NATIVE_METHOD = 511;
    public static final short INVALID_COUNT = 512;
    public static final short HCR_OPERATION_REFUSED = 900;
    private static HashMap fErrorMap = null;
    private short fErrorCode;
    static /* synthetic */ Class class$0;

    public JdwpReplyPacket() {
        this.setFlags((byte)-128);
    }

    public short errorCode() {
        return this.fErrorCode;
    }

    public void setErrorCode(short newValue) {
        this.fErrorCode = newValue;
    }

    protected int readSpecificHeaderFields(byte[] bytes, int index) throws IOException {
        this.fErrorCode = (short)(((bytes[index] & 0xFF) << 8) + ((bytes[index + 1] & 0xFF) << 0));
        return 2;
    }

    protected int writeSpecificHeaderFields(byte[] bytes, int index) throws IOException {
        bytes[index] = (byte)(this.fErrorCode >>> 8 & 0xFF);
        bytes[index + 1] = (byte)(this.fErrorCode >>> 0 & 0xFF);
        return 2;
    }

    public static void getConstantMaps() {
        if (fErrorMap != null) {
            return;
        }
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.jdi.internal.jdwp.JdwpReplyPacket");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        Field[] fields = clazz.getDeclaredFields();
        fErrorMap = new HashMap(fields.length);
        int i = 0;
        while (i < fields.length) {
            Field field = fields[i];
            if ((field.getModifiers() & 1) != 0 && (field.getModifiers() & 8) != 0 && (field.getModifiers() & 0x10) != 0) {
                try {
                    Integer intValue = new Integer(field.getInt(null));
                    fErrorMap.put(intValue, field.getName());
                }
                catch (IllegalAccessException illegalAccessException) {
                }
                catch (IllegalArgumentException illegalArgumentException) {}
            }
            ++i;
        }
    }

    public static Map errorMap() {
        JdwpReplyPacket.getConstantMaps();
        return fErrorMap;
    }

    public String toString() {
        StringBuffer buffer = new StringBuffer();
        buffer.append("[");
        buffer.append(this.getId());
        buffer.append("] ");
        buffer.append("(reply)");
        short ec = this.errorCode();
        if (ec != 0) {
            buffer.append(" ERROR CODE: ");
            buffer.append(ec);
        }
        return buffer.toString();
    }
}

