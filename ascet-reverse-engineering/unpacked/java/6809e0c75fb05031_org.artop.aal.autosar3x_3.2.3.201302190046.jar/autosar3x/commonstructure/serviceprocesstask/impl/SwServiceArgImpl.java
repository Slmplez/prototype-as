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
package autosar3x.commonstructure.serviceprocesstask.impl;

import autosar3x.commonstructure.datadefproperties.SwArraysize;
import autosar3x.commonstructure.datadefproperties.SwDataDefProps;
import autosar3x.commonstructure.serviceprocesstask.ServiceprocesstaskPackage;
import autosar3x.commonstructure.serviceprocesstask.SwServiceArg;
import autosar3x.genericstructure.infrastructure.identifiable.impl.IdentifiableImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class SwServiceArgImpl
extends IdentifiableImpl
implements SwServiceArg {
    protected SwArraysize swArraysize;
    protected SwDataDefProps swDataDefProps;

    protected SwServiceArgImpl() {
    }

    protected EClass eStaticClass() {
        return ServiceprocesstaskPackage.Literals.SW_SERVICE_ARG;
    }

    public SwArraysize getSwArraysize() {
        return this.swArraysize;
    }

    public NotificationChain basicSetSwArraysize(SwArraysize newSwArraysize, NotificationChain msgs) {
        SwArraysize oldSwArraysize = this.swArraysize;
        this.swArraysize = newSwArraysize;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 17, (Object)oldSwArraysize, (Object)newSwArraysize);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setSwArraysize(SwArraysize newSwArraysize) {
        if (newSwArraysize != this.swArraysize) {
            NotificationChain msgs = null;
            if (this.swArraysize != null) {
                msgs = ((InternalEObject)this.swArraysize).eInverseRemove((InternalEObject)this, -18, null, msgs);
            }
            if (newSwArraysize != null) {
                msgs = ((InternalEObject)newSwArraysize).eInverseAdd((InternalEObject)this, -18, null, msgs);
            }
            if ((msgs = this.basicSetSwArraysize(newSwArraysize, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 17, (Object)newSwArraysize, (Object)newSwArraysize));
        }
    }

    public SwDataDefProps getSwDataDefProps() {
        return this.swDataDefProps;
    }

    public NotificationChain basicSetSwDataDefProps(SwDataDefProps newSwDataDefProps, NotificationChain msgs) {
        SwDataDefProps oldSwDataDefProps = this.swDataDefProps;
        this.swDataDefProps = newSwDataDefProps;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 18, (Object)oldSwDataDefProps, (Object)newSwDataDefProps);
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
                msgs = ((InternalEObject)this.swDataDefProps).eInverseRemove((InternalEObject)this, -19, null, msgs);
            }
            if (newSwDataDefProps != null) {
                msgs = ((InternalEObject)newSwDataDefProps).eInverseAdd((InternalEObject)this, -19, null, msgs);
            }
            if ((msgs = this.basicSetSwDataDefProps(newSwDataDefProps, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)newSwDataDefProps, (Object)newSwDataDefProps));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 17: {
                return this.basicSetSwArraysize(null, msgs);
            }
            case 18: {
                return this.basicSetSwDataDefProps(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 17: {
                return this.getSwArraysize();
            }
            case 18: {
                return this.getSwDataDefProps();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 17: {
                this.setSwArraysize((SwArraysize)newValue);
                return;
            }
            case 18: {
                this.setSwDataDefProps((SwDataDefProps)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 17: {
                this.setSwArraysize(null);
                return;
            }
            case 18: {
                this.setSwDataDefProps(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 17: {
                return this.swArraysize != null;
            }
            case 18: {
                return this.swDataDefProps != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

