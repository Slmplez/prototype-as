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

import autosar40.ecucparameterdef.EcucFloatParamDef;
import autosar40.ecucparameterdef.EcucparameterdefPackage;
import autosar40.ecucparameterdef.impl.EcucParameterDefImpl;
import autosar40.genericstructure.varianthandling.FloatValueVariationPoint;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class EcucFloatParamDefImpl
extends EcucParameterDefImpl
implements EcucFloatParamDef {
    protected FloatValueVariationPoint defaultValue;
    protected FloatValueVariationPoint max;
    protected FloatValueVariationPoint min;

    protected EcucFloatParamDefImpl() {
    }

    protected EClass eStaticClass() {
        return EcucparameterdefPackage.Literals.ECUC_FLOAT_PARAM_DEF;
    }

    public FloatValueVariationPoint getDefaultValue() {
        return this.defaultValue;
    }

    public NotificationChain basicSetDefaultValue(FloatValueVariationPoint newDefaultValue, NotificationChain msgs) {
        FloatValueVariationPoint oldDefaultValue = this.defaultValue;
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

    public void setDefaultValue(FloatValueVariationPoint newDefaultValue) {
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

    public FloatValueVariationPoint getMax() {
        return this.max;
    }

    public NotificationChain basicSetMax(FloatValueVariationPoint newMax, NotificationChain msgs) {
        FloatValueVariationPoint oldMax = this.max;
        this.max = newMax;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 31, (Object)oldMax, (Object)newMax);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setMax(FloatValueVariationPoint newMax) {
        if (newMax != this.max) {
            NotificationChain msgs = null;
            if (this.max != null) {
                msgs = ((InternalEObject)this.max).eInverseRemove((InternalEObject)this, -32, null, msgs);
            }
            if (newMax != null) {
                msgs = ((InternalEObject)newMax).eInverseAdd((InternalEObject)this, -32, null, msgs);
            }
            if ((msgs = this.basicSetMax(newMax, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 31, (Object)newMax, (Object)newMax));
        }
    }

    public FloatValueVariationPoint getMin() {
        return this.min;
    }

    public NotificationChain basicSetMin(FloatValueVariationPoint newMin, NotificationChain msgs) {
        FloatValueVariationPoint oldMin = this.min;
        this.min = newMin;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 32, (Object)oldMin, (Object)newMin);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setMin(FloatValueVariationPoint newMin) {
        if (newMin != this.min) {
            NotificationChain msgs = null;
            if (this.min != null) {
                msgs = ((InternalEObject)this.min).eInverseRemove((InternalEObject)this, -33, null, msgs);
            }
            if (newMin != null) {
                msgs = ((InternalEObject)newMin).eInverseAdd((InternalEObject)this, -33, null, msgs);
            }
            if ((msgs = this.basicSetMin(newMin, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 32, (Object)newMin, (Object)newMin));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 30: {
                return this.basicSetDefaultValue(null, msgs);
            }
            case 31: {
                return this.basicSetMax(null, msgs);
            }
            case 32: {
                return this.basicSetMin(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 30: {
                return this.getDefaultValue();
            }
            case 31: {
                return this.getMax();
            }
            case 32: {
                return this.getMin();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 30: {
                this.setDefaultValue((FloatValueVariationPoint)newValue);
                return;
            }
            case 31: {
                this.setMax((FloatValueVariationPoint)newValue);
                return;
            }
            case 32: {
                this.setMin((FloatValueVariationPoint)newValue);
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
            case 31: {
                this.setMax(null);
                return;
            }
            case 32: {
                this.setMin(null);
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
            case 31: {
                return this.max != null;
            }
            case 32: {
                return this.min != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

