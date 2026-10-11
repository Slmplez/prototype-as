/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package org.w3._2000._09.xmldsig;

import org.eclipse.emf.ecore.EObject;

public interface RSAKeyValueType
extends EObject {
    public byte[] getModulus();

    public void setModulus(byte[] var1);

    public byte[] getExponent();

    public void setExponent(byte[] var1);
}

