/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentSpecification;

import com.etas.amd620.core.ComponentSpecification.PointT;
import java.math.BigInteger;
import org.eclipse.emf.ecore.EObject;

public interface SequenceCallT
extends EObject {
    public PointT getPosition();

    public void setPosition(PointT var1);

    public BigInteger getConnectOID();

    public void setConnectOID(BigInteger var1);

    public boolean isEndAtomic();

    public void setEndAtomic(boolean var1);

    public void unsetEndAtomic();

    public boolean isSetEndAtomic();

    public BigInteger getGraphicOID();

    public void setGraphicOID(BigInteger var1);

    public String getMethodName();

    public void setMethodName(String var1);

    public String getMethodOID();

    public void setMethodOID(String var1);

    public BigInteger getSequenceNumber();

    public void setSequenceNumber(BigInteger var1);

    public boolean isStartAtomic();

    public void setStartAtomic(boolean var1);

    public void unsetStartAtomic();

    public boolean isSetStartAtomic();

    public boolean isUserVisibility();

    public void setUserVisibility(boolean var1);

    public void unsetUserVisibility();

    public boolean isSetUserVisibility();
}

