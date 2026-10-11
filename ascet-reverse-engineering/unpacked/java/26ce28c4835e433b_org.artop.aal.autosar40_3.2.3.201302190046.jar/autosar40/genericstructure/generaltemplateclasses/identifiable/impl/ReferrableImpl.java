/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.genericstructure.generaltemplateclasses.identifiable.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.generaltemplateclasses.identifiable.IdentifiablePackage;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ReferrableImpl
extends ARObjectImpl
implements Referrable {
    protected static final String GSHORT_NAME_EDEFAULT = null;
    protected static final String SHORT_NAME_EDEFAULT = "";
    protected String shortName = "";
    protected boolean shortNameESet;

    protected ReferrableImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return IdentifiablePackage.Literals.REFERRABLE;
    }

    public String gGetShortName() {
        String tgtFeatureValue = this.getShortName();
        return tgtFeatureValue;
    }

    public void gSetShortName(String newGShortName) {
        this.setShortName(newGShortName);
    }

    public void gUnsetShortName() {
        this.unsetShortName();
    }

    public boolean gIsSetShortName() {
        return this.isSetShortName();
    }

    @Override
    public String getShortName() {
        return this.shortName;
    }

    @Override
    public void setShortName(String newShortName) {
        String oldShortName = this.shortName;
        this.shortName = newShortName;
        boolean oldShortNameESet = this.shortNameESet;
        this.shortNameESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldShortName, (Object)this.shortName, !oldShortNameESet));
        }
    }

    @Override
    public void unsetShortName() {
        String oldShortName = this.shortName;
        boolean oldShortNameESet = this.shortNameESet;
        this.shortName = SHORT_NAME_EDEFAULT;
        this.shortNameESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldShortName, (Object)SHORT_NAME_EDEFAULT, oldShortNameESet));
        }
    }

    @Override
    public boolean isSetShortName() {
        return this.shortNameESet;
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.gGetShortName();
            }
            case 5: {
                return this.getShortName();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.gSetShortName((String)newValue);
                return;
            }
            case 5: {
                this.setShortName((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.gUnsetShortName();
                return;
            }
            case 5: {
                this.unsetShortName();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.gIsSetShortName();
            }
            case 5: {
                return this.isSetShortName();
            }
        }
        return super.eIsSet(featureID);
    }

    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GReferrable.class) {
            switch (derivedFeatureID) {
                case 4: {
                    return 2;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == GReferrable.class) {
            switch (baseFeatureID) {
                case 2: {
                    return 4;
                }
            }
            return -1;
        }
        return super.eDerivedStructuralFeatureID(baseFeatureID, baseClass);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (shortName: ");
        if (this.shortNameESet) {
            result.append(this.shortName);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

