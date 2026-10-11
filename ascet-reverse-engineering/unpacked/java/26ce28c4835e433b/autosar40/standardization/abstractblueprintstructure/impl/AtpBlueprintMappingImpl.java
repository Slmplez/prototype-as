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
package autosar40.standardization.abstractblueprintstructure.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.standardization.abstractblueprintstructure.AbstractblueprintstructurePackage;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprintMapping;
import autosar40.standardization.blueprintmapping.BlueprintMappingSet;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public abstract class AtpBlueprintMappingImpl
extends ARObjectImpl
implements AtpBlueprintMapping {
    protected AtpBlueprintMappingImpl() {
    }

    protected EClass eStaticClass() {
        return AbstractblueprintstructurePackage.Literals.ATP_BLUEPRINT_MAPPING;
    }

    public BlueprintMappingSet getBlueprintMappingSet() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (BlueprintMappingSet)this.eContainer();
    }

    public NotificationChain basicSetBlueprintMappingSet(BlueprintMappingSet newBlueprintMappingSet, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newBlueprintMappingSet, 4, msgs);
        return msgs;
    }

    public void setBlueprintMappingSet(BlueprintMappingSet newBlueprintMappingSet) {
        if (newBlueprintMappingSet != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newBlueprintMappingSet != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newBlueprintMappingSet)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newBlueprintMappingSet != null) {
                msgs = ((InternalEObject)newBlueprintMappingSet).eInverseAdd((InternalEObject)this, 21, BlueprintMappingSet.class, msgs);
            }
            if ((msgs = this.basicSetBlueprintMappingSet(newBlueprintMappingSet, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newBlueprintMappingSet, (Object)newBlueprintMappingSet));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetBlueprintMappingSet((BlueprintMappingSet)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetBlueprintMappingSet(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 21, BlueprintMappingSet.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getBlueprintMappingSet();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setBlueprintMappingSet((BlueprintMappingSet)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setBlueprintMappingSet(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getBlueprintMappingSet() != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

