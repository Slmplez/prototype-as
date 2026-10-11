/*
 * Decompiled with CFR 0.152.
 */
package com.sun.jdi;

import com.sun.jdi.ClassNotLoadedException;
import com.sun.jdi.InvalidTypeException;
import com.sun.jdi.ObjectReference;
import com.sun.jdi.Value;
import java.util.List;

public interface ArrayReference
extends ObjectReference {
    public Value getValue(int var1);

    public List getValues();

    public List getValues(int var1, int var2);

    public int length();

    public void setValue(int var1, Value var2) throws InvalidTypeException, ClassNotLoadedException;

    public void setValues(int var1, List var2, int var3, int var4) throws InvalidTypeException, ClassNotLoadedException;

    public void setValues(List var1) throws InvalidTypeException, ClassNotLoadedException;
}

