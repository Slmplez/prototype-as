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

public interface SignaturePropertyType
extends EObject {
    public FeatureMap getMixed();

    public FeatureMap getGroup();

    public FeatureMap getAny();

    public String getId();

    public void setId(String var1);

    public String getTarget();

    public void setTarget(String var1);
}

