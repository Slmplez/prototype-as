/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.framework.internal.core;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import org.eclipse.osgi.framework.console.ConsoleSession;

public class FrameworkConsoleSession
extends ConsoleSession {
    private final Socket s;
    private final InputStream in;
    private final OutputStream out;

    public FrameworkConsoleSession(InputStream in, OutputStream out, Socket s) {
        this.in = in;
        this.out = out;
        this.s = s;
    }

    public synchronized InputStream getInput() {
        return this.in;
    }

    public synchronized OutputStream getOutput() {
        return this.out;
    }

    public void doClose() {
        if (this.s != null) {
            try {
                this.s.close();
            }
            catch (IOException iOException) {}
        }
        if (this.out != null) {
            try {
                this.out.close();
            }
            catch (IOException iOException) {}
        }
        if (this.in != null) {
            try {
                this.in.close();
            }
            catch (IOException iOException) {}
        }
    }
}

