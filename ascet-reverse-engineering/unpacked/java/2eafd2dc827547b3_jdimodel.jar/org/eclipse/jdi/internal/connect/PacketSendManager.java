/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  com.sun.jdi.VMDisconnectedException
 *  com.sun.jdi.connect.spi.Connection
 */
package org.eclipse.jdi.internal.connect;

import com.ibm.icu.text.MessageFormat;
import com.sun.jdi.VMDisconnectedException;
import com.sun.jdi.connect.spi.Connection;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.LinkedList;
import org.eclipse.jdi.internal.connect.ConnectMessages;
import org.eclipse.jdi.internal.connect.PacketManager;
import org.eclipse.jdi.internal.jdwp.JdwpPacket;

public class PacketSendManager
extends PacketManager {
    private LinkedList fOutgoingPackets = new LinkedList();

    public PacketSendManager(Connection connection) {
        super(connection);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void disconnectVM() {
        super.disconnectVM();
        LinkedList linkedList = this.fOutgoingPackets;
        synchronized (linkedList) {
            this.fOutgoingPackets.notifyAll();
        }
    }

    public void run() {
        while (!this.VMIsDisconnected()) {
            try {
                this.sendAvailablePackets();
            }
            catch (InterruptedException interruptedException) {
                this.disconnectVM();
            }
            catch (InterruptedIOException e) {
                this.disconnectVM(e);
            }
            catch (IOException e) {
                this.disconnectVM(e);
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void sendPacket(JdwpPacket packet) {
        if (this.VMIsDisconnected()) {
            String exMessage;
            String message = this.getDisconnectException() == null ? ConnectMessages.PacketSendManager_Got_IOException_from_Virtual_Machine_1 : ((exMessage = this.getDisconnectException().getMessage()) == null ? MessageFormat.format((String)ConnectMessages.PacketSendManager_Got__0__from_Virtual_Machine_1, (Object[])new String[]{this.getDisconnectException().getClass().getName()}) : MessageFormat.format((String)ConnectMessages.PacketSendManager_Got__0__from_Virtual_Machine___1__1, (Object[])new String[]{this.getDisconnectException().getClass().getName(), exMessage}));
            throw new VMDisconnectedException(message);
        }
        LinkedList linkedList = this.fOutgoingPackets;
        synchronized (linkedList) {
            this.fOutgoingPackets.add(packet);
            this.fOutgoingPackets.notifyAll();
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     * Unable to fully structure code
     */
    private void sendAvailablePackets() throws InterruptedException, IOException {
        packetsToSend = new LinkedList<E>();
        var2_2 = this.fOutgoingPackets;
        synchronized (var2_2) {
            while (this.fOutgoingPackets.size() == 0) {
                this.fOutgoingPackets.wait();
            }
            packetsToSend.addAll(this.fOutgoingPackets);
            this.fOutgoingPackets.clear();
            // MONITOREXIT @DISABLED, blocks:[0, 1] lbl11 : MonitorExitStatement: MONITOREXIT : var2_2
            if (true) ** GOTO lbl19
        }
        do {
            packet = (JdwpPacket)packetsToSend.removeFirst();
            bytes = packet.getPacketAsBytes();
            this.getConnection().writePacket(bytes);
lbl19:
            // 2 sources

        } while (packetsToSend.size() > 0);
    }
}

