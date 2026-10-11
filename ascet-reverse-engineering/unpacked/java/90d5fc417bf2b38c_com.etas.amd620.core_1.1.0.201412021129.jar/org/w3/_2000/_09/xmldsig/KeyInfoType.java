/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.util.FeatureMap
 */
package org.w3._2000._09.xmldsig;

import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.util.FeatureMap;
import org.w3._2000._09.xmldsig.KeyValueType;
import org.w3._2000._09.xmldsig.PGPDataType;
import org.w3._2000._09.xmldsig.RetrievalMethodType;
import org.w3._2000._09.xmldsig.SPKIDataType;
import org.w3._2000._09.xmldsig.X509DataType;

public interface KeyInfoType
extends EObject {
    public FeatureMap getMixed();

    public FeatureMap getGroup();

    public EList<String> getKeyName();

    public EList<KeyValueType> getKeyValue();

    public EList<RetrievalMethodType> getRetrievalMethod();

    public EList<X509DataType> getX509Data();

    public EList<PGPDataType> getPGPData();

    public EList<SPKIDataType> getSPKIData();

    public EList<String> getMgmtData();

    public FeatureMap getAny();

    public String getId();

    public void setId(String var1);
}

