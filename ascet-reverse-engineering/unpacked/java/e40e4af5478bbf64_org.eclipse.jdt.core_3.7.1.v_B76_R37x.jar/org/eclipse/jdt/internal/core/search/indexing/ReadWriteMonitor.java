/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.search.indexing;

public class ReadWriteMonitor {
    private int status = 0;

    public synchronized void enterRead() {
        while (this.status < 0) {
            try {
                this.wait();
            }
            catch (InterruptedException interruptedException) {}
        }
        ++this.status;
    }

    public synchronized void enterWrite() {
        while (this.status != 0) {
            try {
                this.wait();
            }
            catch (InterruptedException interruptedException) {}
        }
        --this.status;
    }

    public synchronized void exitRead() {
        if (--this.status == 0) {
            this.notifyAll();
        }
    }

    public synchronized void exitWrite() {
        if (++this.status == 0) {
            this.notifyAll();
        }
    }

    public synchronized boolean exitReadEnterWrite() {
        if (this.status != 1) {
            return false;
        }
        this.status = -1;
        return true;
    }

    public synchronized void exitWriteEnterRead() {
        this.exitWrite();
        this.enterRead();
    }

    public String toString() {
        StringBuffer buffer = new StringBuffer();
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

