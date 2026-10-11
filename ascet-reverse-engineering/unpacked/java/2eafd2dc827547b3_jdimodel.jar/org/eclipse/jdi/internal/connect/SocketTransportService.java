/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.connect.TransportTimeoutException
 *  com.sun.jdi.connect.spi.ClosedConnectionException
 *  com.sun.jdi.connect.spi.Connection
 *  com.sun.jdi.connect.spi.TransportService
 *  com.sun.jdi.connect.spi.TransportService$Capabilities
 *  com.sun.jdi.connect.spi.TransportService$ListenKey
 */
package org.eclipse.jdi.internal.connect;

import com.sun.jdi.connect.TransportTimeoutException;
import com.sun.jdi.connect.spi.ClosedConnectionException;
import com.sun.jdi.connect.spi.Connection;
import com.sun.jdi.connect.spi.TransportService;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.Arrays;
import org.eclipse.jdi.TimeoutException;
import org.eclipse.jdi.internal.connect.ConnectMessages;
import org.eclipse.jdi.internal.connect.SocketConnection;

public class SocketTransportService
extends TransportService {
    private static final byte[] handshakeBytes = "JDWP-Handshake".getBytes();
    private TransportService.Capabilities fCapabilities = new TransportService.Capabilities(){

        public boolean supportsAcceptTimeout() {
            return true;
        }

        public boolean supportsAttachTimeout() {
            return true;
        }

        public boolean supportsHandshakeTimeout() {
            return true;
        }

        public boolean supportsMultipleConnections() {
            return false;
        }
    };
    private Socket fSocket;
    private InputStream fInput;
    private OutputStream fOutput;
    private ServerSocket fServerSocket;

    public Connection accept(TransportService.ListenKey listenKey, long attachTimeout, long handshakeTimeout) throws IOException {
        if (attachTimeout > 0L) {
            if (attachTimeout > Integer.MAX_VALUE) {
                attachTimeout = Integer.MAX_VALUE;
            }
            this.fServerSocket.setSoTimeout((int)attachTimeout);
        }
        try {
            this.fSocket = this.fServerSocket.accept();
        }
        catch (SocketTimeoutException socketTimeoutException) {
            throw new TransportTimeoutException();
        }
        this.fInput = this.fSocket.getInputStream();
        this.fOutput = this.fSocket.getOutputStream();
        this.performHandshake(this.fInput, this.fOutput, handshakeTimeout);
        return new SocketConnection(this);
    }

    public Connection attach(String address, long attachTimeout, long handshakeTimeout) throws IOException {
        String[] strings = address.split(":");
        String host = "localhost";
        int port = 0;
        if (strings.length == 2) {
            host = strings[0];
            port = Integer.parseInt(strings[1]);
        } else {
            port = Integer.parseInt(strings[0]);
        }
        return this.attach(host, port, attachTimeout, handshakeTimeout);
    }

    public Connection attach(final String host, final int port, long attachTimeout, final long handshakeTimeout) throws IOException {
        if (attachTimeout > 0L && attachTimeout > Integer.MAX_VALUE) {
            attachTimeout = Integer.MAX_VALUE;
        }
        final IOException[] ex = new IOException[1];
        Thread attachThread = new Thread(new Runnable(){

            public void run() {
                try {
                    SocketTransportService.this.fSocket = new Socket(host, port);
                    SocketTransportService.this.fInput = SocketTransportService.this.fSocket.getInputStream();
                    SocketTransportService.this.fOutput = SocketTransportService.this.fSocket.getOutputStream();
                    SocketTransportService.this.performHandshake(SocketTransportService.this.fInput, SocketTransportService.this.fOutput, handshakeTimeout);
                }
                catch (IOException e) {
                    ex[0] = e;
                }
            }
        }, ConnectMessages.SocketTransportService_0);
        attachThread.setDaemon(true);
        attachThread.start();
        try {
            attachThread.join(attachTimeout);
            if (attachThread.isAlive()) {
                attachThread.interrupt();
                throw new TimeoutException();
            }
        }
        catch (InterruptedException interruptedException) {}
        if (ex[0] != null) {
            throw ex[0];
        }
        return new SocketConnection(this);
    }

    void performHandshake(final InputStream in, final OutputStream out, long timeout) throws IOException {
        final IOException[] ex = new IOException[1];
        final boolean[] handshakeCompleted = new boolean[1];
        Thread t = new Thread(new Runnable(){

            public void run() {
                try {
                    SocketTransportService.this.writeHandshake(out);
                    SocketTransportService.this.readHandshake(in);
                    handshakeCompleted[0] = true;
                }
                catch (IOException e) {
                    ex[0] = e;
                }
            }
        }, ConnectMessages.SocketTransportService_1);
        t.setDaemon(true);
        t.start();
        try {
            t.join(timeout);
        }
        catch (InterruptedException interruptedException) {}
        if (handshakeCompleted[0]) {
            return;
        }
        try {
            in.close();
            out.close();
        }
        catch (IOException iOException) {}
        if (ex[0] != null) {
            throw ex[0];
        }
        throw new TransportTimeoutException();
    }

    private void readHandshake(InputStream input) throws IOException {
        try {
            DataInputStream in = new DataInputStream(input);
            byte[] handshakeInput = new byte[handshakeBytes.length];
            in.readFully(handshakeInput);
            if (!Arrays.equals(handshakeInput, handshakeBytes)) {
                throw new IOException("Received invalid handshake");
            }
        }
        catch (EOFException eOFException) {
            throw new ClosedConnectionException();
        }
    }

    private void writeHandshake(OutputStream out) throws IOException {
        out.write(handshakeBytes);
    }

    public TransportService.Capabilities capabilities() {
        return this.fCapabilities;
    }

    public String description() {
        return "org.eclipse.jdt.debug: Socket Implementation of TransportService";
    }

    public String name() {
        return "org.eclipse.jdt.debug_SocketTransportService";
    }

    public TransportService.ListenKey startListening() throws IOException {
        return this.startListening(null);
    }

    public TransportService.ListenKey startListening(String address) throws IOException {
        String host = null;
        int port = 0;
        if (address != null) {
            String[] strings = address.split(":");
            host = "localhost";
            if (strings.length == 2) {
                host = strings[0];
                port = Integer.parseInt(strings[1]);
            } else {
                port = Integer.parseInt(strings[0]);
            }
        }
        if (host == null) {
            host = "localhost";
        }
        this.fServerSocket = new ServerSocket(port);
        port = this.fServerSocket.getLocalPort();
        SocketListenKey listenKey = new SocketListenKey(String.valueOf(host) + ":" + port);
        return listenKey;
    }

    public void stopListening(TransportService.ListenKey arg1) throws IOException {
        if (this.fServerSocket != null) {
            try {
                this.fServerSocket.close();
            }
            catch (IOException iOException) {}
        }
        this.fServerSocket = null;
    }

    public void close() {
        if (this.fSocket != null) {
            try {
                this.fSocket.close();
            }
            catch (IOException iOException) {}
        }
        this.fSocket = null;
        this.fInput = null;
        this.fOutput = null;
    }

    public InputStream getInputStream() {
        return this.fInput;
    }

    public OutputStream getOutputStream() {
        return this.fOutput;
    }

    private class SocketListenKey
    extends TransportService.ListenKey {
        private String fAddress;

        SocketListenKey(String address) {
            this.fAddress = address;
        }

        public String address() {
            return this.fAddress;
        }
    }
}

