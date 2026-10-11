/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xerces.xs.datatypes;

import org.apache.xerces.xs.XSException;

public interface ByteList {
    public int getLength();

    public boolean contains(byte var1);

    public byte item(int var1) throws XSException;
}

