/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EStructuralFeature
 */
package org.eclipse.emf.ecore.change;

import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.change.ListChange;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface FeatureChange
extends EObject {
    public String getFeatureName();

    public void setFeatureName(String var1);

    public void unsetFeatureName();

    public boolean isSetFeatureName();

    public String getDataValue();

    public void setDataValue(String var1);

    public boolean isSet();

    public void setSet(boolean var1);

    public EStructuralFeature getFeature();

    public void setFeature(EStructuralFeature var1);

    public void unsetFeature();

    public boolean isSetFeature();

    public EObject getReferenceValue();

    public void setReferenceValue(EObject var1);

    public EList<ListChange> getListChanges();

    public Object getValue();

    public void apply(EObject var1);

    public void applyAndReverse(EObject var1);

    public void reverse(EObject var1);
}

