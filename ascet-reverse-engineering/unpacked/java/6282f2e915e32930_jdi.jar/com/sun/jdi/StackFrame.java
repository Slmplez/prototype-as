/*
 * Decompiled with CFR 0.152.
 */
package com.sun.jdi;

import com.sun.jdi.AbsentInformationException;
import com.sun.jdi.ClassNotLoadedException;
import com.sun.jdi.InvalidTypeException;
import com.sun.jdi.LocalVariable;
import com.sun.jdi.Locatable;
import com.sun.jdi.Location;
import com.sun.jdi.Mirror;
import com.sun.jdi.ObjectReference;
import com.sun.jdi.ThreadReference;
import com.sun.jdi.Value;
import java.util.List;
import java.util.Map;

public interface StackFrame
extends Mirror,
Locatable {
    public Value getValue(LocalVariable var1);

    public Map getValues(List var1);

    public Location location();

    public void setValue(LocalVariable var1, Value var2) throws InvalidTypeException, ClassNotLoadedException;

    public ObjectReference thisObject();

    public ThreadReference thread();

    public LocalVariable visibleVariableByName(String var1) throws AbsentInformationException;

    public List visibleVariables() throws AbsentInformationException;

    public List getArgumentValues();
}

