/*
 * Decompiled with CFR 0.152.
 */
package com.sun.jdi;

import com.sun.jdi.AbsentInformationException;
import com.sun.jdi.ClassNotLoadedException;
import com.sun.jdi.Locatable;
import com.sun.jdi.Location;
import com.sun.jdi.Type;
import com.sun.jdi.TypeComponent;
import java.util.List;

public interface Method
extends TypeComponent,
Locatable,
Comparable {
    public List allLineLocations() throws AbsentInformationException;

    public List allLineLocations(String var1, String var2) throws AbsentInformationException;

    public List arguments() throws AbsentInformationException;

    public List argumentTypeNames();

    public List argumentTypes() throws ClassNotLoadedException;

    public byte[] bytecodes();

    public boolean equals(Object var1);

    public int hashCode();

    public boolean isAbstract();

    public boolean isBridge();

    public boolean isConstructor();

    public boolean isNative();

    public boolean isObsolete();

    public boolean isStaticInitializer();

    public boolean isSynchronized();

    public boolean isVarArgs();

    public Location locationOfCodeIndex(long var1);

    public List locationsOfLine(int var1) throws AbsentInformationException;

    public List locationsOfLine(String var1, String var2, int var3) throws AbsentInformationException;

    public Type returnType() throws ClassNotLoadedException;

    public String returnTypeName();

    public List variables() throws AbsentInformationException;

    public List variablesByName(String var1) throws AbsentInformationException;
}

