/*
 * Decompiled with CFR 0.152.
 */
package com.sun.jdi;

import com.sun.jdi.ClassNotLoadedException;
import com.sun.jdi.Field;
import com.sun.jdi.IncompatibleThreadStateException;
import com.sun.jdi.InvalidTypeException;
import com.sun.jdi.InvocationException;
import com.sun.jdi.Method;
import com.sun.jdi.ReferenceType;
import com.sun.jdi.ThreadReference;
import com.sun.jdi.Value;
import java.util.List;
import java.util.Map;

public interface ObjectReference
extends Value {
    public static final int INVOKE_SINGLE_THREADED = 1;
    public static final int INVOKE_NONVIRTUAL = 2;

    public void disableCollection();

    public void enableCollection();

    public int entryCount() throws IncompatibleThreadStateException;

    public boolean equals(Object var1);

    public Value getValue(Field var1);

    public Map getValues(List var1);

    public int hashCode();

    public Value invokeMethod(ThreadReference var1, Method var2, List var3, int var4) throws InvalidTypeException, ClassNotLoadedException, IncompatibleThreadStateException, InvocationException;

    public boolean isCollected();

    public ThreadReference owningThread() throws IncompatibleThreadStateException;

    public ReferenceType referenceType();

    public void setValue(Field var1, Value var2) throws InvalidTypeException, ClassNotLoadedException;

    public long uniqueID();

    public List waitingThreads() throws IncompatibleThreadStateException;

    public List referringObjects(long var1);
}

