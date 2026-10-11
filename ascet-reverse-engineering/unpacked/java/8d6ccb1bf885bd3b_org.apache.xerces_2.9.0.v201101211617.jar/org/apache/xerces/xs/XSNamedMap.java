/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xerces.xs;

import org.apache.xerces.xs.XSObject;

public interface XSNamedMap {
    public int getLength();

    public XSObject item(int var1);

    public XSObject itemByName(String var1, String var2);
}

