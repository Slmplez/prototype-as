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
package autosar21.system.communication.impl;

import autosar21.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar21.system.communication.CommunicationPackage;
import autosar21.system.communication.GatewayEntry;
import autosar21.system.communication.GatewayType;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public abstract class GatewayEntryImpl
extends ARObjectImpl
implements GatewayEntry {
    protected static final Integer GATEWAY_ENTRY_ID_EDEFAULT = new Integer(0);
    protected Integer gatewayEntryId = GATEWAY_ENTRY_ID_EDEFAULT;
    protected boolean gatewayEntryIdESet;

    protected GatewayEntryImpl() {
    }

    protected EClass eStaticClass() {
        return CommunicationPackage.Literals.GATEWAY_ENTRY;
    }

    public GatewayType getGatewayType() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (GatewayType)this.eContainer();
    }

    public NotificationChain basicSetGatewayType(GatewayType newGatewayType, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newGatewayType, 4, msgs);
        return msgs;
    }

    public void setGatewayType(GatewayType newGatewayType) {
        if (newGatewayType != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newGatewayType != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newGatewayType)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newGatewayType != null) {
                msgs = ((InternalEObject)newGatewayType).eInverseAdd((InternalEObject)this, 18, GatewayType.class, msgs);
            }
            if ((msgs = this.basicSetGatewayType(newGatewayType, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newGatewayType, (Object)newGatewayType));
        }
    }

    public Integer getGatewayEntryId() {
        return this.gatewayEntryId;
    }

    public void setGatewayEntryId(Integer newGatewayEntryId) {
        Integer oldGatewayEntryId = this.gatewayEntryId;
        this.gatewayEntryId = newGatewayEntryId;
        boolean oldGatewayEntryIdESet = this.gatewayEntryIdESet;
        this.gatewayEntryIdESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldGatewayEntryId, (Object)this.gatewayEntryId, !oldGatewayEntryIdESet));
        }
    }

    public void unsetGatewayEntryId() {
        Integer oldGatewayEntryId = this.gatewayEntryId;
        boolean oldGatewayEntryIdESet = this.gatewayEntryIdESet;
        this.gatewayEntryId = GATEWAY_ENTRY_ID_EDEFAULT;
        this.gatewayEntryIdESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldGatewayEntryId, (Object)GATEWAY_ENTRY_ID_EDEFAULT, oldGatewayEntryIdESet));
        }
    }

    public boolean isSetGatewayEntryId() {
        return this.gatewayEntryIdESet;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetGatewayType((GatewayType)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetGatewayType(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 18, GatewayType.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getGatewayType();
            }
            case 5: {
                return this.getGatewayEntryId();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setGatewayType((GatewayType)newValue);
                return;
            }
            case 5: {
                this.setGatewayEntryId((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setGatewayType(null);
                return;
            }
            case 5: {
                this.unsetGatewayEntryId();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getGatewayType() != null;
            }
            case 5: {
                return this.isSetGatewayEntryId();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (gatewayEntryId: ");
        if (this.gatewayEntryIdESet) {
            result.append(this.gatewayEntryId);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

