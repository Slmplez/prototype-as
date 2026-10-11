/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.jdom;

import org.eclipse.jdt.core.jdom.IDOMNode;

public interface IDOMMember
extends IDOMNode {
    public String getComment();

    public int getFlags();

    public void setComment(String var1);

    public void setFlags(int var1);
}

