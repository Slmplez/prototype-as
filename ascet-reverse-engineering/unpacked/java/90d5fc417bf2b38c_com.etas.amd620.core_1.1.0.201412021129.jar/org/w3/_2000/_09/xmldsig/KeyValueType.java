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
import org.w3._2000._09.xmldsig.DSAKeyValueType;
import org.w3._2000._09.xmldsig.RSAKeyValueType;

public interface KeyValueType
extends EObject {
    public FeatureMap getMixed();

    public DSAKeyValueType getDSAKeyValue();

    public void setDSAKeyValue(DSAKeyValueType var1);

    public RSAKeyValueType getRSAKeyValue();

    public void setRSAKeyValue(RSAKeyValueType var1);

    public FeatureMap getAny();
}

