/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package org.w3._2000._09.xmldsig;

import org.eclipse.emf.ecore.EObject;

public interface DSAKeyValueType
extends EObject {
    public byte[] getP();

    public void setP(byte[] var1);

    public byte[] getQ();

    public void setQ(byte[] var1);

    public byte[] getJ();

    public void setJ(byte[] var1);

    public byte[] getG();

    public void setG(byte[] var1);

    public byte[] getY();

    public void setY(byte[] var1);

    public byte[] getSeed();

    public void setSeed(byte[] var1);

    public byte[] getPgenCounter();

    public void setPgenCounter(byte[] var1);
}

