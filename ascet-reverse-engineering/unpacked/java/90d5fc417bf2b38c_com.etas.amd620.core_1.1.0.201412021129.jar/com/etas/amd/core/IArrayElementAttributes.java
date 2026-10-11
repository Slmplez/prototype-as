/*
 * Decompiled with CFR 0.152.
 */
package com.etas.amd.core;

import com.etas.amd.core.IBaseElementAttributes;

public interface IArrayElementAttributes
extends IBaseElementAttributes {
    public boolean isBooleanType();

    public boolean isNumericType();

    public String getTypeRef();
}

