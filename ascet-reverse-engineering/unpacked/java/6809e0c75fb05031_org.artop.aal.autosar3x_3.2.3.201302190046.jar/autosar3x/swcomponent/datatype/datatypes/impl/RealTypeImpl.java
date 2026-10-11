/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.DiagnosticChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar3x.swcomponent.datatype.datatypes.impl;

import autosar3x.swcomponent.datatype.datatypes.ARLimit;
import autosar3x.swcomponent.datatype.datatypes.DatatypesPackage;
import autosar3x.swcomponent.datatype.datatypes.Range;
import autosar3x.swcomponent.datatype.datatypes.RealType;
import autosar3x.swcomponent.datatype.datatypes.RealTypeEncodingEnum;
import autosar3x.swcomponent.datatype.datatypes.impl.PrimitiveTypeImpl;
import java.util.Map;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.DiagnosticChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class RealTypeImpl
extends PrimitiveTypeImpl
implements RealType {
    protected ARLimit lowerLimit;
    protected ARLimit upperLimit;
    protected static final Boolean ALLOW_NA_N_EDEFAULT = Boolean.FALSE;
    protected Boolean allowNaN = ALLOW_NA_N_EDEFAULT;
    protected boolean allowNaNESet;
    protected static final RealTypeEncodingEnum ENCODING_EDEFAULT = RealTypeEncodingEnum.SINGLE;
    protected RealTypeEncodingEnum encoding = ENCODING_EDEFAULT;
    protected boolean encodingESet;

    protected RealTypeImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return DatatypesPackage.Literals.REAL_TYPE;
    }

    @Override
    public ARLimit getLowerLimit() {
        return this.lowerLimit;
    }

    public NotificationChain basicSetLowerLimit(ARLimit newLowerLimit, NotificationChain msgs) {
        ARLimit oldLowerLimit = this.lowerLimit;
        this.lowerLimit = newLowerLimit;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldLowerLimit, (Object)newLowerLimit);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setLowerLimit(ARLimit newLowerLimit) {
        if (newLowerLimit != this.lowerLimit) {
            NotificationChain msgs = null;
            if (this.lowerLimit != null) {
                msgs = ((InternalEObject)this.lowerLimit).eInverseRemove((InternalEObject)this, -21, null, msgs);
            }
            if (newLowerLimit != null) {
                msgs = ((InternalEObject)newLowerLimit).eInverseAdd((InternalEObject)this, -21, null, msgs);
            }
            if ((msgs = this.basicSetLowerLimit(newLowerLimit, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)newLowerLimit, (Object)newLowerLimit));
        }
    }

    @Override
    public ARLimit getUpperLimit() {
        return this.upperLimit;
    }

    public NotificationChain basicSetUpperLimit(ARLimit newUpperLimit, NotificationChain msgs) {
        ARLimit oldUpperLimit = this.upperLimit;
        this.upperLimit = newUpperLimit;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldUpperLimit, (Object)newUpperLimit);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setUpperLimit(ARLimit newUpperLimit) {
        if (newUpperLimit != this.upperLimit) {
            NotificationChain msgs = null;
            if (this.upperLimit != null) {
                msgs = ((InternalEObject)this.upperLimit).eInverseRemove((InternalEObject)this, -22, null, msgs);
            }
            if (newUpperLimit != null) {
                msgs = ((InternalEObject)newUpperLimit).eInverseAdd((InternalEObject)this, -22, null, msgs);
            }
            if ((msgs = this.basicSetUpperLimit(newUpperLimit, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)newUpperLimit, (Object)newUpperLimit));
        }
    }

    @Override
    public Boolean getAllowNaN() {
        return this.allowNaN;
    }

    @Override
    public void setAllowNaN(Boolean newAllowNaN) {
        Boolean oldAllowNaN = this.allowNaN;
        this.allowNaN = newAllowNaN;
        boolean oldAllowNaNESet = this.allowNaNESet;
        this.allowNaNESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldAllowNaN, (Object)this.allowNaN, !oldAllowNaNESet));
        }
    }

    @Override
    public void unsetAllowNaN() {
        Boolean oldAllowNaN = this.allowNaN;
        boolean oldAllowNaNESet = this.allowNaNESet;
        this.allowNaN = ALLOW_NA_N_EDEFAULT;
        this.allowNaNESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 22, (Object)oldAllowNaN, (Object)ALLOW_NA_N_EDEFAULT, oldAllowNaNESet));
        }
    }

    @Override
    public boolean isSetAllowNaN() {
        return this.allowNaNESet;
    }

    @Override
    public RealTypeEncodingEnum getEncoding() {
        return this.encoding;
    }

    @Override
    public void setEncoding(RealTypeEncodingEnum newEncoding) {
        RealTypeEncodingEnum oldEncoding = this.encoding;
        this.encoding = newEncoding == null ? ENCODING_EDEFAULT : newEncoding;
        boolean oldEncodingESet = this.encodingESet;
        this.encodingESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldEncoding, (Object)this.encoding, !oldEncodingESet));
        }
    }

    @Override
    public void unsetEncoding() {
        RealTypeEncodingEnum oldEncoding = this.encoding;
        boolean oldEncodingESet = this.encodingESet;
        this.encoding = ENCODING_EDEFAULT;
        this.encodingESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 23, (Object)oldEncoding, (Object)ENCODING_EDEFAULT, oldEncodingESet));
        }
    }

    @Override
    public boolean isSetEncoding() {
        return this.encodingESet;
    }

    @Override
    public boolean defallRealsSetRealdefinedbyencoding(DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    @Override
    public boolean defvaluesvaluesInRangeintersectallReals(DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    @Override
    public boolean defvaluesInRangeSetFloat(DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    @Override
    public boolean lowerLimitupperLimit(DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 20: {
                return this.basicSetLowerLimit(null, msgs);
            }
            case 21: {
                return this.basicSetUpperLimit(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 20: {
                return this.getLowerLimit();
            }
            case 21: {
                return this.getUpperLimit();
            }
            case 22: {
                return this.getAllowNaN();
            }
            case 23: {
                return this.getEncoding();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 20: {
                this.setLowerLimit((ARLimit)newValue);
                return;
            }
            case 21: {
                this.setUpperLimit((ARLimit)newValue);
                return;
            }
            case 22: {
                this.setAllowNaN((Boolean)newValue);
                return;
            }
            case 23: {
                this.setEncoding((RealTypeEncodingEnum)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 20: {
                this.setLowerLimit(null);
                return;
            }
            case 21: {
                this.setUpperLimit(null);
                return;
            }
            case 22: {
                this.unsetAllowNaN();
                return;
            }
            case 23: {
                this.unsetEncoding();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 20: {
                return this.lowerLimit != null;
            }
            case 21: {
                return this.upperLimit != null;
            }
            case 22: {
                return this.isSetAllowNaN();
            }
            case 23: {
                return this.isSetEncoding();
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == Range.class) {
            switch (derivedFeatureID) {
                case 20: {
                    return 4;
                }
                case 21: {
                    return 5;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    @Override
    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == Range.class) {
            switch (baseFeatureID) {
                case 4: {
                    return 20;
                }
                case 5: {
                    return 21;
                }
            }
            return -1;
        }
        return super.eDerivedStructuralFeatureID(baseFeatureID, baseClass);
    }

    @Override
    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (allowNaN: ");
        if (this.allowNaNESet) {
            result.append(this.allowNaN);
        } else {
            result.append("<unset>");
        }
        result.append(", encoding: ");
        if (this.encodingESet) {
            result.append((Object)this.encoding);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

