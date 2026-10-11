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
import autosar3x.ecucparameterdef.ParamConfMultiplicity;
import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public abstract class ParamConfMultiplicityImpl
extends ARObjectImpl
implements ParamConfMultiplicity {
    protected static final String LOWER_MULTIPLICITY_EDEFAULT = "";
    protected String lowerMultiplicity = "";
    protected boolean lowerMultiplicityESet;
    protected static final String UPPER_MULTIPLICITY_EDEFAULT = "";
    protected String upperMultiplicity = "";
    protected boolean upperMultiplicityESet;

    protected ParamConfMultiplicityImpl() {
    }

    protected EClass eStaticClass() {
        return EcucparameterdefPackage.Literals.PARAM_CONF_MULTIPLICITY;
    }

    public String getLowerMultiplicity() {
        return this.lowerMultiplicity;
    }

    public void setLowerMultiplicity(String newLowerMultiplicity) {
        String oldLowerMultiplicity = this.lowerMultiplicity;
        this.lowerMultiplicity = newLowerMultiplicity;
        boolean oldLowerMultiplicityESet = this.lowerMultiplicityESet;
        this.lowerMultiplicityESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldLowerMultiplicity, (Object)this.lowerMultiplicity, !oldLowerMultiplicityESet));
        }
    }

    public void unsetLowerMultiplicity() {
        String oldLowerMultiplicity = this.lowerMultiplicity;
        boolean oldLowerMultiplicityESet = this.lowerMultiplicityESet;
        this.lowerMultiplicity = "";
        this.lowerMultiplicityESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 4, (Object)oldLowerMultiplicity, (Object)"", oldLowerMultiplicityESet));
        }
    }

    public boolean isSetLowerMultiplicity() {
        return this.lowerMultiplicityESet;
    }

    public String getUpperMultiplicity() {
        return this.upperMultiplicity;
    }

    public void setUpperMultiplicity(String newUpperMultiplicity) {
        String oldUpperMultiplicity = this.upperMultiplicity;
        this.upperMultiplicity = newUpperMultiplicity;
        boolean oldUpperMultiplicityESet = this.upperMultiplicityESet;
        this.upperMultiplicityESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldUpperMultiplicity, (Object)this.upperMultiplicity, !oldUpperMultiplicityESet));
        }
    }

    public void unsetUpperMultiplicity() {
        String oldUpperMultiplicity = this.upperMultiplicity;
        boolean oldUpperMultiplicityESet = this.upperMultiplicityESet;
        this.upperMultiplicity = "";
        this.upperMultiplicityESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldUpperMultiplicity, (Object)"", oldUpperMultiplicityESet));
        }
    }

    public boolean isSetUpperMultiplicity() {
        return this.upperMultiplicityESet;
    }

    public String gGetLowerMultiplicityAsString() {
        return this.getLowerMultiplicity();
    }

    public void gSetLowerMultiplicityAsString(String value) {
        this.setLowerMultiplicity(value);
    }

    public String gGetUpperMultiplicityAsString() {
        return this.getUpperMultiplicity();
    }

    public void gSetUpperMultiplicityAsString(String value) {
        this.setUpperMultiplicity(value);
    }

    public Boolean gGetUpperMultiplicityInfinite() {
        return "*".equals(this.upperMultiplicity);
    }

    public void gSetUpperMultiplicityInfinite(Boolean value) {
        if (Boolean.TRUE.equals(value)) {
            this.setUpperMultiplicity("*");
        } else {
            this.setUpperMultiplicity("1");
        }
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getLowerMultiplicity();
            }
            case 5: {
                return this.getUpperMultiplicity();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setLowerMultiplicity((String)newValue);
                return;
            }
            case 5: {
                this.setUpperMultiplicity((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.unsetLowerMultiplicity();
                return;
            }
            case 5: {
                this.unsetUpperMultiplicity();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.isSetLowerMultiplicity();
            }
            case 5: {
                return this.isSetUpperMultiplicity();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (lowerMultiplicity: ");
        if (this.lowerMultiplicityESet) {
            result.append(this.lowerMultiplicity);
        } else {
            result.append("<unset>");
        }
        result.append(", upperMultiplicity: ");
        if (this.upperMultiplicityESet) {
            result.append(this.upperMultiplicity);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

