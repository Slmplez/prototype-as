/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.jdom;

import org.eclipse.jdt.core.jdom.IDOMMember;

public interface IDOMField
extends IDOMMember {
    public String getInitializer();

    public String getName();

    public String getType();

    public void setInitializer(String var1);

    public void setName(String var1) throws IllegalArgumentException;

    public void setType(String var1) throws IllegalArgumentException;
}

