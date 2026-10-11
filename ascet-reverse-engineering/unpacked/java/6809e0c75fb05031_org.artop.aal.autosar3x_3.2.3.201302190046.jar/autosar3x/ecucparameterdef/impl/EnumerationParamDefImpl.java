/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucparameterdef.GEnumerationLiteralDef
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar3x.ecucparameterdef.impl;

import autosar3x.ecucparameterdef.EcucparameterdefPackage;
import autosar3x.ecucparameterdef.EnumerationLiteralDef;
import autosar3x.ecucparameterdef.EnumerationParamDef;
import autosar3x.ecucparameterdef.impl.ConfigParameterImpl;
import gautosar.gecucparameterdef.GEnumerationLiteralDef;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EnumerationParamDefImpl
extends ConfigParameterImpl
implements EnumerationParamDef {
    protected static final String DEFAULT_VALUE_EDEFAULT = "";
    protected String defaultValue = "";
    protected boolean defaultValueESet;
    protected EList<EnumerationLiteralDef> literals;

    protected EnumerationParamDefImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return EcucparameterdefPackage.Literals.ENUMERATION_PARAM_DEF;
    }

    @Override
    public String getDefaultValue() {
        return this.defaultValue;
    }

    @Override
    public void setDefaultValue(String newDefaultValue) {
        String oldDefaultValue = this.defaultValue;
        this.defaultValue = newDefaultValue;
        boolean oldDefaultValueESet = this.defaultValueESet;
        this.defaultValueESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldDefaultValue, (Object)this.defaultValue, !oldDefaultValueESet));
        }
    }

    @Override
    public void unsetDefaultValue() {
        String oldDefaultValue = this.defaultValue;
        boolean oldDefaultValueESet = this.defaultValueESet;
        this.defaultValue = DEFAULT_VALUE_EDEFAULT;
        this.defaultValueESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 24, (Object)oldDefaultValue, (Object)DEFAULT_VALUE_EDEFAULT, oldDefaultValueESet));
        }
    }

    @Override
    public boolean isSetDefaultValue() {
        return this.defaultValueESet;
    }

    @Override
    public EList<EnumerationLiteralDef> getLiterals() {
        if (this.literals == null) {
            this.literals = new EObjectContainmentWithInverseEList(EnumerationLiteralDef.class, (InternalEObject)this, 25, 17);
        }
        return this.literals;
    }

    public EList<GEnumerationLiteralDef> gGetLiterals() {
        EList<EnumerationLiteralDef> untypedList = this.getLiterals();
        return untypedList;
    }

    public String gGetDefaultValue() {
        return this.getDefaultValue();
    }

    public void gSetDefaultValue(String value) {
        this.setDefaultValue(value);
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 25: {
                return ((InternalEList)this.getLiterals()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 25: {
                return ((InternalEList)this.getLiterals()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 24: {
                return this.getDefaultValue();
            }
            case 25: {
                return this.getLiterals();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 24: {
                this.setDefaultValue((String)newValue);
                return;
            }
            case 25: {
                this.getLiterals().clear();
                this.getLiterals().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 24: {
                this.unsetDefaultValue();
                return;
            }
            case 25: {
                this.getLiterals().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 24: {
                return this.isSetDefaultValue();
            }
            case 25: {
                return this.literals != null && !this.literals.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
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
        result.append(')');
        return result.toString();
    }
}

