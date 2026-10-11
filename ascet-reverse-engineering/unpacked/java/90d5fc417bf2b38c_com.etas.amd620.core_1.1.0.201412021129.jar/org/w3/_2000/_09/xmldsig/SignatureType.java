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
import org.w3._2000._09.xmldsig.KeyInfoType;
import org.w3._2000._09.xmldsig.ObjectType;
import org.w3._2000._09.xmldsig.SignatureValueType;
import org.w3._2000._09.xmldsig.SignedInfoType;

public interface SignatureType
extends EObject {
    public SignedInfoType getSignedInfo();

    public void setSignedInfo(SignedInfoType var1);

    public SignatureValueType getSignatureValue();

    public void setSignatureValue(SignatureValueType var1);

    public KeyInfoType getKeyInfo();

    public void setKeyInfo(KeyInfoType var1);

    public EList<ObjectType> getObject();

    public String getId();

    public void setId(String var1);
}

