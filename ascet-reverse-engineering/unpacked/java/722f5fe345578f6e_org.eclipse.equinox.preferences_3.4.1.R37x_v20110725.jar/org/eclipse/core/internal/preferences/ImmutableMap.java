/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.preferences;

import org.eclipse.core.internal.preferences.StringPool;

public abstract class ImmutableMap
implements Cloneable {
    public static final ImmutableMap EMPTY = new EmptyMap();
    protected static final String[] EMPTY_STRING_ARRAY = new String[0];

    public abstract String get(String var1);

    protected static ImmutableMap createMap(int i) {
        if (i <= 0) {
            return EMPTY;
        }
        return new ArrayMap(i);
    }

    protected abstract void internalPut(String var1, String var2);

    public abstract String[] keys();

    public abstract ImmutableMap put(String var1, String var2);

    public abstract ImmutableMap removeKey(String var1);

    public void shareStrings(StringPool set) {
    }

    public abstract int size();

    public String toString() {
        StringBuffer s = new StringBuffer();
        String[] keys = this.keys();
        int i = 0;
        int length = keys.length;
        while (i < length) {
            s.append(keys[i]).append(" -> ").append(this.get(keys[i])).append("\n");
            ++i;
        }
        return s.toString();
    }

    static class ArrayMap
    extends ImmutableMap {
        private static final float LOAD_FACTOR = 0.45f;
        private int elementSize = 0;
        private String[] keyTable;
        private int threshold;
        private String[] valueTable;

        ArrayMap(int size) {
            int tableLen = 1;
            while (tableLen < size) {
                tableLen *= 2;
            }
            this.keyTable = new String[tableLen];
            this.valueTable = new String[tableLen];
            this.threshold = (int)((float)tableLen * 0.45f);
        }

        public String get(String key) {
            String currentKey;
            int lengthMask = this.keyTable.length - 1;
            int index = key.hashCode() & lengthMask;
            while ((currentKey = this.keyTable[index]) != null) {
                if (currentKey.equals(key)) {
                    return this.valueTable[index];
                }
                index = index + 1 & lengthMask;
            }
            return null;
        }

        protected void internalPut(String key, String value) {
            String currentKey;
            int lengthMask = this.keyTable.length - 1;
            int index = key.hashCode() & lengthMask;
            while ((currentKey = this.keyTable[index]) != null) {
                if (currentKey.equals(key)) {
                    this.valueTable[index] = value;
                    return;
                }
                index = index + 1 & lengthMask;
            }
            this.keyTable[index] = key;
            this.valueTable[index] = value;
            ++this.elementSize;
        }

        public String[] keys() {
            if (this.elementSize == 0) {
                return EMPTY_STRING_ARRAY;
            }
            String[] result = new String[this.elementSize];
            int next = 0;
            int i = 0;
            while (i < this.keyTable.length) {
                if (this.keyTable[i] != null) {
                    result[next++] = this.keyTable[i];
                }
                ++i;
            }
            return result;
        }

        public ImmutableMap put(String key, String value) {
            ArrayMap result;
            int oldLen = this.keyTable.length;
            if (this.elementSize + 1 > this.threshold) {
                result = new ArrayMap(oldLen * 2);
                int i = oldLen;
                while (--i >= 0) {
                    String currentKey = this.keyTable[i];
                    if (currentKey == null) continue;
                    result.internalPut(currentKey, this.valueTable[i]);
                }
            } else {
                result = new ArrayMap(oldLen);
                System.arraycopy(this.keyTable, 0, result.keyTable, 0, this.keyTable.length);
                System.arraycopy(this.valueTable, 0, result.valueTable, 0, this.valueTable.length);
                result.elementSize = this.elementSize;
            }
            result.internalPut(key, value);
            return result;
        }

        public ImmutableMap removeKey(String key) {
            String currentKey;
            int lengthMask = this.keyTable.length - 1;
            int index = key.hashCode() & lengthMask;
            while ((currentKey = this.keyTable[index]) != null) {
                if (currentKey.equals(key)) {
                    if (this.elementSize <= 1) {
                        return EMPTY;
                    }
                    ImmutableMap result = ArrayMap.createMap((int)((float)this.elementSize / 0.45f));
                    int i = 0;
                    while (i < index) {
                        currentKey = this.keyTable[i];
                        if (currentKey != null) {
                            result.internalPut(currentKey, this.valueTable[i]);
                        }
                        ++i;
                    }
                    i = index + 1;
                    while (i <= lengthMask) {
                        currentKey = this.keyTable[i];
                        if (currentKey != null) {
                            result.internalPut(currentKey, this.valueTable[i]);
                        }
                        ++i;
                    }
                    return result;
                }
                index = index + 1 & lengthMask;
            }
            return this;
        }

        public void shareStrings(StringPool set) {
            String o;
            String[] array = this.keyTable;
            if (array == null) {
                return;
            }
            int i = 0;
            while (i < array.length) {
                o = array[i];
                if (o != null) {
                    array[i] = set.add(o);
                }
                ++i;
            }
            array = this.valueTable;
            if (array == null) {
                return;
            }
            i = 0;
            while (i < array.length) {
                o = array[i];
                if (o != null) {
                    array[i] = set.add(o);
                }
                ++i;
            }
        }

        public int size() {
            return this.elementSize;
        }
    }

    static class EmptyMap
    extends ImmutableMap {
        EmptyMap() {
        }

        public String get(String value) {
            return null;
        }

        public ImmutableMap removeKey(String key) {
            return this;
        }

        protected void internalPut(String key, String value) {
            throw new IllegalStateException();
        }

        public String[] keys() {
            return EMPTY_STRING_ARRAY;
        }

        public ImmutableMap put(String key, String value) {
            ImmutableMap result = EmptyMap.createMap(4);
            result.internalPut(key, value);
            return result;
        }

        public int size() {
            return 0;
        }
    }
}

