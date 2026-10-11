/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.registry;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import org.eclipse.core.internal.registry.RegistryObjectManager;

public final class HashtableOfStringAndInt
implements Cloneable {
    public static final int MISSING_ELEMENT = Integer.MIN_VALUE;
    private String[] keyTable;
    private int[] valueTable;
    private int elementSize = 0;
    private int threshold;
    private static final float GROWTH_FACTOR = 1.33f;
    private static final byte NULL = 0;
    private static final byte OBJECT = 1;

    public HashtableOfStringAndInt() {
        this(13);
    }

    public HashtableOfStringAndInt(int size) {
        this.threshold = size;
        int extraRoom = (int)((float)size * 1.75f);
        if (this.threshold == extraRoom) {
            ++extraRoom;
        }
        this.keyTable = new String[extraRoom];
        this.valueTable = new int[extraRoom];
    }

    public Object clone() throws CloneNotSupportedException {
        throw new CloneNotSupportedException();
    }

    public boolean containsKey(String key) {
        String currentKey;
        int index = (key.hashCode() & Integer.MAX_VALUE) % this.valueTable.length;
        int keyLength = key.length();
        while ((currentKey = this.keyTable[index]) != null) {
            if (currentKey.length() == keyLength && currentKey.equals(key)) {
                return true;
            }
            index = (index + 1) % this.keyTable.length;
        }
        return false;
    }

    public int get(String key) {
        String currentKey;
        int index = (key.hashCode() & Integer.MAX_VALUE) % this.valueTable.length;
        int keyLength = key.length();
        while ((currentKey = this.keyTable[index]) != null) {
            if (currentKey.length() == keyLength && currentKey.equals(key)) {
                return this.valueTable[index];
            }
            index = (index + 1) % this.keyTable.length;
        }
        return Integer.MIN_VALUE;
    }

    public int put(String key, int value) {
        String currentKey;
        int index = (key.hashCode() & Integer.MAX_VALUE) % this.valueTable.length;
        int keyLength = key.length();
        while ((currentKey = this.keyTable[index]) != null) {
            if (currentKey.length() == keyLength && currentKey.equals(key)) {
                this.valueTable[index] = value;
                return this.valueTable[index];
            }
            index = (index + 1) % this.keyTable.length;
        }
        this.keyTable[index] = key;
        this.valueTable[index] = value;
        if (++this.elementSize > this.threshold) {
            this.rehash();
        }
        return value;
    }

    public int removeKey(String key) {
        String currentKey;
        int index = (key.hashCode() & Integer.MAX_VALUE) % this.valueTable.length;
        int keyLength = key.length();
        while ((currentKey = this.keyTable[index]) != null) {
            if (currentKey.length() == keyLength && currentKey.equals(key)) {
                int value = this.valueTable[index];
                --this.elementSize;
                this.keyTable[index] = null;
                this.valueTable[index] = Integer.MIN_VALUE;
                this.rehash();
                return value;
            }
            index = (index + 1) % this.keyTable.length;
        }
        return Integer.MIN_VALUE;
    }

    private void rehash() {
        HashtableOfStringAndInt newHashtable = new HashtableOfStringAndInt((int)((float)this.elementSize * 1.33f));
        int i = this.keyTable.length;
        while (--i >= 0) {
            String currentKey = this.keyTable[i];
            if (currentKey == null) continue;
            newHashtable.put(currentKey, this.valueTable[i]);
        }
        this.keyTable = newHashtable.keyTable;
        this.valueTable = newHashtable.valueTable;
        this.threshold = newHashtable.threshold;
    }

    public int size() {
        return this.elementSize;
    }

    public String toString() {
        String s = "";
        int i = 0;
        int length = this.valueTable.length;
        while (i < length) {
            int object = this.valueTable[i];
            if (object != Integer.MIN_VALUE) {
                s = String.valueOf(s) + new String(this.keyTable[i]) + " -> " + object + "\n";
            }
            ++i;
        }
        return s;
    }

    public int[] getValues() {
        int keyTableLength = this.keyTable.length;
        int[] result = new int[this.size()];
        int j = 0;
        int i = 0;
        while (i < keyTableLength) {
            if (this.keyTable[i] != null) {
                result[j++] = this.valueTable[i];
            }
            ++i;
        }
        return result;
    }

    public void save(DataOutputStream out) throws IOException {
        out.writeInt(this.elementSize);
        int tableSize = this.keyTable.length;
        out.writeInt(tableSize);
        out.writeInt(this.threshold);
        int i = 0;
        while (i < tableSize) {
            this.writeStringOrNull(this.keyTable[i], out);
            out.writeInt(this.valueTable[i]);
            ++i;
        }
    }

    public void save(DataOutputStream out, RegistryObjectManager objectManager) throws IOException {
        HashtableOfStringAndInt filteredHashtable = new HashtableOfStringAndInt((int)((float)this.elementSize * 1.33f));
        int i = this.keyTable.length;
        while (--i >= 0) {
            String currentKey = this.keyTable[i];
            if (currentKey == null || !objectManager.shouldPersist(this.valueTable[i])) continue;
            filteredHashtable.put(currentKey, this.valueTable[i]);
        }
        filteredHashtable.save(out);
    }

    public void load(DataInputStream in) throws IOException {
        this.elementSize = in.readInt();
        int tableSize = in.readInt();
        this.threshold = in.readInt();
        boolean fastMode = true;
        if ((double)tableSize / (double)this.elementSize < (double)1.33f) {
            this.keyTable = new String[(int)((float)this.elementSize * 1.33f)];
            this.valueTable = new int[(int)((float)this.elementSize * 1.33f)];
            this.elementSize = 0;
            fastMode = false;
        } else {
            this.keyTable = new String[tableSize];
            this.valueTable = new int[tableSize];
        }
        int i = 0;
        while (i < tableSize) {
            String key = this.readStringOrNull(in);
            int value = in.readInt();
            if (fastMode) {
                this.keyTable[i] = key;
                this.valueTable[i] = value;
            } else if (key != null) {
                this.put(key, value);
            }
            ++i;
        }
    }

    private void writeStringOrNull(String string, DataOutputStream out) throws IOException {
        if (string == null) {
            out.writeByte(0);
        } else {
            out.writeByte(1);
            out.writeUTF(string);
        }
    }

    private String readStringOrNull(DataInputStream in) throws IOException {
        byte type = in.readByte();
        if (type == 0) {
            return null;
        }
        return in.readUTF();
    }
}

