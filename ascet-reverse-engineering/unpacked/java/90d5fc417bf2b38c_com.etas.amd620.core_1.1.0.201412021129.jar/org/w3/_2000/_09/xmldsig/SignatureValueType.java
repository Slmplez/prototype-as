/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package org.w3._2000._09.xmldsig;

import org.eclipse.emf.ecore.EObject;

public interface SignatureValueType
extends EObject {
    public byte[] getValue();

    public void setValue(byte[] var1);

    public String getId();

    public void setId(String var1);
}

