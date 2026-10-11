/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EStructuralFeature
 */
package org.eclipse.emf.ecore.change;

import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EStructuralFeature;

public interface FeatureMapEntry
extends EObject {
    public String getFeatureName();

    public void setFeatureName(String var1);

    public void unsetFeatureName();

    public boolean isSetFeatureName();

    public String getDataValue();

    public void setDataValue(String var1);

    public Object getValue();

    public EStructuralFeature getFeature();

    public void setFeature(EStructuralFeature var1);

    public void unsetFeature();

    public boolean isSetFeature();

    public EObject getReferenceValue();

    public void setReferenceValue(EObject var1);
}

