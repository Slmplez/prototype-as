/*
 * Decompiled with CFR 0.152.
 */
package com.etas.amd.core;

import com.etas.amd.core.IArrayElementAttributes;
import com.etas.amd.core.IBaseElementAttributes;

public interface IElementAttributes
extends IBaseElementAttributes {
    public String getName();

    public String getAddrMethod();

    public String getImplPolicy();

    public boolean isBooleanType();

    public boolean isNumericType();

    public boolean isEnumType();

    public boolean isRecordType();

    public boolean isArrayType();

    public String getTypeRef();

    public String getArraySize();

    public IArrayElementAttributes getArrayElement();
}

