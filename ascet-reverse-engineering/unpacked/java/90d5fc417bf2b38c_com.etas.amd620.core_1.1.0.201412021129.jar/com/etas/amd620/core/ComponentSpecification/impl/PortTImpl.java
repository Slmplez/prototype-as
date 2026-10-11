/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.impl.MinimalEObjectImpl$Container
 */
package com.etas.amd620.core.ComponentSpecification.impl;

import com.etas.amd620.core.ComponentSpecification.ComponentSpecificationPackage;
import com.etas.amd620.core.ComponentSpecification.DirectionType1;
import com.etas.amd620.core.ComponentSpecification.PortT;
import java.math.BigInteger;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class PortTImpl
extends MinimalEObjectImpl.Container
implements PortT {
    protected static final BigInteger GRAPHIC_OID_EDEFAULT = null;
    protected BigInteger graphicOID = GRAPHIC_OID_EDEFAULT;
    protected static final DirectionType1 LOCATION_EDEFAULT = DirectionType1.RIGHT;
    protected DirectionType1 location = LOCATION_EDEFAULT;
    protected boolean locationESet;

    protected PortTImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentSpecificationPackage.eINSTANCE.getPortT();
    }

    @Override
    public BigInteger getGraphicOID() {
        return this.graphicOID;
    }

    @Override
    public void setGraphicOID(BigInteger newGraphicOID) {
        BigInteger oldGraphicOID = this.graphicOID;
        this.graphicOID = newGraphicOID;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldGraphicOID, (Object)this.graphicOID));
        }
    }

    @Override
    public DirectionType1 getLocation() {
        return this.location;
    }

    @Override
    public void setLocation(DirectionType1 newLocation) {
        DirectionType1 oldLocation = this.location;
        this.location = newLocation == null ? LOCATION_EDEFAULT : newLocation;
        boolean oldLocationESet = this.locationESet;
        this.locationESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldLocation, (Object)this.location, !oldLocationESet));
        }
    }

    @Override
    public void unsetLocation() {
        DirectionType1 oldLocation = this.location;
        boolean oldLocationESet = this.locationESet;
        this.location = LOCATION_EDEFAULT;
        this.locationESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 1, (Object)oldLocation, (Object)LOCATION_EDEFAULT, oldLocationESet));
        }
    }

    @Override
    public boolean isSetLocation() {
        return this.locationESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getGraphicOID();
            }
            case 1: {
                return this.getLocation();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setGraphicOID((BigInteger)newValue);
                return;
            }
            case 1: {
                this.setLocation((DirectionType1)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setGraphicOID(GRAPHIC_OID_EDEFAULT);
                return;
            }
            case 1: {
                this.unsetLocation();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return GRAPHIC_OID_EDEFAULT == null ? this.graphicOID != null : !GRAPHIC_OID_EDEFAULT.equals(this.graphicOID);
            }
            case 1: {
                return this.isSetLocation();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (graphicOID: ");
        result.append(this.graphicOID);
        result.append(", location: ");
        if (this.locationESet) {
            result.append((Object)this.location);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

