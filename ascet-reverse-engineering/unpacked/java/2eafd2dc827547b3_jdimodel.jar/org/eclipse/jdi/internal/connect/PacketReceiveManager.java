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
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.ListIterator;
import org.eclipse.jdi.TimeoutException;
import org.eclipse.jdi.internal.VirtualMachineImpl;
import org.eclipse.jdi.internal.connect.ConnectMessages;
import org.eclipse.jdi.internal.connect.PacketManager;
import org.eclipse.jdi.internal.jdwp.JdwpCommandPacket;
import org.eclipse.jdi.internal.jdwp.JdwpPacket;
import org.eclipse.jdi.internal.jdwp.JdwpReplyPacket;

public class PacketReceiveManager
extends PacketManager {
    public static final int TIMEOUT_NOT_BLOCKING = 0;
    public static final int TIMEOUT_INFINITE = -1;
    private LinkedList fCommandPackets;
    private LinkedList fReplyPackets;
    private ArrayList fTimedOutPackets;
    private VirtualMachineImpl fVM;

    public PacketReceiveManager(Connection connection, VirtualMachineImpl vmImpl) {
        super(connection);
        this.fVM = vmImpl;
        this.fCommandPackets = new LinkedList();
        this.fReplyPackets = new LinkedList();
        this.fTimedOutPackets = new ArrayList();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void disconnectVM() {
        super.disconnectVM();
        LinkedList linkedList = this.fCommandPackets;
        synchronized (linkedList) {
            this.fCommandPackets.notifyAll();
        }
        linkedList = this.fReplyPackets;
        synchronized (linkedList) {
            this.fReplyPackets.notifyAll();
        }
    }

    public void run() {
        try {
            while (!this.VMIsDisconnected()) {
                this.readAvailablePacket();
            }
        }
        catch (InterruptedIOException e) {
            this.disconnectVM(e);
        }
        catch (IOException e) {
            this.disconnectVM(e);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public JdwpCommandPacket getCommand(int command, long timeToWait) throws InterruptedException {
        JdwpCommandPacket packet = null;
        LinkedList linkedList = this.fCommandPackets;
        synchronized (linkedList) {
            long remainingTime = timeToWait;
            while (!(this.VMIsDisconnected() || (packet = this.removeCommandPacket(command)) != null || timeToWait >= 0L && remainingTime <= 0L)) {
                long timeBeforeWait = System.currentTimeMillis();
                this.waitForPacketAvailable(remainingTime, this.fCommandPackets);
                long waitedTime = System.currentTimeMillis() - timeBeforeWait;
                remainingTime -= waitedTime;
            }
        }
        if (this.VMIsDisconnected()) {
            String exMessage;
            String message = this.getDisconnectException() == null ? ConnectMessages.PacketReceiveManager_Got_IOException_from_Virtual_Machine_1 : ((exMessage = this.getDisconnectException().getMessage()) == null ? MessageFormat.format((String)ConnectMessages.PacketReceiveManager_Got__0__from_Virtual_Machine_1, (Object[])new String[]{this.getDisconnectException().getClass().getName()}) : MessageFormat.format((String)ConnectMessages.PacketReceiveManager_Got__0__from_Virtual_Machine___1__1, (Object[])new String[]{this.getDisconnectException().getClass().getName(), exMessage}));
            throw new VMDisconnectedException(message);
        }
        if (packet == null) {
            throw new TimeoutException();
        }
        return packet;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public JdwpReplyPacket getReply(int id, long timeToWait) {
        JdwpReplyPacket packet = null;
        long remainingTime = timeToWait;
        AbstractList abstractList = this.fReplyPackets;
        synchronized (abstractList) {
            long timeBeforeWait = System.currentTimeMillis();
            while (!this.VMIsDisconnected() && remainingTime > 0L) {
                packet = this.removeReplyPacket(id);
                if (packet != null) break;
                try {
                    this.waitForPacketAvailable(remainingTime, this.fReplyPackets);
                }
                catch (InterruptedException interruptedException) {
                    break;
                }
                long waitedTime = System.currentTimeMillis() - timeBeforeWait;
                remainingTime = timeToWait - waitedTime;
            }
        }
        if (packet == null) {
            abstractList = this.fReplyPackets;
            synchronized (abstractList) {
                packet = this.removeReplyPacket(id);
            }
        }
        if (this.VMIsDisconnected()) {
            throw new VMDisconnectedException(ConnectMessages.PacketReceiveManager_Got_IOException_from_Virtual_Machine_2);
        }
        if (packet == null) {
            abstractList = this.fTimedOutPackets;
            synchronized (abstractList) {
                this.fTimedOutPackets.add(new Integer(id));
            }
            throw new TimeoutException(MessageFormat.format((String)ConnectMessages.PacketReceiveManager_0, (Object[])new String[]{String.valueOf(id)}));
        }
        return packet;
    }

    public JdwpReplyPacket getReply(JdwpCommandPacket commandPacket) {
        return this.getReply(commandPacket.getId(), this.fVM.getRequestTimeout());
    }

    private void waitForPacketAvailable(long timeToWait, Object lock) throws InterruptedException {
        if (timeToWait == 0L) {
            return;
        }
        if (timeToWait < 0L) {
            lock.wait();
        } else {
            lock.wait(timeToWait);
        }
    }

    private JdwpCommandPacket removeCommandPacket(int command) {
        ListIterator iter = this.fCommandPackets.listIterator();
        while (iter.hasNext()) {
            JdwpCommandPacket packet = (JdwpCommandPacket)iter.next();
            if (packet.getCommand() != command) continue;
            iter.remove();
            return packet;
        }
        return null;
    }

    private JdwpReplyPacket removeReplyPacket(int id) {
        ListIterator iter = this.fReplyPackets.listIterator();
        while (iter.hasNext()) {
            JdwpReplyPacket packet = (JdwpReplyPacket)iter.next();
            if (packet.getId() != id) continue;
            iter.remove();
            return packet;
        }
        return null;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private void addCommandPacket(JdwpCommandPacket packet) {
        if (this.isTimedOut(packet)) {
            return;
        }
        LinkedList linkedList = this.fCommandPackets;
        synchronized (linkedList) {
            this.fCommandPackets.add(packet);
            this.fCommandPackets.notifyAll();
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private boolean isTimedOut(JdwpPacket packet) {
        ArrayList arrayList = this.fTimedOutPackets;
        synchronized (arrayList) {
            block4: {
                if (!this.fTimedOutPackets.isEmpty()) break block4;
                return false;
            }
            Integer id = new Integer(packet.getId());
            return this.fTimedOutPackets.remove(id);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private void addReplyPacket(JdwpReplyPacket packet) {
        if (this.isTimedOut(packet)) {
            return;
        }
        LinkedList linkedList = this.fReplyPackets;
        synchronized (linkedList) {
            this.fReplyPackets.add(packet);
            this.fReplyPackets.notifyAll();
        }
    }

    private void readAvailablePacket() throws IOException {
        byte[] bytes = this.getConnection().readPacket();
        JdwpPacket packet = JdwpPacket.build(bytes);
        if (packet instanceof JdwpCommandPacket) {
            this.addCommandPacket((JdwpCommandPacket)packet);
        } else {
            this.addReplyPacket((JdwpReplyPacket)packet);
        }
    }
}

