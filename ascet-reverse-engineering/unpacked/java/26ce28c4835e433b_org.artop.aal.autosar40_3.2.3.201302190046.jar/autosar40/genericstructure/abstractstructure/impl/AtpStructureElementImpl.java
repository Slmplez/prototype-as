/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.genericstructure.abstractstructure.impl;

import autosar40.genericstructure.abstractstructure.AbstractstructurePackage;
import autosar40.genericstructure.abstractstructure.AtpClassifier;
import autosar40.genericstructure.abstractstructure.AtpFeature;
import autosar40.genericstructure.abstractstructure.AtpStructureElement;
import autosar40.genericstructure.abstractstructure.impl.AtpClassifierImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class AtpStructureElementImpl
extends AtpClassifierImpl
implements AtpStructureElement {
    protected AtpClassifier atpClassifier;

    protected AtpStructureElementImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return AbstractstructurePackage.Literals.ATP_STRUCTURE_ELEMENT;
    }

    @Override
    public AtpClassifier getAtpClassifier() {
        if (this.atpClassifier != null && this.atpClassifier.eIsProxy()) {
            InternalEObject oldAtpClassifier = (InternalEObject)this.atpClassifier;
            this.atpClassifier = (AtpClassifier)this.eResolveProxy(oldAtpClassifier);
            if (this.atpClassifier != oldAtpClassifier && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 18, (Object)oldAtpClassifier, (Object)this.atpClassifier));
            }
        }
        return this.atpClassifier;
    }

    public AtpClassifier basicGetAtpClassifier() {
        return this.atpClassifier;
    }

    @Override
    public void setAtpClassifier(AtpClassifier newAtpClassifier) {
        AtpClassifier oldAtpClassifier = this.atpClassifier;
        this.atpClassifier = newAtpClassifier;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)oldAtpClassifier, (Object)this.atpClassifier));
        }
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                if (resolve) {
                    return this.getAtpClassifier();
                }
                return this.basicGetAtpClassifier();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.setAtpClassifier((AtpClassifier)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 18: {
                this.setAtpClassifier(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 18: {
                return this.atpClassifier != null;
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == AtpFeature.class) {
            switch (derivedFeatureID) {
                case 18: {
                    return 18;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    @Override
    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == AtpFeature.class) {
            switch (baseFeatureID) {
                case 18: {
                    return 18;
                }
            }
            return -1;
        }
        return super.eDerivedStructuralFeatureID(baseFeatureID, baseClass);
    }
}

