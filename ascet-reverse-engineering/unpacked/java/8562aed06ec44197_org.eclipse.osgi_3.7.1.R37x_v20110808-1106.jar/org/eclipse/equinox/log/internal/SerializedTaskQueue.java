/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.log.internal;

import java.util.LinkedList;

public class SerializedTaskQueue {
    private static final int MAX_WAIT = 5000;
    private final LinkedList<Runnable> tasks = new LinkedList();
    private Thread thread;
    private final String queueName;

    public SerializedTaskQueue(String queueName) {
        this.queueName = queueName;
    }

    public synchronized void put(Runnable newTask) {
        this.tasks.add(newTask);
        if (this.thread == null) {
            this.thread = new Thread(this.queueName){

                public void run() {
                    Runnable task = SerializedTaskQueue.this.nextTask(5000);
                    while (task != null) {
                        task.run();
                        task = SerializedTaskQueue.this.nextTask(5000);
                    }
                }
            };
            this.thread.start();
        } else {
            this.notify();
        }
    }

    synchronized Runnable nextTask(int maxWait) {
        if (this.tasks.isEmpty()) {
            try {
                this.wait(maxWait);
            }
            catch (InterruptedException interruptedException) {}
            if (this.tasks.isEmpty()) {
                this.thread = null;
                return null;
            }
        }
        return this.tasks.removeFirst();
    }
}

