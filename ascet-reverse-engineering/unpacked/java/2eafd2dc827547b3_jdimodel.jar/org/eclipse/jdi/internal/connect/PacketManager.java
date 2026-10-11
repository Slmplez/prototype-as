/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.connect.spi.Connection
 */
package org.eclipse.jdi.internal.connect;

import com.sun.jdi.connect.spi.Connection;
import java.io.IOException;

public abstract class PacketManager
implements Runnable {
    private Connection fConnection;
    private Thread fPartnerThread;
    private IOException fDisconnectException;

    protected PacketManager(Connection connection) {
        this.fConnection = connection;
    }

    public Connection getConnection() {
        return this.fConnection;
    }

    public void disconnectVM(IOException disconnectException) {
        this.fDisconnectException = disconnectException;
        this.disconnectVM();
    }

    public void disconnectVM() {
        try {
            this.fConnection.close();
        }
        catch (IOException e) {
            this.fDisconnectException = e;
        }
        if (this.fPartnerThread != null) {
            this.fPartnerThread.interrupt();
        }
    }

    public boolean VMIsDisconnected() {
        return this.fConnection == null || !this.fConnection.isOpen();
    }

    public IOException getDisconnectException() {
        return this.fDisconnectException;
    }

    public void setPartnerThread(Thread thread) {
        this.fPartnerThread = thread;
    }
}

