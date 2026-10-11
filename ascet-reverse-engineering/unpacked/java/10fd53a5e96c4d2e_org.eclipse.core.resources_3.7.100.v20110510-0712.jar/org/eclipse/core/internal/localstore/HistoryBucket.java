/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.core.internal.localstore;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.Arrays;
import java.util.Comparator;
import org.eclipse.core.internal.localstore.Bucket;
import org.eclipse.core.internal.utils.UniversalUniqueIdentifier;
import org.eclipse.core.runtime.IPath;

public class HistoryBucket
extends Bucket {
    public static final byte VERSION = 2;

    public void addBlob(IPath path, UniversalUniqueIdentifier uuid, long lastModified) {
        byte[] state = HistoryEntry.getState(uuid, lastModified);
        String pathAsString = path.toString();
        byte[][] existing = (byte[][])this.getEntryValue(pathAsString);
        if (existing == null) {
            this.setEntryValue(pathAsString, new byte[][]{state});
            return;
        }
        byte[][] newValue = HistoryEntry.insert(existing, state);
        if (newValue == null) {
            return;
        }
        this.setEntryValue(pathAsString, newValue);
    }

    public void addBlobs(HistoryEntry fileEntry) {
        IPath path = fileEntry.getPath();
        byte[][] additions = fileEntry.getData();
        String pathAsString = path.toString();
        byte[][] existing = (byte[][])this.getEntryValue(pathAsString);
        if (existing == null) {
            this.setEntryValue(pathAsString, additions);
            return;
        }
        this.setEntryValue(pathAsString, HistoryEntry.merge(existing, additions));
    }

    protected Bucket.Entry createEntry(IPath path, Object value) {
        return new HistoryEntry(path, (byte[][])value);
    }

    public HistoryEntry getEntry(IPath path) {
        String pathAsString = path.toString();
        byte[][] existing = (byte[][])this.getEntryValue(pathAsString);
        if (existing == null) {
            return null;
        }
        return new HistoryEntry(path, existing);
    }

    protected String getIndexFileName() {
        return "history.index";
    }

    protected byte getVersion() {
        return 2;
    }

    protected String getVersionFileName() {
        return "history.version";
    }

    protected Object readEntryValue(DataInputStream source) throws IOException {
        int length = source.readUnsignedShort();
        byte[][] uuids = new byte[length][24];
        int j = 0;
        while (j < uuids.length) {
            source.read(uuids[j]);
            ++j;
        }
        return uuids;
    }

    protected void writeEntryValue(DataOutputStream destination, Object entryValue) throws IOException {
        byte[][] uuids = (byte[][])entryValue;
        destination.writeShort(uuids.length);
        int j = 0;
        while (j < uuids.length) {
            destination.write(uuids[j]);
            ++j;
        }
    }

    public static final class HistoryEntry
    extends Bucket.Entry {
        static final Comparator<byte[]> COMPARATOR = new Comparator<byte[]>(){

            @Override
            public int compare(byte[] state1, byte[] state2) {
                return HistoryEntry.compareStates(state1, state2);
            }
        };
        private static final byte[][] EMPTY_DATA = new byte[0][];
        private static final int LONG_LENGTH = 8;
        private static final int UUID_LENGTH = 16;
        public static final int DATA_LENGTH = 24;
        private byte[][] data;

        static int compareStates(byte[] state1, byte[] state2) {
            long timestamp2;
            long timestamp1 = HistoryEntry.getTimestamp(state1);
            if (timestamp1 == (timestamp2 = HistoryEntry.getTimestamp(state2))) {
                return -UniversalUniqueIdentifier.compareTime(state1, state2);
            }
            return timestamp1 < timestamp2 ? 1 : -1;
        }

        static byte[] getState(UniversalUniqueIdentifier uuid, long timestamp) {
            byte[] uuidBytes = uuid.toBytes();
            byte[] state = new byte[24];
            System.arraycopy(uuidBytes, 0, state, 0, uuidBytes.length);
            int j = 0;
            while (j < 8) {
                state[16 + j] = (byte)(0xFFL & timestamp);
                timestamp >>>= 8;
                ++j;
            }
            return state;
        }

        private static long getTimestamp(byte[] state) {
            long timestamp = 0L;
            int j = 0;
            while (j < 8) {
                timestamp += ((long)state[16 + j] & 0xFFL) << j * 8;
                ++j;
            }
            return timestamp;
        }

        static byte[][] insert(byte[][] existing, byte[] toAdd) {
            int index = HistoryEntry.search(existing, toAdd);
            if (index >= 0) {
                return null;
            }
            int insertPosition = -index - 1;
            byte[][] newValue = new byte[existing.length + 1][];
            if (insertPosition > 0) {
                System.arraycopy(existing, 0, newValue, 0, insertPosition);
            }
            newValue[insertPosition] = toAdd;
            if (insertPosition < existing.length) {
                System.arraycopy(existing, insertPosition, newValue, insertPosition + 1, existing.length - insertPosition);
            }
            return newValue;
        }

        static byte[][] merge(byte[][] base, byte[][] additions) {
            int additionPointer = 0;
            int basePointer = 0;
            int added = 0;
            byte[][] result = new byte[base.length + additions.length][];
            while (basePointer < base.length && additionPointer < additions.length) {
                int comparison = HistoryEntry.compareStates(base[basePointer], additions[additionPointer]);
                if (comparison == 0) {
                    result[added++] = base[basePointer++];
                    ++additionPointer;
                    continue;
                }
                result[added++] = comparison < 0 ? base[basePointer++] : additions[additionPointer++];
            }
            byte[][] remaining = basePointer == base.length ? additions : base;
            int remainingPointer = basePointer == base.length ? additionPointer : basePointer;
            int remainingCount = remaining.length - remainingPointer;
            System.arraycopy(remaining, remainingPointer, result, added, remainingCount);
            if ((added += remainingCount) == base.length + additions.length) {
                return result;
            }
            byte[][] finalResult = new byte[added][];
            System.arraycopy(result, 0, finalResult, 0, finalResult.length);
            return finalResult;
        }

        private static int search(byte[][] existing, byte[] element) {
            return Arrays.binarySearch(existing, element, COMPARATOR);
        }

        public HistoryEntry(IPath path, byte[][] data) {
            super(path);
            this.data = data;
        }

        public HistoryEntry(IPath path, HistoryEntry base) {
            super(path);
            this.data = new byte[base.data.length][];
            System.arraycopy(base.data, 0, this.data, 0, this.data.length);
        }

        private void compact() {
            if (!this.isDirty()) {
                return;
            }
            int occurrences = 0;
            int i = 0;
            while (i < this.data.length) {
                if (this.data[i] != null) {
                    this.data[occurrences++] = this.data[i];
                }
                ++i;
            }
            if (occurrences == this.data.length) {
                return;
            }
            if (occurrences == 0) {
                this.data = EMPTY_DATA;
                this.delete();
                return;
            }
            byte[][] result = new byte[occurrences][];
            System.arraycopy(this.data, 0, result, 0, occurrences);
            this.data = result;
        }

        public void deleteOccurrence(int i) {
            this.markDirty();
            this.data[i] = null;
        }

        byte[][] getData() {
            return this.data;
        }

        public int getOccurrences() {
            return this.data.length;
        }

        public long getTimestamp(int i) {
            return HistoryEntry.getTimestamp(this.data[i]);
        }

        public UniversalUniqueIdentifier getUUID(int i) {
            return new UniversalUniqueIdentifier(this.data[i]);
        }

        public Object getValue() {
            return this.data;
        }

        public boolean isEmpty() {
            return this.data.length == 0;
        }

        public void visited() {
            this.compact();
        }
    }
}

