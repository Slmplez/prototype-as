/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.connect.Transport
 *  com.sun.jdi.connect.spi.Connection
 *  com.sun.jdi.connect.spi.TransportService$ListenKey
 */
package org.eclipse.jdi.internal.connect;

import com.sun.jdi.connect.Transport;
import com.sun.jdi.connect.spi.Connection;
import com.sun.jdi.connect.spi.TransportService;
import java.io.IOException;
import org.eclipse.jdi.internal.connect.SocketTransportService;

public class SocketTransportImpl
implements Transport {
    public static final String TRANSPORT_NAME = "dt_socket";
    public static final int MIN_PORTNR = 0;
    public static final int MAX_PORTNR = 65535;
    SocketTransportService service = new SocketTransportService();
    private TransportService.ListenKey fListenKey;

    public String name() {
        return TRANSPORT_NAME;
    }

    public Connection attach(String hostname, int port, long attachTimeout, long handshakeTimeout) throws IOException {
        return this.service.attach(hostname, port, attachTimeout, handshakeTimeout);
    }

    public String startListening(int port) throws IOException {
        this.fListenKey = this.service.startListening(String.valueOf(port));
        return this.fListenKey.address();
    }

    public void stopListening() throws IOException {
        this.service.stopListening(this.fListenKey);
    }

    public Connection accept(long attachTimeout, long handshakeTimeout) throws IOException {
        return this.service.accept(this.fListenKey, attachTimeout, handshakeTimeout);
    }
}

