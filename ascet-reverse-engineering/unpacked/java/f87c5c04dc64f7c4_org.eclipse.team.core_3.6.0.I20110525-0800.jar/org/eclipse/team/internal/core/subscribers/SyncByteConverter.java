/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.team.internal.core.subscribers;

import org.eclipse.osgi.util.NLS;
import org.eclipse.team.core.TeamException;
import org.eclipse.team.internal.core.Messages;

public class SyncByteConverter {
    protected static final byte SEPARATOR_BYTE = 47;

    public static byte[] setSlot(byte[] syncBytes, int slot, byte[] newBytes) throws TeamException {
        int start = SyncByteConverter.startOfSlot(syncBytes, slot);
        if (start == -1) {
            throw new TeamException(NLS.bind((String)Messages.SyncByteConverter_1, (Object[])new String[]{new String(syncBytes)}));
        }
        int end = SyncByteConverter.startOfSlot(syncBytes, slot + 1);
        int totalLength = start + 1 + newBytes.length;
        if (end != -1) {
            totalLength += syncBytes.length - end;
        }
        byte[] result = new byte[totalLength];
        System.arraycopy(syncBytes, 0, result, 0, start + 1);
        System.arraycopy(newBytes, 0, result, start + 1, newBytes.length);
        if (end != -1) {
            System.arraycopy(syncBytes, end, result, start + 1 + newBytes.length, syncBytes.length - end);
        }
        return result;
    }

    private static int startOfSlot(byte[] syncBytes, int slot) {
        int count = 0;
        int j = 0;
        while (j < syncBytes.length) {
            if (syncBytes[j] == 47 && ++count == slot) {
                return j;
            }
            ++j;
        }
        return -1;
    }

    private static int getOffsetOfDelimeter(byte[] bytes, byte delimiter, int start, int n) {
        int count = 0;
        int i = start;
        while (i < bytes.length) {
            if (bytes[i] == delimiter) {
                ++count;
            }
            if (count == n) {
                return i;
            }
            ++i;
        }
        return -1;
    }

    public static byte[] getSlot(byte[] bytes, int index, boolean includeRest) {
        int start;
        byte delimiter = 47;
        if (index == 0) {
            start = -1;
        } else {
            start = SyncByteConverter.getOffsetOfDelimeter(bytes, delimiter, 0, index);
            if (start == -1) {
                return null;
            }
        }
        int end = SyncByteConverter.getOffsetOfDelimeter(bytes, delimiter, start + 1, 1);
        int length = end == -1 || includeRest ? bytes.length - start - 1 : end - start - 1;
        byte[] result = new byte[length];
        System.arraycopy(bytes, start + 1, result, 0, length);
        return result;
    }

    public static byte[] toBytes(String[] slots) {
        StringBuffer buffer = new StringBuffer();
        int i = 0;
        while (i < slots.length) {
            String string = slots[i];
            buffer.append(string);
            buffer.append(new String(new byte[]{47}));
            ++i;
        }
        return buffer.toString().getBytes();
    }
}

