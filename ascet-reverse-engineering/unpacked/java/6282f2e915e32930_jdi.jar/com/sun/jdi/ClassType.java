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
import com.sun.jdi.ObjectReference;
import com.sun.jdi.ReferenceType;
import com.sun.jdi.ThreadReference;
import com.sun.jdi.Value;
import java.util.List;

public interface ClassType
extends ReferenceType {
    public static final int INVOKE_SINGLE_THREADED = 1;

    public List allInterfaces();

    public Method concreteMethodByName(String var1, String var2);

    public List interfaces();

    public Value invokeMethod(ThreadReference var1, Method var2, List var3, int var4) throws InvalidTypeException, ClassNotLoadedException, IncompatibleThreadStateException, InvocationException;

    public boolean isEnum();

    public ObjectReference newInstance(ThreadReference var1, Method var2, List var3, int var4) throws InvalidTypeException, ClassNotLoadedException, IncompatibleThreadStateException, InvocationException;

    public void setValue(Field var1, Value var2) throws InvalidTypeException, ClassNotLoadedException;

    public List subclasses();

    public ClassType superclass();
}

