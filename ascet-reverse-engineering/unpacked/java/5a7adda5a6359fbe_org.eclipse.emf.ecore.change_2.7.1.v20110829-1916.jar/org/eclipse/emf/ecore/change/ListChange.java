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
import org.eclipse.emf.ecore.change.ChangeKind;
import org.eclipse.emf.ecore.change.FeatureMapEntry;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ListChange
extends EObject {
    public ChangeKind getKind();

    public void setKind(ChangeKind var1);

    public EList<String> getDataValues();

    public int getIndex();

    public void setIndex(int var1);

    public int getMoveToIndex();

    public void setMoveToIndex(int var1);

    public EList<EObject> getReferenceValues();

    public EStructuralFeature getFeature();

    public void setFeature(EStructuralFeature var1);

    public EList<FeatureMapEntry> getFeatureMapEntryValues();

    public EList<Object> getValues();

    public void apply(EList<Object> var1);

    public void applyAndReverse(EList<Object> var1);

    public void reverse(EList<Object> var1);
}

