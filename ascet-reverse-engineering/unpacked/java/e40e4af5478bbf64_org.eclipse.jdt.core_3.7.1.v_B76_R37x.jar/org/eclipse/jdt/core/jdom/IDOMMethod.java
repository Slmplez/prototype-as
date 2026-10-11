/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.jdom;

import org.eclipse.jdt.core.jdom.IDOMMember;

public interface IDOMMethod
extends IDOMMember {
    public void addException(String var1) throws IllegalArgumentException;

    public void addParameter(String var1, String var2) throws IllegalArgumentException;

    public String getBody();

    public void setDefault(String var1);

    public String getDefault();

    public String[] getExceptions();

    public String[] getTypeParameters();

    public String getName();

    public String[] getParameterNames();

    public String[] getParameterTypes();

    public String getReturnType();

    public boolean isConstructor();

    public void setBody(String var1);

    public void setConstructor(boolean var1);

    public void setExceptions(String[] var1);

    public void setTypeParameters(String[] var1);

    public void setName(String var1) throws IllegalArgumentException;

    public void setParameters(String[] var1, String[] var2) throws IllegalArgumentException;

    public void setReturnType(String var1) throws IllegalArgumentException;
}

