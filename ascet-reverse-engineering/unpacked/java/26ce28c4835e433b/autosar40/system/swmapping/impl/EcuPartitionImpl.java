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
package autosar40.system.swmapping.impl;

import autosar40.genericstructure.generaltemplateclasses.identifiable.impl.IdentifiableImpl;
import autosar40.system.fibex.fibexcore.coretopology.EcuInstance;
import autosar40.system.swmapping.EcuPartition;
import autosar40.system.swmapping.SwmappingPackage;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class EcuPartitionImpl
extends IdentifiableImpl
implements EcuPartition {
    protected static final Boolean EXEC_IN_USER_MODE_EDEFAULT = Boolean.FALSE;
    protected Boolean execInUserMode = EXEC_IN_USER_MODE_EDEFAULT;
    protected boolean execInUserModeESet;

    protected EcuPartitionImpl() {
    }

    protected EClass eStaticClass() {
        return SwmappingPackage.Literals.ECU_PARTITION;
    }

    public EcuInstance getEcuInstance() {
        if (this.eContainerFeatureID() != 18) {
            return null;
        }
        return (EcuInstance)this.eContainer();
    }

    public NotificationChain basicSetEcuInstance(EcuInstance newEcuInstance, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newEcuInstance, 18, msgs);
        return msgs;
    }

    public void setEcuInstance(EcuInstance newEcuInstance) {
        if (newEcuInstance != this.eInternalContainer() || this.eContainerFeatureID() != 18 && newEcuInstance != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newEcuInstance)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newEcuInstance != null) {
                msgs = ((InternalEObject)newEcuInstance).eInverseAdd((InternalEObject)this, 31, EcuInstance.class, msgs);
            }
            if ((msgs = this.basicSetEcuInstance(newEcuInstance, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)newEcuInstance, (Object)newEcuInstance));
        }
    }

    public Boolean getExecInUserMode() {
        return this.execInUserMode;
    }

    public void setExecInUserMode(Boolean newExecInUserMode) {
        Boolean oldExecInUserMode = this.execInUserMode;
        this.execInUserMode = newExecInUserMode;
        boolean oldExecInUserModeESet = this.execInUserModeESet;
        this.execInUserModeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldExecInUserMode, (Object)this.execInUserMode, !oldExecInUserModeESet));
        }
    }

    public void unsetExecInUserMode() {
        Boolean oldExecInUserMode = this.execInUserMode;
        boolean oldExecInUserModeESet = this.execInUserModeESet;
        this.execInUserMode = EXEC_IN_USER_MODE_EDEFAULT;
        this.execInUserModeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 19, (Object)oldExecInUserMode, (Object)EXEC_IN_USER_MODE_EDEFAULT, oldExecInUserModeESet));
        }
    }

    public boolean isSetExecInUserMode() {
        return this.execInUserModeESet;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetEcuInstance((EcuInstance)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                return this.basicSetEcuInstance(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 18: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 31, EcuInstance.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                return this.getEcuInstance();
            }
            case 19: {
                return this.getExecInUserMode();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.setEcuInstance((EcuInstance)newValue);
                return;
            }
            case 19: {
                this.setExecInUserMode((Boolean)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 18: {
                this.setEcuInstance(null);
                return;
            }
            case 19: {
                this.unsetExecInUserMode();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 18: {
                return this.getEcuInstance() != null;
            }
            case 19: {
                return this.isSetExecInUserMode();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (execInUserMode: ");
        if (this.execInUserModeESet) {
            result.append(this.execInUserMode);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

