/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.ecucparameterdef.impl;

import autosar40.ecucparameterdef.EcucBooleanParamDef;
import autosar40.ecucparameterdef.EcucparameterdefPackage;
import autosar40.ecucparameterdef.impl.EcucParameterDefImpl;
import autosar40.genericstructure.varianthandling.BooleanValueVariationPoint;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class EcucBooleanParamDefImpl
extends EcucParameterDefImpl
implements EcucBooleanParamDef {
    protected BooleanValueVariationPoint defaultValue;

    protected EcucBooleanParamDefImpl() {
    }

    protected EClass eStaticClass() {
        return EcucparameterdefPackage.Literals.ECUC_BOOLEAN_PARAM_DEF;
    }

    public BooleanValueVariationPoint getDefaultValue() {
        return this.defaultValue;
    }

    public NotificationChain basicSetDefaultValue(BooleanValueVariationPoint newDefaultValue, NotificationChain msgs) {
        BooleanValueVariationPoint oldDefaultValue = this.defaultValue;
        this.defaultValue = newDefaultValue;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 30, (Object)oldDefaultValue, (Object)newDefaultValue);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setDefaultValue(BooleanValueVariationPoint newDefaultValue) {
        if (newDefaultValue != this.defaultValue) {
            NotificationChain msgs = null;
            if (this.defaultValue != null) {
                msgs = ((InternalEObject)this.defaultValue).eInverseRemove((InternalEObject)this, -31, null, msgs);
            }
            if (newDefaultValue != null) {
                msgs = ((InternalEObject)newDefaultValue).eInverseAdd((InternalEObject)this, -31, null, msgs);
            }
            if ((msgs = this.basicSetDefaultValue(newDefaultValue, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 30, (Object)newDefaultValue, (Object)newDefaultValue));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 30: {
                return this.basicSetDefaultValue(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 30: {
                return this.getDefaultValue();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 30: {
                this.setDefaultValue((BooleanValueVariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 30: {
                this.setDefaultValue(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 30: {
                return this.defaultValue != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

