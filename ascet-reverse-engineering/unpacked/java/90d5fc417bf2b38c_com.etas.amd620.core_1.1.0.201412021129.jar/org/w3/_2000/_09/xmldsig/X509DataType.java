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
import org.w3._2000._09.xmldsig.X509IssuerSerialType;

public interface X509DataType
extends EObject {
    public FeatureMap getGroup();

    public EList<X509IssuerSerialType> getX509IssuerSerial();

    public EList<byte[]> getX509SKI();

    public EList<String> getX509SubjectName();

    public EList<byte[]> getX509Certificate();

    public EList<byte[]> getX509CRL();

    public FeatureMap getAny();
}

