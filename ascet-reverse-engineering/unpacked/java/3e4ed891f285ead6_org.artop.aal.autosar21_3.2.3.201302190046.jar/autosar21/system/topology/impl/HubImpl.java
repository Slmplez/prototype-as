/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar21.system.topology.impl;

import autosar21.system.topology.Hub;
import autosar21.system.topology.HubHubTypeEnum;
import autosar21.system.topology.TopologyPackage;
import autosar21.system.topology.impl.TopologyElementImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class HubImpl
extends TopologyElementImpl
implements Hub {
    protected static final HubHubTypeEnum HUB_TYPE_EDEFAULT = HubHubTypeEnum.ACTIVE_HUB;
    protected HubHubTypeEnum hubType = HUB_TYPE_EDEFAULT;
    protected boolean hubTypeESet;

    protected HubImpl() {
    }

    protected EClass eStaticClass() {
        return TopologyPackage.Literals.HUB;
    }

    public HubHubTypeEnum getHubType() {
        return this.hubType;
    }

    public void setHubType(HubHubTypeEnum newHubType) {
        HubHubTypeEnum oldHubType = this.hubType;
        this.hubType = newHubType == null ? HUB_TYPE_EDEFAULT : newHubType;
        boolean oldHubTypeESet = this.hubTypeESet;
        this.hubTypeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldHubType, (Object)this.hubType, !oldHubTypeESet));
        }
    }

    public void unsetHubType() {
        HubHubTypeEnum oldHubType = this.hubType;
        boolean oldHubTypeESet = this.hubTypeESet;
        this.hubType = HUB_TYPE_EDEFAULT;
        this.hubTypeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 19, (Object)oldHubType, (Object)HUB_TYPE_EDEFAULT, oldHubTypeESet));
        }
    }

    public boolean isSetHubType() {
        return this.hubTypeESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 19: {
                return this.getHubType();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 19: {
                this.setHubType((HubHubTypeEnum)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 19: {
                this.unsetHubType();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 19: {
                return this.isSetHubType();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (hubType: ");
        if (this.hubTypeESet) {
            result.append((Object)this.hubType);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

