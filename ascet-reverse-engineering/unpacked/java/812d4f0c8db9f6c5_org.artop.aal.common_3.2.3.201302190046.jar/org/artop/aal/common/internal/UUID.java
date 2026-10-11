/*
 * Decompiled with CFR 0.152.
 */
package org.artop.aal.common.internal;

public class UUID {
    private static final int ECUC_VERSION = 5;
    private static final int DCE_VERSION = 6;
    private Object data;
    private int useCount = 0;
    private int hashCode = 0;

    public Object getData() {
        return this.data;
    }

    public synchronized void incrUseCount() {
        ++this.useCount;
    }

    public synchronized void decrUseCount() {
        --this.useCount;
    }

    public int getUseCount() {
        return this.useCount;
    }

    public UUID(Object o) {
        long[] t;
        if (o == null) {
            return;
        }
        if (o instanceof String) {
            this.init((String)o);
        } else if (o instanceof java.util.UUID) {
            java.util.UUID t2 = (java.util.UUID)o;
            this.init(t2.getMostSignificantBits(), t2.getLeastSignificantBits());
        } else if (o instanceof long[] && (t = (long[])o).length == 2) {
            this.init(t[0], t[1]);
        }
        if (this.data == null) {
            throw new IllegalArgumentException();
        }
    }

    private void init(String s) {
        this.data = s;
        try {
            int version = 0;
            if (s.startsWith("DCE:")) {
                version = 6;
                s = s.substring(4);
            }
            if (s.startsWith("ECUC:")) {
                version = 5;
                s = s.substring(5);
            }
            if (version != 0) {
                java.util.UUID uid = java.util.UUID.fromString(s);
                long[] tab = new long[]{uid.getMostSignificantBits(), uid.getLeastSignificantBits()};
                tab[0] = tab[0] & 0xFFFFFFFFFFFF0FFFL;
                tab[0] = tab[0] | (long)(version << 12);
                this.data = tab;
            } else if (s.length() > 0) {
                java.util.UUID uid = java.util.UUID.fromString(s);
                long[] tab = new long[]{uid.getMostSignificantBits(), uid.getLeastSignificantBits()};
                this.data = tab;
            }
        }
        catch (Exception exception) {}
    }

    private void init(long msb, long lsb) {
        this.data = new long[]{msb, lsb};
    }

    public String toString() {
        if (this.data == null || this.data instanceof String) {
            return (String)this.data;
        }
        long[] tab = (long[])this.data;
        java.util.UUID uid = new java.util.UUID(tab[0], tab[1]);
        return String.valueOf(uid.version() == 6 ? "DCE:" : (uid.version() == 5 ? "ECUC:" : "")) + uid.toString();
    }

    public int hashCode() {
        if (this.hashCode != 0) {
            return this.hashCode;
        }
        String s = this.toString();
        return s == null ? 0 : (this.hashCode = s.hashCode());
    }

    public boolean equals(Object obj) {
        if (obj instanceof UUID) {
            UUID other = (UUID)obj;
            if (this.data instanceof long[] && other.data instanceof long[]) {
                long[] tab1 = (long[])this.data;
                long[] tab2 = (long[])other.data;
                return tab1[0] == tab2[0] && tab1[1] == tab2[1];
            }
            String s1 = this.toString();
            String s2 = obj.toString();
            return s1 == null ? s2 == null : s1.equals(s2);
        }
        return false;
    }
}

