/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.debug.core.model;

import org.eclipse.jdt.internal.debug.core.model.ITimeoutListener;
import org.eclipse.jdt.internal.debug.core.model.JDIDebugModelMessages;

public class Timer {
    private ITimeoutListener fListener;
    private int fTimeout;
    private boolean fAlive = true;
    private boolean fStarted = false;
    private Thread fThread;

    public Timer() {
        this.setTimeout(Integer.MAX_VALUE);
        Runnable r = new Runnable(){

            public void run() {
                while (Timer.this.isAlive()) {
                    boolean interrupted = false;
                    try {
                        Thread.sleep(Timer.this.getTimeout());
                    }
                    catch (InterruptedException interruptedException) {
                        interrupted = true;
                    }
                    if (interrupted || Timer.this.getListener() == null) continue;
                    Timer.this.setStarted(false);
                    Timer.this.setTimeout(Integer.MAX_VALUE);
                    Timer.this.getListener().timeout();
                    Timer.this.setListener(null);
                }
            }
        };
        this.setThread(new Thread(r, "Evaluation Timer"));
        this.getThread().setDaemon(true);
        this.getThread().start();
    }

    public void start(ITimeoutListener listener, int ms) {
        if (this.isStarted()) {
            throw new IllegalStateException(JDIDebugModelMessages.Timer_Timer_cannot_be_started_more_than_once_1);
        }
        this.setListener(listener);
        this.setTimeout(ms);
        this.setStarted(true);
        this.getThread().interrupt();
    }

    public void stop() {
        if (this.isAlive()) {
            this.setStarted(false);
            this.setTimeout(Integer.MAX_VALUE);
            this.getThread().interrupt();
        }
    }

    public void dispose() {
        if (this.isAlive()) {
            this.setAlive(false);
            this.getThread().interrupt();
            this.setThread(null);
        }
    }

    private boolean isAlive() {
        return this.fAlive;
    }

    private void setAlive(boolean alive) {
        this.fAlive = alive;
    }

    protected ITimeoutListener getListener() {
        return this.fListener;
    }

    private void setListener(ITimeoutListener listener) {
        this.fListener = listener;
    }

    public boolean isStarted() {
        return this.fStarted;
    }

    private void setStarted(boolean started) {
        this.fStarted = started;
    }

    private Thread getThread() {
        return this.fThread;
    }

    private void setThread(Thread thread) {
        this.fThread = thread;
    }

    protected int getTimeout() {
        return this.fTimeout;
    }

    private void setTimeout(int timeout) {
        this.fTimeout = timeout;
    }
}

