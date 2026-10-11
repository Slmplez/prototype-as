/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.util.EList
 */
package org.eclipse.emf.ecore.impl;

import java.util.Collection;
import java.util.ListIterator;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.ENamedElement;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.EClassImpl;
import org.eclipse.emf.ecore.impl.EModelElementImpl;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EContentsEList;
import org.eclipse.emf.ecore.util.ECrossReferenceEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class ENamedElementImpl
extends EModelElementImpl
implements ENamedElement {
    protected static final String NAME_EDEFAULT = null;
    protected String name = NAME_EDEFAULT;

    protected ENamedElementImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return EcorePackage.Literals.ENAMED_ELEMENT;
    }

    @Override
    public String getName() {
        return this.getNameGen();
    }

    @Override
    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (name: ");
        result.append(this.name);
        result.append(')');
        return result.toString();
    }

    public String getNameGen() {
        return this.name;
    }

    @Override
    public void setName(String newName) {
        String oldName = this.name;
        this.name = newName;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldName, (Object)this.name));
        }
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getEAnnotations();
            }
            case 1: {
                return this.getName();
            }
        }
        return this.eDynamicGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.getEAnnotations().clear();
                this.getEAnnotations().addAll((Collection)newValue);
                return;
            }
            case 1: {
                this.setName((String)newValue);
                return;
            }
        }
        this.eDynamicSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.getEAnnotations().clear();
                return;
            }
            case 1: {
                this.setName(NAME_EDEFAULT);
                return;
            }
        }
        this.eDynamicUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.eAnnotations != null && !this.eAnnotations.isEmpty();
            }
            case 1: {
                return NAME_EDEFAULT == null ? this.name != null : !NAME_EDEFAULT.equals(this.name);
            }
        }
        return this.eDynamicIsSet(featureID);
    }

    @Override
    public EList<EObject> eContents() {
        EStructuralFeature[] eStructuralFeatures = ((EClassImpl.FeatureSubsetSupplier)this.eClass().getEAllStructuralFeatures()).containments();
        return eStructuralFeatures == null ? EContentsEList.emptyContentsEList() : new EContentsEList<EObject>((EObject)this, eStructuralFeatures){

            @Override
            protected boolean useIsSet() {
                return false;
            }

            @Override
            protected ListIterator<EObject> newResolvingListIterator() {
                return new EContentsEList.ResolvingFeatureIteratorImpl<EObject>(this.eObject, this.eStructuralFeatures){

                    @Override
                    protected boolean useIsSet() {
                        return false;
                    }
                };
            }

            @Override
            protected ListIterator<EObject> newNonResolvingListIterator() {
                return new EContentsEList.FeatureIteratorImpl<EObject>(this.eObject, this.eStructuralFeatures){

                    @Override
                    protected boolean useIsSet() {
                        return false;
                    }
                };
            }
        };
    }

    @Override
    public EList<EObject> eCrossReferences() {
        EStructuralFeature[] eStructuralFeatures = ((EClassImpl.FeatureSubsetSupplier)this.eClass().getEAllStructuralFeatures()).crossReferences();
        return eStructuralFeatures == null ? ECrossReferenceEList.emptyCrossReferenceEList() : new ECrossReferenceEList<EObject>((EObject)this, eStructuralFeatures){

            @Override
            protected boolean useIsSet() {
                return false;
            }

            @Override
            protected ListIterator<EObject> newResolvingListIterator() {
                return new ECrossReferenceEList.ResolvingFeatureIteratorImpl<EObject>(this.eObject, this.eStructuralFeatures){

                    @Override
                    protected boolean useIsSet() {
                        return false;
                    }
                };
            }

            @Override
            protected ListIterator<EObject> newNonResolvingListIterator() {
                return new ECrossReferenceEList.FeatureIteratorImpl<EObject>(this.eObject, this.eStructuralFeatures){

                    @Override
                    protected boolean useIsSet() {
                        return false;
                    }
                };
            }
        };
    }
}

