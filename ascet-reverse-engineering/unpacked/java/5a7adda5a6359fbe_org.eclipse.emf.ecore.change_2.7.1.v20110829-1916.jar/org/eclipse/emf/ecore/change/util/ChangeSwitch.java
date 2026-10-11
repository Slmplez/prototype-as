/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.util.Switch
 */
package org.eclipse.emf.ecore.change.util;

import java.util.Map;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.change.ChangeDescription;
import org.eclipse.emf.ecore.change.ChangePackage;
import org.eclipse.emf.ecore.change.FeatureChange;
import org.eclipse.emf.ecore.change.FeatureMapEntry;
import org.eclipse.emf.ecore.change.ListChange;
import org.eclipse.emf.ecore.change.ResourceChange;
import org.eclipse.emf.ecore.util.Switch;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ChangeSwitch<T>
extends Switch<T> {
    protected static ChangePackage modelPackage;

    public ChangeSwitch() {
        if (modelPackage == null) {
            modelPackage = ChangePackage.eINSTANCE;
        }
    }

    protected boolean isSwitchFor(EPackage ePackage) {
        return ePackage == modelPackage;
    }

    protected T doSwitch(int classifierID, EObject theEObject) {
        switch (classifierID) {
            case 0: {
                ChangeDescription changeDescription = (ChangeDescription)theEObject;
                T result = this.caseChangeDescription(changeDescription);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                Map.Entry eObjectToChangesMapEntry = (Map.Entry)theEObject;
                T result = this.caseEObjectToChangesMapEntry(eObjectToChangesMapEntry);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                FeatureChange featureChange = (FeatureChange)theEObject;
                T result = this.caseFeatureChange(featureChange);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                ListChange listChange = (ListChange)theEObject;
                T result = this.caseListChange(listChange);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                ResourceChange resourceChange = (ResourceChange)theEObject;
                T result = this.caseResourceChange(resourceChange);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                FeatureMapEntry featureMapEntry = (FeatureMapEntry)theEObject;
                T result = this.caseFeatureMapEntry(featureMapEntry);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseChangeDescription(ChangeDescription object) {
        return null;
    }

    public T caseEObjectToChangesMapEntry(Map.Entry<EObject, EList<FeatureChange>> object) {
        return null;
    }

    public T caseFeatureChange(FeatureChange object) {
        return null;
    }

    public T caseListChange(ListChange object) {
        return null;
    }

    public T caseResourceChange(ResourceChange object) {
        return null;
    }

    public T caseFeatureMapEntry(FeatureMapEntry object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

