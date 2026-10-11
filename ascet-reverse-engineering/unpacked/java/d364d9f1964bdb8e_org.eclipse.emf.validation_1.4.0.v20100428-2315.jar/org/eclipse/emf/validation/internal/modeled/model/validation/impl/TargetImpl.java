/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EClassifier
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.impl.EObjectImpl
 *  org.eclipse.emf.ecore.util.EObjectResolvingEList
 */
package org.eclipse.emf.validation.internal.modeled.model.validation.impl;

import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.EObjectImpl;
import org.eclipse.emf.ecore.util.EObjectResolvingEList;
import org.eclipse.emf.validation.internal.modeled.model.validation.Target;
import org.eclipse.emf.validation.internal.modeled.model.validation.ValidationPackage;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class TargetImpl
extends EObjectImpl
implements Target {
    protected EList<EStructuralFeature> feature;
    protected EClassifier eClass;

    protected TargetImpl() {
    }

    protected EClass eStaticClass() {
        return ValidationPackage.Literals.TARGET;
    }

    @Override
    public EList<EStructuralFeature> getFeature() {
        if (this.feature == null) {
            this.feature = new EObjectResolvingEList(EStructuralFeature.class, (InternalEObject)this, 0);
        }
        return this.feature;
    }

    @Override
    public EClassifier getEClass() {
        if (this.eClass != null && this.eClass.eIsProxy()) {
            InternalEObject oldEClass = (InternalEObject)this.eClass;
            this.eClass = (EClassifier)this.eResolveProxy(oldEClass);
            if (this.eClass != oldEClass && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 1, (Object)oldEClass, (Object)this.eClass));
            }
        }
        return this.eClass;
    }

    public EClassifier basicGetEClass() {
        return this.eClass;
    }

    @Override
    public void setEClass(EClassifier newEClass) {
        EClassifier oldEClass = this.eClass;
        this.eClass = newEClass;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldEClass, (Object)this.eClass));
        }
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getFeature();
            }
            case 1: {
                if (resolve) {
                    return this.getEClass();
                }
                return this.basicGetEClass();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.getFeature().clear();
                this.getFeature().addAll((Collection)newValue);
                return;
            }
            case 1: {
                this.setEClass((EClassifier)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.getFeature().clear();
                return;
            }
            case 1: {
                this.setEClass(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.feature != null && !this.feature.isEmpty();
            }
            case 1: {
                return this.eClass != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

