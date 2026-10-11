/*
 * Decompiled with CFR 0.152.
 */
package de.etas.multitasking;

public final class CountingSemaphore {
    private int anzahl;

    public CountingSemaphore() {
        this.anzahl = 0;
    }

    public CountingSemaphore(int v) {
        this.anzahl = v;
    }

    public synchronized void Put() {
        ++this.anzahl;
        this.notify();
    }

    public synchronized int Test() {
        return this.anzahl;
    }

    public synchronized void Wait() {
        if (this.anzahl < 1) {
            try {
                this.wait();
            }
            catch (Exception exception) {
                System.out.println("InterruptedException in de.etas.multitasking.CountingSemaphore.Wait()");
            }
        }
        --this.anzahl;
    }
}

