/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package org.w3._2000._09.xmldsig;

import java.math.BigInteger;
import org.eclipse.emf.ecore.EObject;

public interface X509IssuerSerialType
extends EObject {
    public String getX509IssuerName();

    public void setX509IssuerName(String var1);

    public BigInteger getX509SerialNumber();

    public void setX509SerialNumber(BigInteger var1);
}

