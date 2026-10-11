/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.VMDisconnectedException
 *  com.sun.jdi.event.EventQueue
 *  com.sun.jdi.event.EventSet
 */
package org.eclipse.jdi.internal.event;

import com.sun.jdi.VMDisconnectedException;
import com.sun.jdi.event.EventQueue;
import com.sun.jdi.event.EventSet;
import java.io.IOException;
import org.eclipse.jdi.TimeoutException;
import org.eclipse.jdi.internal.MirrorImpl;
import org.eclipse.jdi.internal.VirtualMachineImpl;
import org.eclipse.jdi.internal.event.EventSetImpl;
import org.eclipse.jdi.internal.event.VMDisconnectEventImpl;
import org.eclipse.jdi.internal.jdwp.JdwpCommandPacket;
import org.eclipse.jdi.internal.request.RequestID;

public class EventQueueImpl
extends MirrorImpl
implements EventQueue {
    private boolean genereatedVMDisconnectEvent = false;

    public EventQueueImpl(VirtualMachineImpl vmImpl) {
        super("EventQueue", vmImpl);
    }

    public EventSet remove() throws InterruptedException {
        return this.remove(-1L);
    }

    public EventSet remove(long timeout) throws InterruptedException {
        try {
            EventSetImpl set;
            do {
                JdwpCommandPacket packet = this.getCommandVM(16484, timeout);
                this.initJdwpEventSet(packet);
                set = EventSetImpl.read(this, packet.dataInStream());
                this.handledJdwpEventSet();
            } while (set.isEmpty());
            return set;
        }
        catch (TimeoutException timeoutException) {
            this.handledJdwpEventSet();
            return null;
        }
        catch (IOException e) {
            this.handledJdwpEventSet();
            this.defaultIOExceptionHandler(e);
            return null;
        }
        catch (VMDisconnectedException e) {
            this.handledJdwpEventSet();
            if (!this.genereatedVMDisconnectEvent) {
                this.genereatedVMDisconnectEvent = true;
                return new EventSetImpl(this.virtualMachineImpl(), new VMDisconnectEventImpl(this.virtualMachineImpl(), RequestID.nullID));
            }
            throw e;
        }
    }
}

