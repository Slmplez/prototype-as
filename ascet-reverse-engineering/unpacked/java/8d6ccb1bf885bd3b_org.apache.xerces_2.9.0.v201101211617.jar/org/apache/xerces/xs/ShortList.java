/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xerces.xs;

import org.apache.xerces.xs.XSException;

public interface ShortList {
    public int getLength();

    public boolean contains(short var1);

    public short item(int var1) throws XSException;
}

