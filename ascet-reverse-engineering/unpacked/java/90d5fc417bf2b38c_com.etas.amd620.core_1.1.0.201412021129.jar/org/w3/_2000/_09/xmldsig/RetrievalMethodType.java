/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package org.w3._2000._09.xmldsig;

import org.eclipse.emf.ecore.EObject;
import org.w3._2000._09.xmldsig.TransformsType;

public interface RetrievalMethodType
extends EObject {
    public TransformsType getTransforms();

    public void setTransforms(TransformsType var1);

    public String getType();

    public void setType(String var1);

    public String getURI();

    public void setURI(String var1);
}

