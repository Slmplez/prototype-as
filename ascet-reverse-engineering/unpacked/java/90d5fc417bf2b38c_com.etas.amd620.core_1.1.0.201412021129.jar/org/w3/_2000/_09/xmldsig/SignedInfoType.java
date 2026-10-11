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
import org.w3._2000._09.xmldsig.CanonicalizationMethodType;
import org.w3._2000._09.xmldsig.ReferenceType;
import org.w3._2000._09.xmldsig.SignatureMethodType;

public interface SignedInfoType
extends EObject {
    public CanonicalizationMethodType getCanonicalizationMethod();

    public void setCanonicalizationMethod(CanonicalizationMethodType var1);

    public SignatureMethodType getSignatureMethod();

    public void setSignatureMethod(SignatureMethodType var1);

    public EList<ReferenceType> getReference();

    public String getId();

    public void setId(String var1);
}

