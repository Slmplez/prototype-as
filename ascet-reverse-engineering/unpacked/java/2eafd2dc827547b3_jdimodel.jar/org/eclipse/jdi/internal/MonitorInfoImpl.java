/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.InvalidStackFrameException
 *  com.sun.jdi.MonitorInfo
 *  com.sun.jdi.ObjectReference
 *  com.sun.jdi.ThreadReference
 */
package org.eclipse.jdi.internal;

import com.sun.jdi.InvalidStackFrameException;
import com.sun.jdi.MonitorInfo;
import com.sun.jdi.ObjectReference;
import com.sun.jdi.ThreadReference;
import org.eclipse.jdi.internal.MirrorImpl;
import org.eclipse.jdi.internal.VirtualMachineImpl;

public class MonitorInfoImpl
extends MirrorImpl
implements MonitorInfo {
    private ThreadReference fThread;
    private ObjectReference fMonitor;
    private int fDepth;

    public MonitorInfoImpl(ThreadReference thread, int depth, ObjectReference monitor, VirtualMachineImpl virtualMachineImpl) {
        super("MonitorInfoImpl", virtualMachineImpl);
        this.fThread = thread;
        this.fDepth = depth;
        this.fMonitor = monitor;
    }

    public ObjectReference monitor() throws InvalidStackFrameException {
        return this.fMonitor;
    }

    public int stackDepth() throws InvalidStackFrameException {
        return this.fDepth;
    }

    public ThreadReference thread() throws InvalidStackFrameException {
        return this.fThread;
    }
}

