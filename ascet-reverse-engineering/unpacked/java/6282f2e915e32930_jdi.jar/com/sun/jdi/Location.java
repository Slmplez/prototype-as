/*
 * Decompiled with CFR 0.152.
 */
package com.sun.jdi;

import com.sun.jdi.AbsentInformationException;
import com.sun.jdi.Method;
import com.sun.jdi.Mirror;
import com.sun.jdi.ReferenceType;

public interface Location
extends Mirror,
Comparable {
    public long codeIndex();

    public ReferenceType declaringType();

    public boolean equals(Object var1);

    public int hashCode();

    public int lineNumber();

    public int lineNumber(String var1);

    public Method method();

    public String sourceName() throws AbsentInformationException;

    public String sourceName(String var1) throws AbsentInformationException;

    public String sourcePath() throws AbsentInformationException;

    public String sourcePath(String var1) throws AbsentInformationException;
}

