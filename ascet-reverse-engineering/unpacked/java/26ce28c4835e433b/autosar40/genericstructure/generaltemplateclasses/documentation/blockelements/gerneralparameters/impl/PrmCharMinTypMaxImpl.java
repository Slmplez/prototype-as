/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.sphinx.platform.util.RadixConverter
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.impl;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.GerneralparametersPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.PrmCharMinTypMax;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.impl.PrmCharNumericalValueImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.sphinx.platform.util.RadixConverter;

public class PrmCharMinTypMaxImpl
extends PrmCharNumericalValueImpl
implements PrmCharMinTypMax {
    protected static final String MIN_EDEFAULT = "";
    protected String min = "";
    protected boolean minESet;
    protected static final String TYP_EDEFAULT = "";
    protected String typ = "";
    protected boolean typESet;
    protected static final String MAX_EDEFAULT = "";
    protected String max = "";
    protected boolean maxESet;

    protected PrmCharMinTypMaxImpl() {
    }

    protected EClass eStaticClass() {
        return GerneralparametersPackage.Literals.PRM_CHAR_MIN_TYP_MAX;
    }

    public String getMin() {
        return this.min;
    }

    public void setMin(String newMin) {
        String oldMin = this.min;
        this.min = newMin;
        boolean oldMinESet = this.minESet;
        this.minESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldMin, (Object)this.min, !oldMinESet));
        }
    }

    public void unsetMin() {
        String oldMin = this.min;
        boolean oldMinESet = this.minESet;
        this.min = "";
        this.minESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldMin, (Object)"", oldMinESet));
        }
    }

    public boolean isSetMin() {
        return this.minESet;
    }

    public String getTyp() {
        return this.typ;
    }

    public void setTyp(String newTyp) {
        String oldTyp = this.typ;
        this.typ = newTyp;
        boolean oldTypESet = this.typESet;
        this.typESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldTyp, (Object)this.typ, !oldTypESet));
        }
    }

    public void unsetTyp() {
        String oldTyp = this.typ;
        boolean oldTypESet = this.typESet;
        this.typ = "";
        this.typESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldTyp, (Object)"", oldTypESet));
        }
    }

    public boolean isSetTyp() {
        return this.typESet;
    }

    public String getMax() {
        return this.max;
    }

    public void setMax(String newMax) {
        String oldMax = this.max;
        this.max = newMax;
        boolean oldMaxESet = this.maxESet;
        this.maxESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldMax, (Object)this.max, !oldMaxESet));
        }
    }

    public void unsetMax() {
        String oldMax = this.max;
        boolean oldMaxESet = this.maxESet;
        this.max = "";
        this.maxESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 7, (Object)oldMax, (Object)"", oldMaxESet));
        }
    }

    public boolean isSetMax() {
        return this.maxESet;
    }

    public float getMinAsFloat() {
        return RadixConverter.parseFloat((String)this.getMin());
    }

    public int getMinAsInteger() {
        return RadixConverter.parseInt((String)this.getMin());
    }

    public int getRadixForMin() {
        return RadixConverter.getRadix((String)this.getMin());
    }

    public void setMin(int radix, String value) {
        String convertedValue = RadixConverter.convert((String)value, (int)radix);
        this.setMin(convertedValue);
    }

    public float getTypAsFloat() {
        return RadixConverter.parseFloat((String)this.getTyp());
    }

    public int getTypAsInteger() {
        return RadixConverter.parseInt((String)this.getTyp());
    }

    public int getRadixForTyp() {
        return RadixConverter.getRadix((String)this.getTyp());
    }

    public void setTyp(int radix, String value) {
        String convertedValue = RadixConverter.convert((String)value, (int)radix);
        this.setTyp(convertedValue);
    }

    public float getMaxAsFloat() {
        return RadixConverter.parseFloat((String)this.getMax());
    }

    public int getMaxAsInteger() {
        return RadixConverter.parseInt((String)this.getMax());
    }

    public int getRadixForMax() {
        return RadixConverter.getRadix((String)this.getMax());
    }

    public void setMax(int radix, String value) {
        String convertedValue = RadixConverter.convert((String)value, (int)radix);
        this.setMax(convertedValue);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.getMin();
            }
            case 6: {
                return this.getTyp();
            }
            case 7: {
                return this.getMax();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.setMin((String)newValue);
                return;
            }
            case 6: {
                this.setTyp((String)newValue);
                return;
            }
            case 7: {
                this.setMax((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.unsetMin();
                return;
            }
            case 6: {
                this.unsetTyp();
                return;
            }
            case 7: {
                this.unsetMax();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.isSetMin();
            }
            case 6: {
                return this.isSetTyp();
            }
            case 7: {
                return this.isSetMax();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (min: ");
        if (this.minESet) {
            result.append(this.min);
        } else {
            result.append("<unset>");
        }
        result.append(", typ: ");
        if (this.typESet) {
            result.append(this.typ);
        } else {
            result.append("<unset>");
        }
        result.append(", max: ");
        if (this.maxESet) {
            result.append(this.max);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

