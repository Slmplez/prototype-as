/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.jdom;

import org.eclipse.jdt.core.jdom.IDOMNode;

public interface IDOMImport
extends IDOMNode {
    public String getName();

    public boolean isOnDemand();

    public int getFlags();

    public void setFlags(int var1);

    public void setName(String var1);
}

