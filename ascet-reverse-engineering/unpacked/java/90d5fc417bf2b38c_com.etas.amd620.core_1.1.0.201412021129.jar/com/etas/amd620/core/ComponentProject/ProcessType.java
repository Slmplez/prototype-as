/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentProject;

import java.math.BigInteger;
import org.eclipse.emf.ecore.EObject;

public interface ProcessType
extends EObject {
    public boolean isDefault();

    public void setDefault(boolean var1);

    public void unsetDefault();

    public boolean isSetDefault();

    public String getElementName();

    public void setElementName(String var1);

    public String getElementOID();

    public void setElementOID(String var1);

    public BigInteger getIndex();

    public void setIndex(BigInteger var1);

    public String getMethodName();

    public void setMethodName(String var1);

    public String getMethodOID();

    public void setMethodOID(String var1);
}

