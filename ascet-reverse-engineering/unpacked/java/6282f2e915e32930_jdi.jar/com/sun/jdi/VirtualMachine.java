/*
 * Decompiled with CFR 0.152.
 */
package com.sun.jdi;

import com.sun.jdi.BooleanValue;
import com.sun.jdi.ByteValue;
import com.sun.jdi.CharValue;
import com.sun.jdi.DoubleValue;
import com.sun.jdi.FloatValue;
import com.sun.jdi.IntegerValue;
import com.sun.jdi.LongValue;
import com.sun.jdi.Mirror;
import com.sun.jdi.ShortValue;
import com.sun.jdi.StringReference;
import com.sun.jdi.VoidValue;
import com.sun.jdi.event.EventQueue;
import com.sun.jdi.request.EventRequestManager;
import java.util.List;
import java.util.Map;

public interface VirtualMachine
extends Mirror {
    public static final int TRACE_NONE = 0;
    public static final int TRACE_SENDS = 1;
    public static final int TRACE_RECEIVES = 2;
    public static final int TRACE_EVENTS = 4;
    public static final int TRACE_REFTYPES = 8;
    public static final int TRACE_OBJREFS = 16;
    public static final int TRACE_ALL = 0xFFFFFF;

    public List allClasses();

    public List allThreads();

    public boolean canAddMethod();

    public boolean canBeModified();

    public boolean canGetBytecodes();

    public boolean canGetCurrentContendedMonitor();

    public boolean canGetMonitorInfo();

    public boolean canGetOwnedMonitorInfo();

    public boolean canGetSourceDebugExtension();

    public boolean canGetSyntheticAttribute();

    public boolean canPopFrames();

    public boolean canRedefineClasses();

    public boolean canRequestVMDeathEvent();

    public boolean canUnrestrictedlyRedefineClasses();

    public boolean canUseInstanceFilters();

    public boolean canWatchFieldAccess();

    public boolean canWatchFieldModification();

    public List classesByName(String var1);

    public String description();

    public void dispose();

    public EventQueue eventQueue();

    public EventRequestManager eventRequestManager();

    public void exit(int var1);

    public String getDefaultStratum();

    public BooleanValue mirrorOf(boolean var1);

    public ByteValue mirrorOf(byte var1);

    public CharValue mirrorOf(char var1);

    public DoubleValue mirrorOf(double var1);

    public FloatValue mirrorOf(float var1);

    public IntegerValue mirrorOf(int var1);

    public LongValue mirrorOf(long var1);

    public StringReference mirrorOf(String var1);

    public ShortValue mirrorOf(short var1);

    public String name();

    public Process process();

    public void redefineClasses(Map var1);

    public void resume();

    public void setDebugTraceMode(int var1);

    public void setDefaultStratum(String var1);

    public void suspend();

    public List topLevelThreadGroups();

    public String version();

    public boolean canGetInstanceInfo();

    public long[] instanceCounts(List var1);

    public boolean canGetClassFileVersion();

    public boolean canGetConstantPool();

    public boolean canUseSourceNameFilters();

    public boolean canGetMethodReturnValues();

    public boolean canForceEarlyReturn();

    public boolean canRequestMonitorEvents();

    public boolean canGetMonitorFrameInfo();

    public VoidValue mirrorOfVoid();
}

