/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar3x.system.fibex.fibexcore.corecommunication.impl;

import autosar3x.system.fibex.fibexcore.corecommunication.CorecommunicationPackage;
import autosar3x.system.fibex.fibexcore.corecommunication.IPdu;
import autosar3x.system.fibex.fibexcore.corecommunication.impl.PduImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class IPduImpl
extends PduImpl
implements IPdu {
    protected static final Integer LENGTH_EDEFAULT = new Integer(0);
    protected Integer length = LENGTH_EDEFAULT;
    protected boolean lengthESet;
    protected static final Integer UNUSED_BIT_PATTERN_EDEFAULT = new Integer(0);
    protected Integer unusedBitPattern = UNUSED_BIT_PATTERN_EDEFAULT;
    protected boolean unusedBitPatternESet;

    protected IPduImpl() {
    }

    protected EClass eStaticClass() {
        return CorecommunicationPackage.Literals.IPDU;
    }

    public Integer getLength() {
        return this.length;
    }

    public void setLength(Integer newLength) {
        Integer oldLength = this.length;
        this.length = newLength;
        boolean oldLengthESet = this.lengthESet;
        this.lengthESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldLength, (Object)this.length, !oldLengthESet));
        }
    }

    public void unsetLength() {
        Integer oldLength = this.length;
        boolean oldLengthESet = this.lengthESet;
        this.length = LENGTH_EDEFAULT;
        this.lengthESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 19, (Object)oldLength, (Object)LENGTH_EDEFAULT, oldLengthESet));
        }
    }

    public boolean isSetLength() {
        return this.lengthESet;
    }

    public Integer getUnusedBitPattern() {
        return this.unusedBitPattern;
    }

    public void setUnusedBitPattern(Integer newUnusedBitPattern) {
        Integer oldUnusedBitPattern = this.unusedBitPattern;
        this.unusedBitPattern = newUnusedBitPattern;
        boolean oldUnusedBitPatternESet = this.unusedBitPatternESet;
        this.unusedBitPatternESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldUnusedBitPattern, (Object)this.unusedBitPattern, !oldUnusedBitPatternESet));
        }
    }

    public void unsetUnusedBitPattern() {
        Integer oldUnusedBitPattern = this.unusedBitPattern;
        boolean oldUnusedBitPatternESet = this.unusedBitPatternESet;
        this.unusedBitPattern = UNUSED_BIT_PATTERN_EDEFAULT;
        this.unusedBitPatternESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 20, (Object)oldUnusedBitPattern, (Object)UNUSED_BIT_PATTERN_EDEFAULT, oldUnusedBitPatternESet));
        }
    }

    public boolean isSetUnusedBitPattern() {
        return this.unusedBitPatternESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 19: {
                return this.getLength();
            }
            case 20: {
                return this.getUnusedBitPattern();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 19: {
                this.setLength((Integer)newValue);
                return;
            }
            case 20: {
                this.setUnusedBitPattern((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 19: {
                this.unsetLength();
                return;
            }
            case 20: {
                this.unsetUnusedBitPattern();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 19: {
                return this.isSetLength();
            }
            case 20: {
                return this.isSetUnusedBitPattern();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (length: ");
        if (this.lengthESet) {
            result.append(this.length);
        } else {
            result.append("<unset>");
        }
        result.append(", unusedBitPattern: ");
        if (this.unusedBitPatternESet) {
            result.append(this.unusedBitPattern);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

