/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.jdom;

import org.eclipse.jdt.core.jdom.IDOMNode;

public interface IDOMCompilationUnit
extends IDOMNode {
    public String getHeader();

    public String getName();

    public void setHeader(String var1);

    public void setName(String var1);
}

