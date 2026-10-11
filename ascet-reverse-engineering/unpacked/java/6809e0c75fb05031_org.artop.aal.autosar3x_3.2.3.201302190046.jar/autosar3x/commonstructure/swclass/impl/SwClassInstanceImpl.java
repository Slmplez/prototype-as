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
package autosar3x.commonstructure.swclass.impl;

import autosar3x.commonstructure.datadefproperties.SwDataDefProps;
import autosar3x.commonstructure.swclass.SwClassAttrInstanceImpl;
import autosar3x.commonstructure.swclass.SwClassInstance;
import autosar3x.commonstructure.swclass.SwclassPackage;
import autosar3x.genericstructure.infrastructure.identifiable.impl.ARElementImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class SwClassInstanceImpl
extends ARElementImpl
implements SwClassInstance {
    protected SwDataDefProps swDataDefProps;
    protected SwClassAttrInstanceImpl swClassAttrInstanceImpl;

    protected SwClassInstanceImpl() {
    }

    protected EClass eStaticClass() {
        return SwclassPackage.Literals.SW_CLASS_INSTANCE;
    }

    public SwDataDefProps getSwDataDefProps() {
        return this.swDataDefProps;
    }

    public NotificationChain basicSetSwDataDefProps(SwDataDefProps newSwDataDefProps, NotificationChain msgs) {
        SwDataDefProps oldSwDataDefProps = this.swDataDefProps;
        this.swDataDefProps = newSwDataDefProps;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldSwDataDefProps, (Object)newSwDataDefProps);
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
                msgs = ((InternalEObject)this.swDataDefProps).eInverseRemove((InternalEObject)this, -20, null, msgs);
            }
            if (newSwDataDefProps != null) {
                msgs = ((InternalEObject)newSwDataDefProps).eInverseAdd((InternalEObject)this, -20, null, msgs);
            }
            if ((msgs = this.basicSetSwDataDefProps(newSwDataDefProps, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)newSwDataDefProps, (Object)newSwDataDefProps));
        }
    }

    public SwClassAttrInstanceImpl getSwClassAttrInstanceImpl() {
        return this.swClassAttrInstanceImpl;
    }

    public NotificationChain basicSetSwClassAttrInstanceImpl(SwClassAttrInstanceImpl newSwClassAttrInstanceImpl, NotificationChain msgs) {
        SwClassAttrInstanceImpl oldSwClassAttrInstanceImpl = this.swClassAttrInstanceImpl;
        this.swClassAttrInstanceImpl = newSwClassAttrInstanceImpl;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldSwClassAttrInstanceImpl, (Object)newSwClassAttrInstanceImpl);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setSwClassAttrInstanceImpl(SwClassAttrInstanceImpl newSwClassAttrInstanceImpl) {
        if (newSwClassAttrInstanceImpl != this.swClassAttrInstanceImpl) {
            NotificationChain msgs = null;
            if (this.swClassAttrInstanceImpl != null) {
                msgs = ((InternalEObject)this.swClassAttrInstanceImpl).eInverseRemove((InternalEObject)this, 4, SwClassAttrInstanceImpl.class, msgs);
            }
            if (newSwClassAttrInstanceImpl != null) {
                msgs = ((InternalEObject)newSwClassAttrInstanceImpl).eInverseAdd((InternalEObject)this, 4, SwClassAttrInstanceImpl.class, msgs);
            }
            if ((msgs = this.basicSetSwClassAttrInstanceImpl(newSwClassAttrInstanceImpl, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)newSwClassAttrInstanceImpl, (Object)newSwClassAttrInstanceImpl));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 20: {
                if (this.swClassAttrInstanceImpl != null) {
                    msgs = ((InternalEObject)this.swClassAttrInstanceImpl).eInverseRemove((InternalEObject)this, -21, null, msgs);
                }
                return this.basicSetSwClassAttrInstanceImpl((SwClassAttrInstanceImpl)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 19: {
                return this.basicSetSwDataDefProps(null, msgs);
            }
            case 20: {
                return this.basicSetSwClassAttrInstanceImpl(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 19: {
                return this.getSwDataDefProps();
            }
            case 20: {
                return this.getSwClassAttrInstanceImpl();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 19: {
                this.setSwDataDefProps((SwDataDefProps)newValue);
                return;
            }
            case 20: {
                this.setSwClassAttrInstanceImpl((SwClassAttrInstanceImpl)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 19: {
                this.setSwDataDefProps(null);
                return;
            }
            case 20: {
                this.setSwClassAttrInstanceImpl(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 19: {
                return this.swDataDefProps != null;
            }
            case 20: {
                return this.swClassAttrInstanceImpl != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

