/*
 * Decompiled with CFR 0.152.
 */
package com.sun.jdi;

import com.sun.jdi.ClassNotLoadedException;
import com.sun.jdi.IncompatibleThreadStateException;
import com.sun.jdi.InvalidTypeException;
import com.sun.jdi.ObjectReference;
import com.sun.jdi.StackFrame;
import com.sun.jdi.ThreadGroupReference;
import com.sun.jdi.Value;
import java.util.List;

public interface ThreadReference
extends ObjectReference {
    public static final int THREAD_STATUS_UNKNOWN = -1;
    public static final int THREAD_STATUS_ZOMBIE = 0;
    public static final int THREAD_STATUS_RUNNING = 1;
    public static final int THREAD_STATUS_SLEEPING = 2;
    public static final int THREAD_STATUS_MONITOR = 3;
    public static final int THREAD_STATUS_WAIT = 4;
    public static final int THREAD_STATUS_NOT_STARTED = 5;

    public ObjectReference currentContendedMonitor() throws IncompatibleThreadStateException;

    public StackFrame frame(int var1) throws IncompatibleThreadStateException;

    public int frameCount() throws IncompatibleThreadStateException;

    public List frames() throws IncompatibleThreadStateException;

    public List frames(int var1, int var2) throws IncompatibleThreadStateException;

    public void interrupt();

    public boolean isAtBreakpoint();

    public boolean isSuspended();

    public String name();

    public List ownedMonitors() throws IncompatibleThreadStateException;

    public void popFrames(StackFrame var1) throws IncompatibleThreadStateException;

    public void resume();

    public int status();

    public void stop(ObjectReference var1) throws InvalidTypeException;

    public void suspend();

    public int suspendCount();

    public ThreadGroupReference threadGroup();

    public void forceEarlyReturn(Value var1) throws InvalidTypeException, ClassNotLoadedException, IncompatibleThreadStateException;

    public List ownedMonitorsAndFrames() throws IncompatibleThreadStateException;
}

