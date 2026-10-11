/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.registry;

public class ReadWriteMonitor {
    private int status = 0;
    private Thread writeLockowner;

    /*
     * Unable to fully structure code
     */
    public synchronized void enterRead() {
        if (this.writeLockowner != Thread.currentThread()) ** GOTO lbl7
        return;
lbl-1000:
        // 1 sources

        {
            try {
                this.wait();
                continue;
            }
            catch (InterruptedException v0) {}
lbl7:
            // 3 sources

            ** while (this.status < 0)
        }
lbl8:
        // 1 sources

        ++this.status;
    }

    public synchronized void enterWrite() {
        if (this.writeLockowner != Thread.currentThread()) {
            while (this.status != 0) {
                try {
                    this.wait();
                }
                catch (InterruptedException interruptedException) {}
            }
            this.writeLockowner = Thread.currentThread();
        }
        --this.status;
    }

    public synchronized void exitRead() {
        if (this.writeLockowner == Thread.currentThread()) {
            return;
        }
        if (--this.status == 0) {
            this.notifyAll();
        }
    }

    public synchronized void exitWrite() {
        if (this.writeLockowner != Thread.currentThread()) {
            throw new IllegalStateException("Current owner is " + this.writeLockowner);
        }
        if (++this.status == 0) {
            this.writeLockowner = null;
            this.notifyAll();
        }
    }

    public String toString() {
        StringBuffer buffer = new StringBuffer();
        buffer.append(this.hashCode());
        if (this.status == 0) {
            buffer.append("Monitor idle ");
        } else if (this.status < 0) {
            buffer.append("Monitor writing ");
        } else if (this.status > 0) {
            buffer.append("Monitor reading ");
        }
        buffer.append("(status = ");
        buffer.append(this.status);
        buffer.append(")");
        return buffer.toString();
    }
}

