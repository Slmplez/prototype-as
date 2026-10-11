/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.localstore;

import java.util.Arrays;

public class PrefixPool {
    private String[] pool;
    private int size;

    public PrefixPool(int initialCapacity) {
        if (initialCapacity <= 0) {
            throw new IllegalArgumentException("Illegal Capacity: " + initialCapacity);
        }
        this.pool = new String[initialCapacity];
        this.size = 0;
    }

    public void clear() {
        Arrays.fill(this.pool, 0, this.size, null);
        this.size = 0;
    }

    public int size() {
        return this.size;
    }

    private void checkCapacity() {
        if (this.size + 1 >= this.pool.length) {
            String[] newprefixList = new String[2 * this.pool.length];
            System.arraycopy(this.pool, 0, newprefixList, 0, this.pool.length);
            Arrays.fill(this.pool, null);
            this.pool = newprefixList;
        }
    }

    public void insertLonger(String s) {
        int i = this.size - 1;
        while (i >= 0) {
            if (this.pool[i].startsWith(s)) {
                return;
            }
            if (s.startsWith(this.pool[i])) {
                this.pool[i] = s;
                return;
            }
            --i;
        }
        this.checkCapacity();
        this.pool[this.size] = s;
        ++this.size;
    }

    public boolean insertShorter(String s) {
        boolean replaced = false;
        int i = this.size - 1;
        while (i >= 0) {
            if (s.startsWith(this.pool[i])) {
                return false;
            }
            if (this.pool[i].startsWith(s)) {
                if (replaced) {
                    System.arraycopy(this.pool, i + 1, this.pool, i, this.size - i - 1);
                    --this.size;
                    this.pool[this.size] = null;
                } else {
                    this.pool[i] = s;
                    replaced = true;
                }
            }
            --i;
        }
        if (!replaced) {
            this.checkCapacity();
            this.pool[this.size] = s;
            ++this.size;
        }
        return replaced;
    }

    public boolean containsAsPrefix(String s) {
        int i = this.size - 1;
        while (i >= 0) {
            if (this.pool[i].startsWith(s)) {
                return true;
            }
            --i;
        }
        return false;
    }

    public boolean hasPrefixOf(String s) {
        int i = this.size - 1;
        while (i >= 0) {
            if (s.startsWith(this.pool[i])) {
                return true;
            }
            --i;
        }
        return false;
    }
}

