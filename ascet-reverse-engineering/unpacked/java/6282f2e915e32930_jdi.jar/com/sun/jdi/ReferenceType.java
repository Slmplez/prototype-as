/*
 * Decompiled with CFR 0.152.
 */
package com.sun.jdi;

import com.sun.jdi.AbsentInformationException;
import com.sun.jdi.Accessible;
import com.sun.jdi.ClassLoaderReference;
import com.sun.jdi.ClassObjectReference;
import com.sun.jdi.Field;
import com.sun.jdi.Type;
import com.sun.jdi.Value;
import java.util.List;
import java.util.Map;

public interface ReferenceType
extends Type,
Comparable,
Accessible {
    public List allFields();

    public List allLineLocations() throws AbsentInformationException;

    public List allLineLocations(String var1, String var2) throws AbsentInformationException;

    public List allMethods();

    public List availableStrata();

    public ClassLoaderReference classLoader();

    public ClassObjectReference classObject();

    public String defaultStratum();

    public boolean equals(Object var1);

    public boolean failedToInitialize();

    public Field fieldByName(String var1);

    public List fields();

    public String genericSignature();

    public Value getValue(Field var1);

    public Map getValues(List var1);

    public int hashCode();

    public boolean isAbstract();

    public boolean isFinal();

    public boolean isInitialized();

    public boolean isPrepared();

    public boolean isStatic();

    public boolean isVerified();

    public List locationsOfLine(int var1) throws AbsentInformationException;

    public List locationsOfLine(String var1, String var2, int var3) throws AbsentInformationException;

    public List methods();

    public List methodsByName(String var1);

    public List methodsByName(String var1, String var2);

    public String name();

    public List nestedTypes();

    public String sourceDebugExtension() throws AbsentInformationException;

    public String sourceName() throws AbsentInformationException;

    public List sourceNames(String var1) throws AbsentInformationException;

    public List sourcePaths(String var1) throws AbsentInformationException;

    public List visibleFields();

    public List visibleMethods();

    public List instances(long var1);

    public int majorVersion();

    public int minorVersion();

    public int constantPoolCount();

    public byte[] constantPool();
}

