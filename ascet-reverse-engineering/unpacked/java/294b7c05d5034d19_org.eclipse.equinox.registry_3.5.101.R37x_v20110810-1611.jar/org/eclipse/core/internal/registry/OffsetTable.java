/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.registry;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

public final class OffsetTable {
    private static final float GROWTH_FACTOR = 1.33f;
    private int[] valueTable;

    public OffsetTable(int size) {
        this.valueTable = new int[size];
    }

    public int get(int key) {
        if (key < this.valueTable.length) {
            return this.valueTable[key];
        }
        return Integer.MIN_VALUE;
    }

    public void removeKey(int key) {
        if (key < this.valueTable.length) {
            this.valueTable[key] = Integer.MIN_VALUE;
        }
    }

    public void put(int key, int value) {
        if (key >= this.valueTable.length) {
            int[] newTable = new int[(int)((float)key * 1.33f)];
            System.arraycopy(this.valueTable, 0, newTable, 0, this.valueTable.length);
            this.valueTable = newTable;
        }
        this.valueTable[key] = value;
    }

    public void save(DataOutputStream out) throws IOException {
        int tableSize = this.valueTable.length;
        out.writeInt(tableSize);
        int i = 0;
        while (i < tableSize) {
            out.writeInt(this.valueTable[i]);
            ++i;
        }
    }

    public static OffsetTable load(DataInputStream in) throws IOException {
        int tableSize = in.readInt();
        OffsetTable result = new OffsetTable(tableSize);
        result.valueTable = new int[tableSize];
        int i = 0;
        while (i < tableSize) {
            result.valueTable[i] = in.readInt();
            ++i;
        }
        return result;
    }
}

