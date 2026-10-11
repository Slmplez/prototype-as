/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.impl;

import com.ibm.icu.impl.ICUBinary;
import com.ibm.icu.impl.ICUBinaryStream;
import com.ibm.icu.impl.ICUData;
import com.ibm.icu.impl.ICUDebug;
import com.ibm.icu.impl.IllegalIcuArgumentException;
import com.ibm.icu.lang.UCharacter;
import java.io.BufferedInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.MissingResourceException;

public final class UPropertyAliases
implements ICUBinary.Authenticate {
    private NonContiguousEnumToShort enumToName;
    private NameToEnum nameToEnum;
    private NonContiguousEnumToShort enumToValue;
    private ValueMap[] valueMapArray;
    private short[] nameGroupPool;
    private String[] stringPool;
    private static boolean DEBUG = ICUDebug.enabled("pnames");
    private static final byte[] DATA_FORMAT_ID = new byte[]{112, 110, 97, 109};
    private static final byte DATA_FORMAT_VERSION = 1;
    private static final String DATA_FILE_NAME = "data/icudt44b/pnames.icu";
    private static final int DATA_BUFFER_SIZE = 8192;
    public static final UPropertyAliases INSTANCE;

    static {
        try {
            INSTANCE = new UPropertyAliases();
        }
        catch (IOException iOException) {
            throw new MissingResourceException("Could not construct UPropertyAliases. Missing pnames.icu", "", "");
        }
    }

    private UPropertyAliases() throws IOException {
        InputStream is = ICUData.getRequiredStream(DATA_FILE_NAME);
        BufferedInputStream b = new BufferedInputStream(is, 8192);
        ICUBinary.readHeader(b, DATA_FORMAT_ID, this);
        DataInputStream d = new DataInputStream(b);
        d.mark(256);
        short enumToName_offset = d.readShort();
        short nameToEnum_offset = d.readShort();
        short enumToValue_offset = d.readShort();
        short total_size = d.readShort();
        short valueMap_offset = d.readShort();
        int valueMap_count = d.readShort();
        short nameGroupPool_offset = d.readShort();
        short nameGroupPool_count = d.readShort();
        short stringPool_offset = d.readShort();
        short stringPool_count = d.readShort();
        if (DEBUG) {
            System.out.println("enumToName_offset=" + enumToName_offset + "\n" + "nameToEnum_offset=" + nameToEnum_offset + "\n" + "enumToValue_offset=" + enumToValue_offset + "\n" + "total_size=" + total_size + "\n" + "valueMap_offset=" + valueMap_offset + "\n" + "valueMap_count=" + valueMap_count + "\n" + "nameGroupPool_offset=" + nameGroupPool_offset + "\n" + "nameGroupPool_count=" + nameGroupPool_count + "\n" + "stringPool_offset=" + stringPool_offset + "\n" + "stringPool_count=" + stringPool_count);
        }
        byte[] raw = new byte[total_size];
        d.reset();
        d.readFully(raw);
        d.close();
        Builder builder = new Builder(raw);
        this.stringPool = builder.readStringPool(stringPool_offset, stringPool_count);
        this.nameGroupPool = builder.readNameGroupPool(nameGroupPool_offset, nameGroupPool_count);
        builder.setupValueMap_map(valueMap_offset, (short)valueMap_count);
        builder.seek(enumToName_offset);
        this.enumToName = new NonContiguousEnumToShort(builder);
        builder.nameGroupOffsetToIndex(this.enumToName.offsetArray);
        builder.seek(nameToEnum_offset);
        this.nameToEnum = new NameToEnum(builder);
        builder.seek(enumToValue_offset);
        this.enumToValue = new NonContiguousEnumToShort(builder);
        builder.valueMapOffsetToIndex(this.enumToValue.offsetArray);
        this.valueMapArray = new ValueMap[valueMap_count];
        int i = 0;
        while (i < valueMap_count) {
            builder.seek(builder.valueMap_map[i]);
            this.valueMapArray[i] = new ValueMap(builder);
            ++i;
        }
        builder.close();
    }

    public String getPropertyName(int property, int nameChoice) {
        short nameGroupIndex = this.enumToName.getShort(property);
        return this.chooseNameInGroup(nameGroupIndex, nameChoice);
    }

    public int getPropertyEnum(String propertyAlias) {
        return this.nameToEnum.getEnum(propertyAlias);
    }

    public String getPropertyValueName(int property, int value, int nameChoice) {
        ValueMap vm = this.getValueMap(property);
        short nameGroupIndex = vm.enumToName.getShort(value);
        return this.chooseNameInGroup(nameGroupIndex, nameChoice);
    }

    public int getPropertyValueEnum(int property, String valueAlias) {
        ValueMap vm = this.getValueMap(property);
        return vm.nameToEnum.getEnum(valueAlias);
    }

    public static int compare(String stra, String strb) {
        int istra = 0;
        int istrb = 0;
        char cstra = '\u0000';
        char cstrb = '\u0000';
        while (true) {
            boolean endstrb;
            block13: {
                if (istra >= stra.length()) break block13;
                cstra = stra.charAt(istra);
                switch (cstra) {
                    case '\t': 
                    case '\n': 
                    case '\u000b': 
                    case '\f': 
                    case '\r': 
                    case ' ': 
                    case '-': 
                    case '_': {
                        ++istra;
                        break;
                    }
                    default: {
                        break block13;
                    }
                }
                continue;
            }
            block7: while (istrb < strb.length()) {
                cstrb = strb.charAt(istrb);
                switch (cstrb) {
                    case '\t': 
                    case '\n': 
                    case '\u000b': 
                    case '\f': 
                    case '\r': 
                    case ' ': 
                    case '-': 
                    case '_': {
                        ++istrb;
                        break;
                    }
                    default: {
                        break block7;
                    }
                }
            }
            boolean endstra = istra == stra.length();
            boolean bl = endstrb = istrb == strb.length();
            if (endstra) {
                if (endstrb) {
                    return 0;
                }
                cstra = '\u0000';
            } else if (endstrb) {
                cstrb = '\u0000';
            }
            int rc = UCharacter.toLowerCase(cstra) - UCharacter.toLowerCase(cstrb);
            if (rc != 0) {
                return rc;
            }
            ++istra;
            ++istrb;
        }
    }

    /*
     * Unable to fully structure code
     */
    private String chooseNameInGroup(short nameGroupIndex, int nameChoice) {
        if (nameChoice >= 0) ** GOTO lbl7
        throw new IllegalIcuArgumentException("Invalid name choice");
lbl-1000:
        // 1 sources

        {
            v0 = nameGroupIndex;
            nameGroupIndex = (short)(v0 + 1);
            if (this.nameGroupPool[v0] >= 0) continue;
            throw new IllegalIcuArgumentException("Invalid name choice");
lbl7:
            // 2 sources

            ** while (nameChoice-- > 0)
        }
lbl8:
        // 1 sources

        a = this.nameGroupPool[nameGroupIndex];
        return this.stringPool[a < 0 ? -a : a];
    }

    private ValueMap getValueMap(int property) {
        short valueMapIndex = this.enumToValue.getShort(property);
        return this.valueMapArray[valueMapIndex];
    }

    public boolean isDataVersionAcceptable(byte[] version) {
        return version[0] == 1;
    }

    static class Builder
    extends ICUBinaryStream {
        private short[] stringPool_map;
        private short[] valueMap_map;
        private short[] nameGroup_map;

        public Builder(byte[] raw) {
            super(raw);
        }

        public void setupValueMap_map(short offset, short count) {
            this.valueMap_map = new short[count];
            int i = 0;
            while (i < count) {
                this.valueMap_map[i] = (short)(offset + i * 6);
                ++i;
            }
        }

        public String[] readStringPool(short offset, short count) throws IOException {
            this.seek(offset);
            String[] stringPool = new String[count + 1];
            this.stringPool_map = new short[count + 1];
            short pos = offset;
            StringBuilder buf = new StringBuilder();
            this.stringPool_map[0] = 0;
            int i = 1;
            while (i <= count) {
                char c;
                buf.setLength(0);
                while ((c = (char)this.readUnsignedByte()) != '\u0000') {
                    buf.append(c);
                }
                this.stringPool_map[i] = pos;
                stringPool[i] = buf.toString();
                pos = (short)(pos + (stringPool[i].length() + 1));
                ++i;
            }
            if (DEBUG) {
                System.out.println("read stringPool x " + count + ": " + stringPool[1] + ", " + stringPool[2] + ", " + stringPool[3] + ",...");
            }
            return stringPool;
        }

        public short[] readNameGroupPool(short offset, short count) throws IOException {
            this.seek(offset);
            short pos = offset;
            short[] nameGroupPool = new short[count];
            this.nameGroup_map = new short[count];
            int i = 0;
            while (i < count) {
                this.nameGroup_map[i] = pos;
                nameGroupPool[i] = this.stringOffsetToIndex(this.readShort());
                pos = (short)(pos + 2);
                ++i;
            }
            if (DEBUG) {
                System.out.println("read nameGroupPool x " + count + ": " + nameGroupPool[0] + ", " + nameGroupPool[1] + ", " + nameGroupPool[2] + ",...");
            }
            return nameGroupPool;
        }

        private short stringOffsetToIndex(short offset) {
            short probe = offset;
            if (probe < 0) {
                probe = -probe;
            }
            int i = 0;
            while (i < this.stringPool_map.length) {
                if (this.stringPool_map[i] == probe) {
                    return (short)(offset < 0 ? -i : i);
                }
                ++i;
            }
            throw new IllegalStateException("Can't map string pool offset " + offset + " to index");
        }

        private short valueMapOffsetToIndex(short offset) {
            short i = 0;
            while (i < this.valueMap_map.length) {
                if (this.valueMap_map[i] == offset) {
                    return i;
                }
                i = (short)(i + 1);
            }
            throw new IllegalStateException("Can't map value map offset " + offset + " to index");
        }

        private void valueMapOffsetToIndex(short[] array) {
            int i = 0;
            while (i < array.length) {
                array[i] = this.valueMapOffsetToIndex(array[i]);
                ++i;
            }
        }

        private short nameGroupOffsetToIndex(short offset) {
            short i = 0;
            while (i < this.nameGroup_map.length) {
                if (this.nameGroup_map[i] == offset) {
                    return i;
                }
                i = (short)(i + 1);
            }
            throw new RuntimeException("Can't map name group offset " + offset + " to index");
        }

        private void nameGroupOffsetToIndex(short[] array) {
            int i = 0;
            while (i < array.length) {
                array[i] = this.nameGroupOffsetToIndex(array[i]);
                ++i;
            }
        }
    }

    private static class ContiguousEnumToShort
    implements EnumToShort {
        int enumStart;
        int enumLimit;
        short[] offsetArray;

        public short getShort(int enumProbe) {
            if (enumProbe < this.enumStart || enumProbe >= this.enumLimit) {
                throw new IllegalIcuArgumentException("Invalid enum. enumStart = " + this.enumStart + " enumLimit = " + this.enumLimit + " enumProbe = " + enumProbe);
            }
            return this.offsetArray[enumProbe - this.enumStart];
        }

        ContiguousEnumToShort(ICUBinaryStream s) throws IOException {
            this.enumStart = s.readInt();
            this.enumLimit = s.readInt();
            int count = this.enumLimit - this.enumStart;
            this.offsetArray = new short[count];
            int i = 0;
            while (i < count) {
                this.offsetArray[i] = s.readShort();
                ++i;
            }
        }
    }

    private static interface EnumToShort {
        public short getShort(int var1);
    }

    private class NameToEnum {
        int[] enumArray;
        short[] nameArray;

        int getEnum(String nameProbe) {
            int i = 0;
            while (i < this.nameArray.length) {
                int c = UPropertyAliases.compare(nameProbe, UPropertyAliases.this.stringPool[this.nameArray[i]]);
                if (c <= 0) {
                    if (c < 0) break;
                    return this.enumArray[i];
                }
                ++i;
            }
            return -1;
        }

        NameToEnum(Builder b) throws IOException {
            int count = b.readInt();
            this.enumArray = new int[count];
            this.nameArray = new short[count];
            int i = 0;
            while (i < count) {
                this.enumArray[i] = b.readInt();
                ++i;
            }
            i = 0;
            while (i < count) {
                this.nameArray[i] = b.stringOffsetToIndex(b.readShort());
                ++i;
            }
        }
    }

    private static class NonContiguousEnumToShort
    implements EnumToShort {
        int[] enumArray;
        short[] offsetArray;

        public short getShort(int enumProbe) {
            int i = 0;
            while (i < this.enumArray.length) {
                if (this.enumArray[i] >= enumProbe) {
                    if (this.enumArray[i] > enumProbe) break;
                    return this.offsetArray[i];
                }
                ++i;
            }
            throw new IllegalIcuArgumentException("Invalid enum");
        }

        NonContiguousEnumToShort(ICUBinaryStream s) throws IOException {
            int count = s.readInt();
            this.enumArray = new int[count];
            this.offsetArray = new short[count];
            int i = 0;
            while (i < count) {
                this.enumArray[i] = s.readInt();
                ++i;
            }
            i = 0;
            while (i < count) {
                this.offsetArray[i] = s.readShort();
                ++i;
            }
        }
    }

    private class ValueMap {
        EnumToShort enumToName;
        NameToEnum nameToEnum;

        ValueMap(Builder b) throws IOException {
            short enumToName_offset = b.readShort();
            short ncEnumToName_offset = b.readShort();
            short nameToEnum_offset = b.readShort();
            if (enumToName_offset != 0) {
                b.seek(enumToName_offset);
                ContiguousEnumToShort x = new ContiguousEnumToShort(b);
                b.nameGroupOffsetToIndex(x.offsetArray);
                this.enumToName = x;
            } else {
                b.seek(ncEnumToName_offset);
                NonContiguousEnumToShort x = new NonContiguousEnumToShort(b);
                b.nameGroupOffsetToIndex(x.offsetArray);
                this.enumToName = x;
            }
            b.seek(nameToEnum_offset);
            this.nameToEnum = new NameToEnum(b);
        }
    }
}

