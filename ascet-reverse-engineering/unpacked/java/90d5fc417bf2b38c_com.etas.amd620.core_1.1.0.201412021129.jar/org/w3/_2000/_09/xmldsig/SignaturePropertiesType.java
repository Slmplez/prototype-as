/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EObject
 */
package org.w3._2000._09.xmldsig;

import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EObject;
import org.w3._2000._09.xmldsig.SignaturePropertyType;

public interface SignaturePropertiesType
extends EObject {
    public EList<SignaturePropertyType> getSignatureProperty();

    public String getId();

    public void setId(String var1);
}

