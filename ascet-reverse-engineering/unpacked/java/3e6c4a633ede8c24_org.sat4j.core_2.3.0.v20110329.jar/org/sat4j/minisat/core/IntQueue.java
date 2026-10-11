/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.minisat.core;

import java.io.Serializable;

public final class IntQueue
implements Serializable {
    private static final long serialVersionUID = 1L;
    private static final int INITIAL_QUEUE_CAPACITY = 10;
    private int[] myarray = new int[10];
    private int size = 0;
    private int first = 0;
    static final /* synthetic */ boolean $assertionsDisabled;

    public void insert(int n) {
        if (!$assertionsDisabled && this.size >= this.myarray.length) {
            throw new AssertionError();
        }
        this.myarray[this.size++] = n;
    }

    public int dequeue() {
        if (!$assertionsDisabled && this.first >= this.size) {
            throw new AssertionError();
        }
        return this.myarray[this.first++];
    }

    public void clear() {
        this.size = 0;
        this.first = 0;
    }

    public int size() {
        return this.size - this.first;
    }

    public void ensure(int n) {
        if (n >= this.myarray.length) {
            int[] nArray = new int[Math.max(n, this.size * 2)];
            System.arraycopy(this.myarray, 0, nArray, 0, this.size);
            this.myarray = nArray;
        }
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(">");
        for (int i = this.first; i < this.size - 1; ++i) {
            stringBuffer.append(this.myarray[i]);
            stringBuffer.append(" ");
        }
        if (this.first != this.size) {
            stringBuffer.append(this.myarray[this.size - 1]);
        }
        stringBuffer.append("<");
        return stringBuffer.toString();
    }

    static {
        $assertionsDisabled = !IntQueue.class.desiredAssertionStatus();
    }
}

