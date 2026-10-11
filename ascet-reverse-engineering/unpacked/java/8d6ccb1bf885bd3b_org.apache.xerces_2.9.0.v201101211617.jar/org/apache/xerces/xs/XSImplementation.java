/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xerces.xs;

import org.apache.xerces.xs.StringList;
import org.apache.xerces.xs.XSException;
import org.apache.xerces.xs.XSLoader;

public interface XSImplementation {
    public StringList getRecognizedVersions();

    public XSLoader createXSLoader(StringList var1) throws XSException;
}

