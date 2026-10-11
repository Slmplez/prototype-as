/*
 * Decompiled with CFR 0.152.
 */
package de.etas.multitasking;

public final class Message {
    Object message;
    boolean readyToSend;
    boolean readyToReceive;

    public synchronized Object Receive() {
        try {
            if (this.readyToReceive) {
                this.readyToReceive = false;
                this.notify();
                return this.message;
            }
            this.readyToSend = true;
            this.wait();
            return this.message;
        }
        catch (Exception e) {
            System.out.println("Exception in " + this.getClass().getName() + ":" + e);
            return null;
        }
    }

    public synchronized void Send(Object msg) {
        try {
            if (this.readyToSend) {
                this.readyToSend = false;
                this.message = msg;
                this.notifyAll();
            } else if (this.readyToReceive) {
                this.wait();
            } else {
                this.readyToReceive = true;
                this.message = msg;
                this.wait();
            }
        }
        catch (Exception e) {
            System.out.println("Exception in " + this.getClass().getName() + ":" + e);
        }
    }
}

