/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentImplementation;

import com.etas.amd620.core.ComponentImplementation.ImplementationSetType;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EObject;
import org.w3._2000._09.xmldsig.SignatureType;

public interface ComponentImplementationType
extends EObject {
    public EList<ImplementationSetType> getImplementationSet();

    public SignatureType getSignature();

    public void setSignature(SignatureType var1);

    public String getSchemaVersion();

    public void setSchemaVersion(String var1);

    public String getToolVersion();

    public void setToolVersion(String var1);
}

