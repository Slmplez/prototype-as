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
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.PrmCharAbsTol;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.impl.PrmCharNumericalValueImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.sphinx.platform.util.RadixConverter;

public class PrmCharAbsTolImpl
extends PrmCharNumericalValueImpl
implements PrmCharAbsTol {
    protected static final String ABS_EDEFAULT = "";
    protected String abs = "";
    protected boolean absESet;
    protected static final String TOL_EDEFAULT = "";
    protected String tol = "";
    protected boolean tolESet;

    protected PrmCharAbsTolImpl() {
    }

    protected EClass eStaticClass() {
        return GerneralparametersPackage.Literals.PRM_CHAR_ABS_TOL;
    }

    public String getAbs() {
        return this.abs;
    }

    public void setAbs(String newAbs) {
        String oldAbs = this.abs;
        this.abs = newAbs;
        boolean oldAbsESet = this.absESet;
        this.absESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldAbs, (Object)this.abs, !oldAbsESet));
        }
    }

    public void unsetAbs() {
        String oldAbs = this.abs;
        boolean oldAbsESet = this.absESet;
        this.abs = "";
        this.absESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldAbs, (Object)"", oldAbsESet));
        }
    }

    public boolean isSetAbs() {
        return this.absESet;
    }

    public String getTol() {
        return this.tol;
    }

    public void setTol(String newTol) {
        String oldTol = this.tol;
        this.tol = newTol;
        boolean oldTolESet = this.tolESet;
        this.tolESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldTol, (Object)this.tol, !oldTolESet));
        }
    }

    public void unsetTol() {
        String oldTol = this.tol;
        boolean oldTolESet = this.tolESet;
        this.tol = "";
        this.tolESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldTol, (Object)"", oldTolESet));
        }
    }

    public boolean isSetTol() {
        return this.tolESet;
    }

    public float getAbsAsFloat() {
        return RadixConverter.parseFloat((String)this.getAbs());
    }

    public int getAbsAsInteger() {
        return RadixConverter.parseInt((String)this.getAbs());
    }

    public int getRadixForAbs() {
        return RadixConverter.getRadix((String)this.getAbs());
    }

    public void setAbs(int radix, String value) {
        String convertedValue = RadixConverter.convert((String)value, (int)radix);
        this.setAbs(convertedValue);
    }

    public float getTolAsFloat() {
        return RadixConverter.parseFloat((String)this.getTol());
    }

    public int getTolAsInteger() {
        return RadixConverter.parseInt((String)this.getTol());
    }

    public int getRadixForTol() {
        return RadixConverter.getRadix((String)this.getTol());
    }

    public void setTol(int radix, String value) {
        String convertedValue = RadixConverter.convert((String)value, (int)radix);
        this.setTol(convertedValue);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.getAbs();
            }
            case 6: {
                return this.getTol();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.setAbs((String)newValue);
                return;
            }
            case 6: {
                this.setTol((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.unsetAbs();
                return;
            }
            case 6: {
                this.unsetTol();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.isSetAbs();
            }
            case 6: {
                return this.isSetTol();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (abs: ");
        if (this.absESet) {
            result.append(this.abs);
        } else {
            result.append("<unset>");
        }
        result.append(", tol: ");
        if (this.tolESet) {
            result.append(this.tol);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

