/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar21.ecucparameterdef.impl;

import autosar21.ecucparameterdef.ConfigParameter;
import autosar21.ecucparameterdef.EcucparameterdefPackage;
import autosar21.ecucparameterdef.ParamConfContainerDef;
import autosar21.ecucparameterdef.impl.CommonConfigurationAttributesImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class ConfigParameterImpl
extends CommonConfigurationAttributesImpl
implements ConfigParameter {
    protected static final Boolean SYMBOLIC_NAME_VALUE_EDEFAULT = Boolean.FALSE;
    protected Boolean symbolicNameValue = SYMBOLIC_NAME_VALUE_EDEFAULT;
    protected boolean symbolicNameValueESet;

    protected ConfigParameterImpl() {
    }

    protected EClass eStaticClass() {
        return EcucparameterdefPackage.Literals.CONFIG_PARAMETER;
    }

    public ParamConfContainerDef getParamConfContainerDef() {
        if (this.eContainerFeatureID() != 21) {
            return null;
        }
        return (ParamConfContainerDef)this.eContainer();
    }

    public NotificationChain basicSetParamConfContainerDef(ParamConfContainerDef newParamConfContainerDef, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newParamConfContainerDef, 21, msgs);
        return msgs;
    }

    public void setParamConfContainerDef(ParamConfContainerDef newParamConfContainerDef) {
        if (newParamConfContainerDef != this.eInternalContainer() || this.eContainerFeatureID() != 21 && newParamConfContainerDef != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newParamConfContainerDef)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newParamConfContainerDef != null) {
                msgs = ((InternalEObject)newParamConfContainerDef).eInverseAdd((InternalEObject)this, 21, ParamConfContainerDef.class, msgs);
            }
            if ((msgs = this.basicSetParamConfContainerDef(newParamConfContainerDef, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)newParamConfContainerDef, (Object)newParamConfContainerDef));
        }
    }

    public Boolean getSymbolicNameValue() {
        return this.symbolicNameValue;
    }

    public void setSymbolicNameValue(Boolean newSymbolicNameValue) {
        Boolean oldSymbolicNameValue = this.symbolicNameValue;
        this.symbolicNameValue = newSymbolicNameValue;
        boolean oldSymbolicNameValueESet = this.symbolicNameValueESet;
        this.symbolicNameValueESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldSymbolicNameValue, (Object)this.symbolicNameValue, !oldSymbolicNameValueESet));
        }
    }

    public void unsetSymbolicNameValue() {
        Boolean oldSymbolicNameValue = this.symbolicNameValue;
        boolean oldSymbolicNameValueESet = this.symbolicNameValueESet;
        this.symbolicNameValue = SYMBOLIC_NAME_VALUE_EDEFAULT;
        this.symbolicNameValueESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 22, (Object)oldSymbolicNameValue, (Object)SYMBOLIC_NAME_VALUE_EDEFAULT, oldSymbolicNameValueESet));
        }
    }

    public boolean isSetSymbolicNameValue() {
        return this.symbolicNameValueESet;
    }

    public Boolean gGetSymbolicNameValue() {
        return this.getSymbolicNameValue();
    }

    public void gSetSymbolicNameValue(Boolean value) {
        this.setSymbolicNameValue(value);
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 21: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetParamConfContainerDef((ParamConfContainerDef)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 21: {
                return this.basicSetParamConfContainerDef(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 21: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 21, ParamConfContainerDef.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 21: {
                return this.getParamConfContainerDef();
            }
            case 22: {
                return this.getSymbolicNameValue();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 21: {
                this.setParamConfContainerDef((ParamConfContainerDef)newValue);
                return;
            }
            case 22: {
                this.setSymbolicNameValue((Boolean)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 21: {
                this.setParamConfContainerDef(null);
                return;
            }
            case 22: {
                this.unsetSymbolicNameValue();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 21: {
                return this.getParamConfContainerDef() != null;
            }
            case 22: {
                return this.isSetSymbolicNameValue();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (symbolicNameValue: ");
        if (this.symbolicNameValueESet) {
            result.append(this.symbolicNameValue);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

