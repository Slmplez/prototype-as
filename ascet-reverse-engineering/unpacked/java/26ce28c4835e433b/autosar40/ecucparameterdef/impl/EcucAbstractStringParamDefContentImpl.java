/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.ecucparameterdef.impl;

import autosar40.ecucparameterdef.EcucAbstractStringParamDefContent;
import autosar40.ecucparameterdef.EcucparameterdefPackage;
import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public abstract class EcucAbstractStringParamDefContentImpl
extends ARObjectImpl
implements EcucAbstractStringParamDefContent {
    protected static final String DEFAULT_VALUE_EDEFAULT = "";
    protected String defaultValue = "";
    protected boolean defaultValueESet;
    protected static final PositiveIntegerDatatype MAX_LENGTH_EDEFAULT = new PositiveIntegerDatatype(new Long(0L).longValue());
    protected PositiveIntegerDatatype maxLength = MAX_LENGTH_EDEFAULT.clone();
    protected boolean maxLengthESet;
    protected static final PositiveIntegerDatatype MIN_LENGTH_EDEFAULT = new PositiveIntegerDatatype(new Long(0L).longValue());
    protected PositiveIntegerDatatype minLength = MIN_LENGTH_EDEFAULT.clone();
    protected boolean minLengthESet;
    protected static final String REGULAR_EXPRESSION_EDEFAULT = "";
    protected String regularExpression = "";
    protected boolean regularExpressionESet;

    protected EcucAbstractStringParamDefContentImpl() {
    }

    protected EClass eStaticClass() {
        return EcucparameterdefPackage.Literals.ECUC_ABSTRACT_STRING_PARAM_DEF_CONTENT;
    }

    public String getDefaultValue() {
        return this.defaultValue;
    }

    public void setDefaultValue(String newDefaultValue) {
        String oldDefaultValue = this.defaultValue;
        this.defaultValue = newDefaultValue;
        boolean oldDefaultValueESet = this.defaultValueESet;
        this.defaultValueESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldDefaultValue, (Object)this.defaultValue, !oldDefaultValueESet));
        }
    }

    public void unsetDefaultValue() {
        String oldDefaultValue = this.defaultValue;
        boolean oldDefaultValueESet = this.defaultValueESet;
        this.defaultValue = "";
        this.defaultValueESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 4, (Object)oldDefaultValue, (Object)"", oldDefaultValueESet));
        }
    }

    public boolean isSetDefaultValue() {
        return this.defaultValueESet;
    }

    public Long getMaxLength() {
        return (Long)this.maxLength.basicGetValue();
    }

    public void setMaxLength(Long newMaxLength) {
        Long oldMaxLength = (Long)this.maxLength.basicGetValue();
        this.maxLength.basicSetValue((Object)newMaxLength);
        boolean oldMaxLengthESet = this.maxLengthESet;
        this.maxLengthESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldMaxLength, (Object)newMaxLength, !oldMaxLengthESet));
        }
    }

    public void unsetMaxLength() {
        Long oldMaxLength = (Long)this.maxLength.basicGetValue();
        boolean oldMaxLengthESet = this.maxLengthESet;
        this.maxLength = MAX_LENGTH_EDEFAULT.clone();
        this.maxLengthESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldMaxLength, (Object)MAX_LENGTH_EDEFAULT, oldMaxLengthESet));
        }
    }

    public boolean isSetMaxLength() {
        return this.maxLengthESet;
    }

    public Long getMinLength() {
        return (Long)this.minLength.basicGetValue();
    }

    public void setMinLength(Long newMinLength) {
        Long oldMinLength = (Long)this.minLength.basicGetValue();
        this.minLength.basicSetValue((Object)newMinLength);
        boolean oldMinLengthESet = this.minLengthESet;
        this.minLengthESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldMinLength, (Object)newMinLength, !oldMinLengthESet));
        }
    }

    public void unsetMinLength() {
        Long oldMinLength = (Long)this.minLength.basicGetValue();
        boolean oldMinLengthESet = this.minLengthESet;
        this.minLength = MIN_LENGTH_EDEFAULT.clone();
        this.minLengthESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldMinLength, (Object)MIN_LENGTH_EDEFAULT, oldMinLengthESet));
        }
    }

    public boolean isSetMinLength() {
        return this.minLengthESet;
    }

    public String getRegularExpression() {
        return this.regularExpression;
    }

    public void setRegularExpression(String newRegularExpression) {
        String oldRegularExpression = this.regularExpression;
        this.regularExpression = newRegularExpression;
        boolean oldRegularExpressionESet = this.regularExpressionESet;
        this.regularExpressionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldRegularExpression, (Object)this.regularExpression, !oldRegularExpressionESet));
        }
    }

    public void unsetRegularExpression() {
        String oldRegularExpression = this.regularExpression;
        boolean oldRegularExpressionESet = this.regularExpressionESet;
        this.regularExpression = "";
        this.regularExpressionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 7, (Object)oldRegularExpression, (Object)"", oldRegularExpressionESet));
        }
    }

    public boolean isSetRegularExpression() {
        return this.regularExpressionESet;
    }

    public PositiveIntegerDatatype getMaxLengthData() {
        return this.maxLength.clone();
    }

    public void setMaxLengthData(PositiveIntegerDatatype newMaxLength) {
        this.maxLength.setRadix((int)newMaxLength.getRadix());
        this.maxLength.setNoOfDigits((int)newMaxLength.getNoOfDigits());
        this.setMaxLength(newMaxLength.getValue());
    }

    public PositiveIntegerDatatype getMinLengthData() {
        return this.minLength.clone();
    }

    public void setMinLengthData(PositiveIntegerDatatype newMinLength) {
        this.minLength.setRadix((int)newMinLength.getRadix());
        this.minLength.setNoOfDigits((int)newMinLength.getNoOfDigits());
        this.setMinLength(newMinLength.getValue());
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getDefaultValue();
            }
            case 5: {
                return this.getMaxLength();
            }
            case 6: {
                return this.getMinLength();
            }
            case 7: {
                return this.getRegularExpression();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setDefaultValue((String)newValue);
                return;
            }
            case 5: {
                this.setMaxLength((Long)newValue);
                return;
            }
            case 6: {
                this.setMinLength((Long)newValue);
                return;
            }
            case 7: {
                this.setRegularExpression((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.unsetDefaultValue();
                return;
            }
            case 5: {
                this.unsetMaxLength();
                return;
            }
            case 6: {
                this.unsetMinLength();
                return;
            }
            case 7: {
                this.unsetRegularExpression();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.isSetDefaultValue();
            }
            case 5: {
                return this.isSetMaxLength();
            }
            case 6: {
                return this.isSetMinLength();
            }
            case 7: {
                return this.isSetRegularExpression();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (defaultValue: ");
        if (this.defaultValueESet) {
            result.append(this.defaultValue);
        } else {
            result.append("<unset>");
        }
        result.append(", maxLength: ");
        if (this.maxLengthESet) {
            result.append(this.maxLength);
        } else {
            result.append("<unset>");
        }
        result.append(", minLength: ");
        if (this.minLengthESet) {
            result.append(this.minLength);
        } else {
            result.append("<unset>");
        }
        result.append(", regularExpression: ");
        if (this.regularExpressionESet) {
            result.append(this.regularExpression);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

