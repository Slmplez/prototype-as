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
package autosar21.swcomponent.measurementandcalibration.basetypes.impl;

import autosar21.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar21.swcomponent.measurementandcalibration.basetypes.BaseTypeDirectDefinition;
import autosar21.swcomponent.measurementandcalibration.basetypes.BaseTypeSizeDefintion;
import autosar21.swcomponent.measurementandcalibration.basetypes.BasetypesPackage;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public abstract class BaseTypeSizeDefintionImpl
extends ARObjectImpl
implements BaseTypeSizeDefintion {
    protected BaseTypeSizeDefintionImpl() {
    }

    protected EClass eStaticClass() {
        return BasetypesPackage.Literals.BASE_TYPE_SIZE_DEFINTION;
    }

    public BaseTypeDirectDefinition getBaseTypeDirectDefinition() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (BaseTypeDirectDefinition)this.eContainer();
    }

    public NotificationChain basicSetBaseTypeDirectDefinition(BaseTypeDirectDefinition newBaseTypeDirectDefinition, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newBaseTypeDirectDefinition, 4, msgs);
        return msgs;
    }

    public void setBaseTypeDirectDefinition(BaseTypeDirectDefinition newBaseTypeDirectDefinition) {
        if (newBaseTypeDirectDefinition != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newBaseTypeDirectDefinition != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newBaseTypeDirectDefinition)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newBaseTypeDirectDefinition != null) {
                msgs = ((InternalEObject)newBaseTypeDirectDefinition).eInverseAdd((InternalEObject)this, 8, BaseTypeDirectDefinition.class, msgs);
            }
            if ((msgs = this.basicSetBaseTypeDirectDefinition(newBaseTypeDirectDefinition, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newBaseTypeDirectDefinition, (Object)newBaseTypeDirectDefinition));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetBaseTypeDirectDefinition((BaseTypeDirectDefinition)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetBaseTypeDirectDefinition(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 8, BaseTypeDirectDefinition.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getBaseTypeDirectDefinition();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setBaseTypeDirectDefinition((BaseTypeDirectDefinition)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setBaseTypeDirectDefinition(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getBaseTypeDirectDefinition() != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

