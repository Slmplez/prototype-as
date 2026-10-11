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
package autosar40.ecucdescription.impl;

import autosar40.ecucdescription.EcucNumericalParamValue;
import autosar40.ecucdescription.EcucdescriptionPackage;
import autosar40.ecucdescription.impl.EcucParameterValueImpl;
import autosar40.genericstructure.varianthandling.NumericalValueVariationPoint;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class EcucNumericalParamValueImpl
extends EcucParameterValueImpl
implements EcucNumericalParamValue {
    protected NumericalValueVariationPoint value;

    protected EcucNumericalParamValueImpl() {
    }

    protected EClass eStaticClass() {
        return EcucdescriptionPackage.Literals.ECUC_NUMERICAL_PARAM_VALUE;
    }

    public NumericalValueVariationPoint getValue() {
        return this.value;
    }

    public NotificationChain basicSetValue(NumericalValueVariationPoint newValue, NotificationChain msgs) {
        NumericalValueVariationPoint oldValue = this.value;
        this.value = newValue;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldValue, (Object)newValue);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setValue(NumericalValueVariationPoint newValue) {
        if (newValue != this.value) {
            NotificationChain msgs = null;
            if (this.value != null) {
                msgs = ((InternalEObject)this.value).eInverseRemove((InternalEObject)this, -11, null, msgs);
            }
            if (newValue != null) {
                msgs = ((InternalEObject)newValue).eInverseAdd((InternalEObject)this, -11, null, msgs);
            }
            if ((msgs = this.basicSetValue(newValue, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)newValue, (Object)newValue));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 10: {
                return this.basicSetValue(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 10: {
                return this.getValue();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 10: {
                this.setValue((NumericalValueVariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 10: {
                this.setValue(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 10: {
                return this.value != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

