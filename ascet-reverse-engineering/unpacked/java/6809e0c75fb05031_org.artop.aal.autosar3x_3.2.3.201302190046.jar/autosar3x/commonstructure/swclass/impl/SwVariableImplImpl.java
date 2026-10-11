/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar3x.commonstructure.swclass.impl;

import autosar3x.commonstructure.datadefproperties.SwDataDefProps;
import autosar3x.commonstructure.swclass.SwVariableImpl;
import autosar3x.commonstructure.swclass.SwVariablePrototype;
import autosar3x.commonstructure.swclass.SwclassPackage;
import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class SwVariableImplImpl
extends ARObjectImpl
implements SwVariableImpl,
IReferringClass {
    protected SwVariablePrototype swVariablePrototype;
    protected SwDataDefProps swDataDefProps;

    protected SwVariableImplImpl() {
    }

    protected EClass eStaticClass() {
        return SwclassPackage.Literals.SW_VARIABLE_IMPL;
    }

    public SwVariablePrototype getSwVariablePrototype() {
        if (this.swVariablePrototype != null && this.swVariablePrototype.eIsProxy()) {
            InternalEObject oldSwVariablePrototype = (InternalEObject)this.swVariablePrototype;
            this.swVariablePrototype = (SwVariablePrototype)this.eResolveProxy(oldSwVariablePrototype);
            if (this.swVariablePrototype != oldSwVariablePrototype && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 4, (Object)oldSwVariablePrototype, (Object)this.swVariablePrototype));
            }
        }
        return this.swVariablePrototype;
    }

    public SwVariablePrototype basicGetSwVariablePrototype() {
        return this.swVariablePrototype;
    }

    public void setSwVariablePrototype(SwVariablePrototype newSwVariablePrototype) {
        SwVariablePrototype oldSwVariablePrototype = this.swVariablePrototype;
        this.swVariablePrototype = newSwVariablePrototype;
        AutosarObjectUtil.setDest((EObject)this, (int)4, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldSwVariablePrototype, (Object)this.swVariablePrototype));
        }
    }

    public SwDataDefProps getSwDataDefProps() {
        return this.swDataDefProps;
    }

    public NotificationChain basicSetSwDataDefProps(SwDataDefProps newSwDataDefProps, NotificationChain msgs) {
        SwDataDefProps oldSwDataDefProps = this.swDataDefProps;
        this.swDataDefProps = newSwDataDefProps;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldSwDataDefProps, (Object)newSwDataDefProps);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setSwDataDefProps(SwDataDefProps newSwDataDefProps) {
        if (newSwDataDefProps != this.swDataDefProps) {
            NotificationChain msgs = null;
            if (this.swDataDefProps != null) {
                msgs = ((InternalEObject)this.swDataDefProps).eInverseRemove((InternalEObject)this, -6, null, msgs);
            }
            if (newSwDataDefProps != null) {
                msgs = ((InternalEObject)newSwDataDefProps).eInverseAdd((InternalEObject)this, -6, null, msgs);
            }
            if ((msgs = this.basicSetSwDataDefProps(newSwDataDefProps, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newSwDataDefProps, (Object)newSwDataDefProps));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                return this.basicSetSwDataDefProps(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                if (resolve) {
                    return this.getSwVariablePrototype();
                }
                return this.basicGetSwVariablePrototype();
            }
            case 5: {
                return this.getSwDataDefProps();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setSwVariablePrototype((SwVariablePrototype)newValue);
                return;
            }
            case 5: {
                this.setSwDataDefProps((SwDataDefProps)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setSwVariablePrototype(null);
                return;
            }
            case 5: {
                this.setSwDataDefProps(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.swVariablePrototype != null;
            }
            case 5: {
                return this.swDataDefProps != null;
            }
        }
        return super.eIsSet(featureID);
    }

    public void eSetReferringDest(int featureID, String dest) {
        AutosarObjectUtil.setDest((EObject)this, (int)featureID, (int)-1, (String)dest);
    }

    public void eSetReferringDest(int featureID, int index, String dest) {
        AutosarObjectUtil.setDest((EObject)this, (int)featureID, (int)index, (String)dest);
    }

    public String eGetReferringDest(int featureID) {
        return AutosarObjectUtil.getDest((EObject)this, (int)featureID, (int)-1);
    }

    public String eGetReferringDest(int featureID, int index) {
        return AutosarObjectUtil.getDest((EObject)this, (int)featureID, (int)index);
    }
}

