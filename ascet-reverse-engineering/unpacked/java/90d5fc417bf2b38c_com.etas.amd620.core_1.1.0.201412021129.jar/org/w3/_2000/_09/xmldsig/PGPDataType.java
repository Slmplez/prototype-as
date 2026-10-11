/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.util.FeatureMap
 */
package org.w3._2000._09.xmldsig;

import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.util.FeatureMap;

public interface PGPDataType
extends EObject {
    public byte[] getPGPKeyID();

    public void setPGPKeyID(byte[] var1);

    public byte[] getPGPKeyPacket();

    public void setPGPKeyPacket(byte[] var1);

    public FeatureMap getAny();

    public byte[] getPGPKeyPacket1();

    public void setPGPKeyPacket1(byte[] var1);

    public FeatureMap getAny1();
}

