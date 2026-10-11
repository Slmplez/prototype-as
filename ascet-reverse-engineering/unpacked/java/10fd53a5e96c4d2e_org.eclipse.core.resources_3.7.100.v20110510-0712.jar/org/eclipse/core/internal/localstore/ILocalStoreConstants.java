/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.localstore;

public interface ILocalStoreConstants {
    public static final int SIZE_LASTMODIFIED = 8;
    public static final int SIZE_COUNTER = 1;
    public static final int SIZE_KEY_SUFFIX = 9;
    public static final byte[] BEGIN_CHUNK;
    public static final byte[] END_CHUNK;
    public static final int CHUNK_DELIMITER_SIZE;

    static {
        byte[] byArray = new byte[16];
        byArray[0] = 64;
        byArray[1] = -79;
        byArray[2] = -117;
        byArray[3] = -127;
        byArray[4] = 35;
        byArray[5] = -68;
        byArray[7] = 20;
        byArray[8] = 26;
        byArray[9] = 37;
        byArray[10] = -106;
        byArray[11] = -25;
        byArray[12] = -93;
        byArray[13] = -109;
        byArray[14] = -66;
        byArray[15] = 30;
        BEGIN_CHUNK = byArray;
        byte[] byArray2 = new byte[16];
        byArray2[0] = -64;
        byArray2[1] = 88;
        byArray2[2] = -5;
        byArray2[3] = -13;
        byArray2[4] = 35;
        byArray2[5] = -68;
        byArray2[7] = 20;
        byArray2[8] = 26;
        byArray2[9] = 81;
        byArray2[10] = -13;
        byArray2[11] = -116;
        byArray2[12] = 123;
        byArray2[13] = -69;
        byArray2[14] = 119;
        byArray2[15] = -58;
        END_CHUNK = byArray2;
        CHUNK_DELIMITER_SIZE = BEGIN_CHUNK.length;
    }
}

