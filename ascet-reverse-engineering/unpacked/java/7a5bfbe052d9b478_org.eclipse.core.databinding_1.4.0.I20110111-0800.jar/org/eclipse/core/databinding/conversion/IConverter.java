/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.databinding.conversion;

public interface IConverter {
    public Object getFromType();

    public Object getToType();

    public Object convert(Object var1);
}

