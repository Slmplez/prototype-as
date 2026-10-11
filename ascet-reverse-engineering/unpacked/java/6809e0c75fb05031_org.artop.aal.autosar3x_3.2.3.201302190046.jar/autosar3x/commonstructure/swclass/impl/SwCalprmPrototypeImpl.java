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
package autosar3x.commonstructure.swclass.impl;

import autosar3x.commonstructure.datadefproperties.SwDataDefProps;
import autosar3x.commonstructure.swclass.SwCalprmPrototype;
import autosar3x.commonstructure.swclass.SwClassAttr;
import autosar3x.commonstructure.swclass.SwclassPackage;
import autosar3x.genericstructure.infrastructure.identifiable.impl.IdentifiableImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class SwCalprmPrototypeImpl
extends IdentifiableImpl
implements SwCalprmPrototype {
    protected SwDataDefProps swDataDefProps;

    protected SwCalprmPrototypeImpl() {
    }

    protected EClass eStaticClass() {
        return SwclassPackage.Literals.SW_CALPRM_PROTOTYPE;
    }

    public SwClassAttr getSwClassAttr() {
        if (this.eContainerFeatureID() != 17) {
            return null;
        }
        return (SwClassAttr)this.eContainer();
    }

    public NotificationChain basicSetSwClassAttr(SwClassAttr newSwClassAttr, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newSwClassAttr, 17, msgs);
        return msgs;
    }

    public void setSwClassAttr(SwClassAttr newSwClassAttr) {
        if (newSwClassAttr != this.eInternalContainer() || this.eContainerFeatureID() != 17 && newSwClassAttr != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newSwClassAttr)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newSwClassAttr != null) {
                msgs = ((InternalEObject)newSwClassAttr).eInverseAdd((InternalEObject)this, 5, SwClassAttr.class, msgs);
            }
            if ((msgs = this.basicSetSwClassAttr(newSwClassAttr, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 17, (Object)newSwClassAttr, (Object)newSwClassAttr));
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

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 17: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetSwClassAttr((SwClassAttr)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 17: {
                return this.basicSetSwClassAttr(null, msgs);
            }
            case 18: {
                return this.basicSetSwDataDefProps(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 17: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 5, SwClassAttr.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 17: {
                return this.getSwClassAttr();
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
                this.setSwClassAttr((SwClassAttr)newValue);
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
                this.setSwClassAttr(null);
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
                return this.getSwClassAttr() != null;
            }
            case 18: {
                return this.swDataDefProps != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

