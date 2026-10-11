/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar40.ecucparameterdef.impl;

import autosar40.ecucparameterdef.EcucAbstractReferenceDef;
import autosar40.ecucparameterdef.EcucParamConfContainerDef;
import autosar40.ecucparameterdef.EcucparameterdefPackage;
import autosar40.ecucparameterdef.impl.EcucCommonAttributesImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class EcucAbstractReferenceDefImpl
extends EcucCommonAttributesImpl
implements EcucAbstractReferenceDef {
    protected EcucAbstractReferenceDefImpl() {
    }

    protected EClass eStaticClass() {
        return EcucparameterdefPackage.Literals.ECUC_ABSTRACT_REFERENCE_DEF;
    }

    public EcucParamConfContainerDef getEcucParamConfContainerDef() {
        if (this.eContainerFeatureID() != 26) {
            return null;
        }
        return (EcucParamConfContainerDef)this.eContainer();
    }

    public NotificationChain basicSetEcucParamConfContainerDef(EcucParamConfContainerDef newEcucParamConfContainerDef, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newEcucParamConfContainerDef, 26, msgs);
        return msgs;
    }

    public void setEcucParamConfContainerDef(EcucParamConfContainerDef newEcucParamConfContainerDef) {
        if (newEcucParamConfContainerDef != this.eInternalContainer() || this.eContainerFeatureID() != 26 && newEcucParamConfContainerDef != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newEcucParamConfContainerDef)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newEcucParamConfContainerDef != null) {
                msgs = ((InternalEObject)newEcucParamConfContainerDef).eInverseAdd((InternalEObject)this, 26, EcucParamConfContainerDef.class, msgs);
            }
            if ((msgs = this.basicSetEcucParamConfContainerDef(newEcucParamConfContainerDef, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 26, (Object)newEcucParamConfContainerDef, (Object)newEcucParamConfContainerDef));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 26: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetEcucParamConfContainerDef((EcucParamConfContainerDef)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 26: {
                return this.basicSetEcucParamConfContainerDef(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 26: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 26, EcucParamConfContainerDef.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 26: {
                return this.getEcucParamConfContainerDef();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 26: {
                this.setEcucParamConfContainerDef((EcucParamConfContainerDef)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 26: {
                this.setEcucParamConfContainerDef(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 26: {
                return this.getEcucParamConfContainerDef() != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

