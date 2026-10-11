/*
 * Decompiled with CFR 0.152.
 */
package de.etas.multitasking;

import de.etas.multitasking.CountingSemaphore;

public final class MessageQueue {
    private int maxAnzahl;
    private int[] messages;
    private int indexRead;
    private int indexWrite;
    private String name;
    private CountingSemaphore writeBlock;
    private CountingSemaphore readBlock;

    public MessageQueue(String c, int n) {
        this.name = c;
        this.indexRead = 0;
        this.indexWrite = 0;
        if (n > 0) {
            this.maxAnzahl = n;
            this.messages = new int[n];
            this.writeBlock = new CountingSemaphore(n);
            this.readBlock = new CountingSemaphore(0);
        } else {
            this.maxAnzahl = 1;
            this.messages = new int[1];
            this.writeBlock = new CountingSemaphore(1);
            this.readBlock = new CountingSemaphore(0);
        }
    }

    public final int getEvent() {
        int ergeb = 0;
        this.readBlock.Wait();
        MessageQueue messageQueue = this;
        synchronized (messageQueue) {
            ergeb = this.messages[this.indexRead];
            ++this.indexRead;
            if (this.indexRead == this.maxAnzahl) {
                this.indexRead = 0;
            }
        }
        this.writeBlock.Put();
        return ergeb;
    }

    public final boolean putEvent(int msg) {
        this.writeBlock.Wait();
        MessageQueue messageQueue = this;
        synchronized (messageQueue) {
            this.messages[this.indexWrite] = msg;
            ++this.indexWrite;
            if (this.indexWrite == this.maxAnzahl) {
                this.indexWrite = 0;
            }
        }
        this.readBlock.Put();
        return true;
    }
}

