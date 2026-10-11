/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.jdom;

import org.eclipse.jdt.core.jdom.IDOMMember;

public interface IDOMType
extends IDOMMember {
    public void addSuperInterface(String var1) throws IllegalArgumentException;

    public String[] getTypeParameters();

    public String getName();

    public String getSuperclass();

    public String[] getSuperInterfaces();

    public boolean isClass();

    public boolean isEnum();

    public boolean isAnnotation();

    public void setClass(boolean var1);

    public void setEnum(boolean var1);

    public void setAnnotation(boolean var1);

    public void setTypeParameters(String[] var1);

    public void setName(String var1) throws IllegalArgumentException;

    public void setSuperclass(String var1);

    public void setSuperInterfaces(String[] var1);
}

