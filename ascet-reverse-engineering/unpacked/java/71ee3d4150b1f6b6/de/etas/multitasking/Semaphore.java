/*
 * Decompiled with CFR 0.152.
 */
package de.etas.multitasking;

public final class Semaphore {
    boolean belegt;

    public Semaphore() {
        this.belegt = false;
    }

    public Semaphore(boolean v) {
        this.belegt = v;
    }

    public final synchronized void Put() {
        this.belegt = true;
        this.notify();
    }

    public final synchronized boolean Test() {
        return this.belegt;
    }

    public final boolean Wait() {
        return this.Wait(0L);
    }

    public final synchronized boolean Wait(long T) {
        if (!this.belegt) {
            try {
                this.wait(T);
            }
            catch (Exception r) {
                System.out.println("Exception in " + this.getClass().getName() + ":" + r);
            }
        }
        boolean ergeb = this.belegt;
        this.belegt = false;
        return ergeb;
    }
}

