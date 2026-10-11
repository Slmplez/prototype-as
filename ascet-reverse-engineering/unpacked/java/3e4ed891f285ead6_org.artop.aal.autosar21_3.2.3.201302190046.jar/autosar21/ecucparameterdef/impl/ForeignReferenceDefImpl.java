/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar21.ecucparameterdef.impl;

import autosar21.ecucparameterdef.EcucparameterdefPackage;
import autosar21.ecucparameterdef.ForeignReferenceDef;
import autosar21.ecucparameterdef.impl.ConfigReferenceImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class ForeignReferenceDefImpl
extends ConfigReferenceImpl
implements ForeignReferenceDef {
    protected static final String DESTINATION_TYPE_EDEFAULT = "";
    protected String destinationType = "";
    protected boolean destinationTypeESet;

    protected ForeignReferenceDefImpl() {
    }

    protected EClass eStaticClass() {
        return EcucparameterdefPackage.Literals.FOREIGN_REFERENCE_DEF;
    }

    public String getDestinationType() {
        return this.destinationType;
    }

    public void setDestinationType(String newDestinationType) {
        String oldDestinationType = this.destinationType;
        this.destinationType = newDestinationType;
        boolean oldDestinationTypeESet = this.destinationTypeESet;
        this.destinationTypeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldDestinationType, (Object)this.destinationType, !oldDestinationTypeESet));
        }
    }

    public void unsetDestinationType() {
        String oldDestinationType = this.destinationType;
        boolean oldDestinationTypeESet = this.destinationTypeESet;
        this.destinationType = DESTINATION_TYPE_EDEFAULT;
        this.destinationTypeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 22, (Object)oldDestinationType, (Object)DESTINATION_TYPE_EDEFAULT, oldDestinationTypeESet));
        }
    }

    public boolean isSetDestinationType() {
        return this.destinationTypeESet;
    }

    public String gGetDestinationType() {
        return this.getDestinationType();
    }

    public void gSetDestinationType(String value) {
        this.setDestinationType(value);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 22: {
                return this.getDestinationType();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 22: {
                this.setDestinationType((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 22: {
                this.unsetDestinationType();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 22: {
                return this.isSetDestinationType();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (destinationType: ");
        if (this.destinationTypeESet) {
            result.append(this.destinationType);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

