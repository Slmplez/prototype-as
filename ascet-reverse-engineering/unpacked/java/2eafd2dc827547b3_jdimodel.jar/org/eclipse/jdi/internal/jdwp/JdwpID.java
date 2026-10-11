/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdi.internal.jdwp;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.jdi.internal.VirtualMachineImpl;

public abstract class JdwpID {
    public static final byte NULL_TAG = 91;
    public static final byte ARRAY_TAG = 91;
    public static final byte BYTE_TAG = 66;
    public static final byte CHAR_TAG = 67;
    public static final byte OBJECT_TAG = 76;
    public static final byte FLOAT_TAG = 70;
    public static final byte DOUBLE_TAG = 68;
    public static final byte INT_TAG = 73;
    public static final byte LONG_TAG = 74;
    public static final byte SHORT_TAG = 83;
    public static final byte VOID_TAG = 86;
    public static final byte BOOLEAN_TAG = 90;
    public static final byte STRING_TAG = 115;
    public static final byte THREAD_TAG = 116;
    public static final byte THREAD_GROUP_TAG = 103;
    public static final byte CLASS_LOADER_TAG = 108;
    public static final byte CLASS_OBJECT_TAG = 99;
    public static final byte TYPE_TAG_CLASS = 1;
    public static final byte TYPE_TAG_INTERFACE = 2;
    public static final byte TYPE_TAG_ARRAY = 3;
    private static HashMap fTagMap = null;
    private static HashMap fTypeTagMap = null;
    protected static final int VALUE_NULL = 0;
    protected long fValue = 0L;
    protected VirtualMachineImpl fVirtualMachine;
    static /* synthetic */ Class class$0;

    public JdwpID(VirtualMachineImpl vmImpl) {
        this.fVirtualMachine = vmImpl;
    }

    public boolean equals(Object object) {
        return object instanceof JdwpID && this.fValue == ((JdwpID)object).fValue;
    }

    public int hashCode() {
        return (int)this.fValue;
    }

    public final long value() {
        return this.fValue;
    }

    public String toString() {
        return new Long(this.fValue).toString();
    }

    protected abstract int getSize();

    public abstract boolean isNull();

    public void read(DataInputStream inStream) throws IOException {
        this.fValue = 0L;
        int size = this.getSize();
        int i = 0;
        while (i < size) {
            int b = inStream.readUnsignedByte();
            this.fValue = this.fValue << 8 | (long)b;
            ++i;
        }
    }

    public void write(DataOutputStream outStream) throws IOException {
        int size = this.getSize();
        int i = size - 1;
        while (i >= 0) {
            byte b = (byte)(this.fValue >>> 8 * i);
            outStream.write(b);
            --i;
        }
    }

    public static void getConstantMaps() {
        if (fTagMap != null) {
            return;
        }
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.jdi.internal.jdwp.JdwpID");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        Field[] fields = clazz.getDeclaredFields();
        fTagMap = new HashMap();
        fTypeTagMap = new HashMap();
        int i = 0;
        while (i < fields.length) {
            Field field = fields[i];
            if ((field.getModifiers() & 1) != 0 && (field.getModifiers() & 8) != 0 && (field.getModifiers() & 0x10) != 0) {
                try {
                    String name = field.getName();
                    Integer intValue = new Integer(field.getInt(null));
                    if (name.startsWith("TYPE_TAG_")) {
                        name = name.substring(9);
                        fTypeTagMap.put(intValue, name);
                    } else if (name.endsWith("_TAG")) {
                        fTagMap.put(intValue, name);
                    }
                }
                catch (IllegalAccessException illegalAccessException) {
                }
                catch (IllegalArgumentException illegalArgumentException) {}
            }
            ++i;
        }
    }

    public static Map tagMap() {
        JdwpID.getConstantMaps();
        return fTagMap;
    }

    public static Map typeTagMap() {
        JdwpID.getConstantMaps();
        return fTypeTagMap;
    }
}

