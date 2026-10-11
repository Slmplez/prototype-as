/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar3x.ecucparameterdef.impl;

import autosar3x.ecucparameterdef.EcucparameterdefPackage;
import autosar3x.ecucparameterdef.InstanceReferenceParamDef;
import autosar3x.ecucparameterdef.impl.ConfigReferenceImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class InstanceReferenceParamDefImpl
extends ConfigReferenceImpl
implements InstanceReferenceParamDef {
    protected static final String DESTINATION_CONTEXT_EDEFAULT = "";
    protected String destinationContext = "";
    protected boolean destinationContextESet;
    protected static final String DESTINATION_TYPE_EDEFAULT = "";
    protected String destinationType = "";
    protected boolean destinationTypeESet;

    protected InstanceReferenceParamDefImpl() {
    }

    protected EClass eStaticClass() {
        return EcucparameterdefPackage.Literals.INSTANCE_REFERENCE_PARAM_DEF;
    }

    public String getDestinationContext() {
        return this.destinationContext;
    }

    public void setDestinationContext(String newDestinationContext) {
        String oldDestinationContext = this.destinationContext;
        this.destinationContext = newDestinationContext;
        boolean oldDestinationContextESet = this.destinationContextESet;
        this.destinationContextESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldDestinationContext, (Object)this.destinationContext, !oldDestinationContextESet));
        }
    }

    public void unsetDestinationContext() {
        String oldDestinationContext = this.destinationContext;
        boolean oldDestinationContextESet = this.destinationContextESet;
        this.destinationContext = "";
        this.destinationContextESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 23, (Object)oldDestinationContext, (Object)"", oldDestinationContextESet));
        }
    }

    public boolean isSetDestinationContext() {
        return this.destinationContextESet;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldDestinationType, (Object)this.destinationType, !oldDestinationTypeESet));
        }
    }

    public void unsetDestinationType() {
        String oldDestinationType = this.destinationType;
        boolean oldDestinationTypeESet = this.destinationTypeESet;
        this.destinationType = "";
        this.destinationTypeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 24, (Object)oldDestinationType, (Object)"", oldDestinationTypeESet));
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

    public String gGetDestinationContext() {
        return this.getDestinationContext();
    }

    public void gSetDestinationContext(String value) {
        this.setDestinationContext(value);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 23: {
                return this.getDestinationContext();
            }
            case 24: {
                return this.getDestinationType();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 23: {
                this.setDestinationContext((String)newValue);
                return;
            }
            case 24: {
                this.setDestinationType((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 23: {
                this.unsetDestinationContext();
                return;
            }
            case 24: {
                this.unsetDestinationType();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 23: {
                return this.isSetDestinationContext();
            }
            case 24: {
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
        result.append(" (destinationContext: ");
        if (this.destinationContextESet) {
            result.append(this.destinationContext);
        } else {
            result.append("<unset>");
        }
        result.append(", destinationType: ");
        if (this.destinationTypeESet) {
            result.append(this.destinationType);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

