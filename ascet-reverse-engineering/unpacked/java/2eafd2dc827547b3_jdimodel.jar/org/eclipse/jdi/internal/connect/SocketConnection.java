/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.connect.spi.ClosedConnectionException
 *  com.sun.jdi.connect.spi.Connection
 */
package org.eclipse.jdi.internal.connect;

import com.sun.jdi.connect.spi.ClosedConnectionException;
import com.sun.jdi.connect.spi.Connection;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.OutputStream;
import org.eclipse.jdi.internal.connect.SocketTransportService;

public class SocketConnection
extends Connection {
    private SocketTransportService fTransport;

    SocketConnection(SocketTransportService transport) {
        this.fTransport = transport;
    }

    public synchronized void close() throws IOException {
        if (this.fTransport == null) {
            return;
        }
        this.fTransport.close();
        this.fTransport = null;
    }

    public synchronized boolean isOpen() {
        return this.fTransport != null;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public byte[] readPacket() throws IOException {
        DataInputStream stream;
        Object object = this;
        synchronized (object) {
            if (!this.isOpen()) {
                throw new ClosedConnectionException();
            }
            stream = new DataInputStream(this.fTransport.getInputStream());
        }
        object = stream;
        synchronized (object) {
            int packetLength = 0;
            try {
                packetLength = stream.readInt();
            }
            catch (IOException iOException) {
                throw new ClosedConnectionException();
            }
            if (packetLength < 11) {
                throw new IOException("JDWP Packet under 11 bytes");
            }
            byte[] packet = new byte[packetLength];
            packet[0] = (byte)(packetLength >>> 24 & 0xFF);
            packet[1] = (byte)(packetLength >>> 16 & 0xFF);
            packet[2] = (byte)(packetLength >>> 8 & 0xFF);
            packet[3] = (byte)(packetLength >>> 0 & 0xFF);
            stream.readFully(packet, 4, packetLength - 4);
            return packet;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void writePacket(byte[] packet) throws IOException {
        if (!this.isOpen()) {
            throw new ClosedConnectionException();
        }
        if (packet == null) {
            throw new IllegalArgumentException("Invalid JDWP Packet, packet cannot be null");
        }
        if (packet.length < 11) {
            throw new IllegalArgumentException("Invalid JDWP Packet, must be at least 11 bytes. PacketSize:" + packet.length);
        }
        int packetSize = this.getPacketLength(packet);
        if (packetSize < 11) {
            throw new IllegalArgumentException("Invalid JDWP Packet, must be at least 11 bytes. PacketSize:" + packetSize);
        }
        if (packetSize > packet.length) {
            throw new IllegalArgumentException("Invalid JDWP packet: Specified length is greater than actual length");
        }
        OutputStream stream = null;
        Object object = this;
        synchronized (object) {
            if (!this.isOpen()) {
                throw new ClosedConnectionException();
            }
            stream = this.fTransport.getOutputStream();
        }
        object = stream;
        synchronized (object) {
            stream.write(packet, 0, packetSize);
        }
    }

    private int getPacketLength(byte[] packet) {
        int len = 0;
        if (packet.length >= 4) {
            len = ((packet[0] & 0xFF) << 24) + ((packet[1] & 0xFF) << 16) + ((packet[2] & 0xFF) << 8) + ((packet[3] & 0xFF) << 0);
        }
        return len;
    }
}

