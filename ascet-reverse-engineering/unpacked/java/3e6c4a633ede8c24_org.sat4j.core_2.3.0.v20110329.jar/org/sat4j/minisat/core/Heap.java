/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.minisat.core;

import java.io.Serializable;
import org.sat4j.core.VecInt;
import org.sat4j.specs.IVecInt;

public final class Heap
implements Serializable {
    private static final long serialVersionUID = 1L;
    private final IVecInt heap = new VecInt();
    private final IVecInt indices = new VecInt();
    private final double[] activity;
    static final /* synthetic */ boolean $assertionsDisabled;

    private static final int left(int n) {
        return n << 1;
    }

    private static final int right(int n) {
        return n << 1 ^ 1;
    }

    private static final int parent(int n) {
        return n >> 1;
    }

    private final boolean comp(int n, int n2) {
        return this.activity[n] > this.activity[n2];
    }

    final void percolateUp(int n) {
        int n2 = this.heap.get(n);
        while (Heap.parent(n) != 0 && this.comp(n2, this.heap.get(Heap.parent(n)))) {
            this.heap.set(n, this.heap.get(Heap.parent(n)));
            this.indices.set(this.heap.get(n), n);
            n = Heap.parent(n);
        }
        this.heap.set(n, n2);
        this.indices.set(n2, n);
    }

    final void percolateDown(int n) {
        int n2 = this.heap.get(n);
        while (Heap.left(n) < this.heap.size()) {
            int n3;
            int n4 = n3 = Heap.right(n) < this.heap.size() && this.comp(this.heap.get(Heap.right(n)), this.heap.get(Heap.left(n))) ? Heap.right(n) : Heap.left(n);
            if (!this.comp(this.heap.get(n3), n2)) break;
            this.heap.set(n, this.heap.get(n3));
            this.indices.set(this.heap.get(n), n);
            n = n3;
        }
        this.heap.set(n, n2);
        this.indices.set(n2, n);
    }

    boolean ok(int n) {
        return n >= 0 && n < this.indices.size();
    }

    public Heap(double[] dArray) {
        this.activity = dArray;
        this.heap.push(-1);
    }

    public void setBounds(int n) {
        if (!$assertionsDisabled && n < 0) {
            throw new AssertionError();
        }
        this.indices.growTo(n, 0);
    }

    public boolean inHeap(int n) {
        if (!$assertionsDisabled && !this.ok(n)) {
            throw new AssertionError();
        }
        return this.indices.get(n) != 0;
    }

    public void increase(int n) {
        if (!$assertionsDisabled && !this.ok(n)) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && !this.inHeap(n)) {
            throw new AssertionError();
        }
        this.percolateUp(this.indices.get(n));
    }

    public boolean empty() {
        return this.heap.size() == 1;
    }

    public void insert(int n) {
        if (!$assertionsDisabled && !this.ok(n)) {
            throw new AssertionError();
        }
        this.indices.set(n, this.heap.size());
        this.heap.push(n);
        this.percolateUp(this.indices.get(n));
    }

    public int getmin() {
        int n = this.heap.get(1);
        this.heap.set(1, this.heap.last());
        this.indices.set(this.heap.get(1), 1);
        this.indices.set(n, 0);
        this.heap.pop();
        if (this.heap.size() > 1) {
            this.percolateDown(1);
        }
        return n;
    }

    public boolean heapProperty() {
        return this.heapProperty(1);
    }

    public boolean heapProperty(int n) {
        return n >= this.heap.size() || (Heap.parent(n) == 0 || !this.comp(this.heap.get(n), this.heap.get(Heap.parent(n)))) && this.heapProperty(Heap.left(n)) && this.heapProperty(Heap.right(n));
    }

    static {
        $assertionsDisabled = !Heap.class.desiredAssertionStatus();
    }
}

