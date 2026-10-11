/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentSpecification;

import org.eclipse.emf.ecore.EObject;

public interface OperationInvokedEventType
extends EObject {
    public String getOperationName();

    public void setOperationName(String var1);

    public String getOperationOID();

    public void setOperationOID(String var1);

    public String getPortName();

    public void setPortName(String var1);

    public String getPortOID();

    public void setPortOID(String var1);
}

