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
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar3x.commonstructure.swclass.impl;

import autosar3x.commonstructure.datadefproperties.SwDataDefProps;
import autosar3x.commonstructure.swclass.SwClassAttrInstanceImpl;
import autosar3x.commonstructure.swclass.SwClassImpl;
import autosar3x.commonstructure.swclass.SwClassPrototype;
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
import org.eclipse.emf.ecore.util.EcoreUtil;

public class SwClassImplImpl
extends ARObjectImpl
implements SwClassImpl,
IReferringClass {
    protected SwClassPrototype swClassPrototype;
    protected SwDataDefProps swDataDefProps;

    protected SwClassImplImpl() {
    }

    protected EClass eStaticClass() {
        return SwclassPackage.Literals.SW_CLASS_IMPL;
    }

    public SwClassAttrInstanceImpl getSwClassAttrInstanceImpl() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (SwClassAttrInstanceImpl)this.eContainer();
    }

    public NotificationChain basicSetSwClassAttrInstanceImpl(SwClassAttrInstanceImpl newSwClassAttrInstanceImpl, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newSwClassAttrInstanceImpl, 4, msgs);
        return msgs;
    }

    public void setSwClassAttrInstanceImpl(SwClassAttrInstanceImpl newSwClassAttrInstanceImpl) {
        if (newSwClassAttrInstanceImpl != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newSwClassAttrInstanceImpl != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newSwClassAttrInstanceImpl)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newSwClassAttrInstanceImpl != null) {
                msgs = ((InternalEObject)newSwClassAttrInstanceImpl).eInverseAdd((InternalEObject)this, 7, SwClassAttrInstanceImpl.class, msgs);
            }
            if ((msgs = this.basicSetSwClassAttrInstanceImpl(newSwClassAttrInstanceImpl, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newSwClassAttrInstanceImpl, (Object)newSwClassAttrInstanceImpl));
        }
    }

    public SwClassPrototype getSwClassPrototype() {
        if (this.swClassPrototype != null && this.swClassPrototype.eIsProxy()) {
            InternalEObject oldSwClassPrototype = (InternalEObject)this.swClassPrototype;
            this.swClassPrototype = (SwClassPrototype)this.eResolveProxy(oldSwClassPrototype);
            if (this.swClassPrototype != oldSwClassPrototype && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 5, (Object)oldSwClassPrototype, (Object)this.swClassPrototype));
            }
        }
        return this.swClassPrototype;
    }

    public SwClassPrototype basicGetSwClassPrototype() {
        return this.swClassPrototype;
    }

    public void setSwClassPrototype(SwClassPrototype newSwClassPrototype) {
        SwClassPrototype oldSwClassPrototype = this.swClassPrototype;
        this.swClassPrototype = newSwClassPrototype;
        AutosarObjectUtil.setDest((EObject)this, (int)5, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldSwClassPrototype, (Object)this.swClassPrototype));
        }
    }

    public SwDataDefProps getSwDataDefProps() {
        return this.swDataDefProps;
    }

    public NotificationChain basicSetSwDataDefProps(SwDataDefProps newSwDataDefProps, NotificationChain msgs) {
        SwDataDefProps oldSwDataDefProps = this.swDataDefProps;
        this.swDataDefProps = newSwDataDefProps;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldSwDataDefProps, (Object)newSwDataDefProps);
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
                msgs = ((InternalEObject)this.swDataDefProps).eInverseRemove((InternalEObject)this, -7, null, msgs);
            }
            if (newSwDataDefProps != null) {
                msgs = ((InternalEObject)newSwDataDefProps).eInverseAdd((InternalEObject)this, -7, null, msgs);
            }
            if ((msgs = this.basicSetSwDataDefProps(newSwDataDefProps, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newSwDataDefProps, (Object)newSwDataDefProps));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetSwClassAttrInstanceImpl((SwClassAttrInstanceImpl)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetSwClassAttrInstanceImpl(null, msgs);
            }
            case 6: {
                return this.basicSetSwDataDefProps(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 7, SwClassAttrInstanceImpl.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getSwClassAttrInstanceImpl();
            }
            case 5: {
                if (resolve) {
                    return this.getSwClassPrototype();
                }
                return this.basicGetSwClassPrototype();
            }
            case 6: {
                return this.getSwDataDefProps();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setSwClassAttrInstanceImpl((SwClassAttrInstanceImpl)newValue);
                return;
            }
            case 5: {
                this.setSwClassPrototype((SwClassPrototype)newValue);
                return;
            }
            case 6: {
                this.setSwDataDefProps((SwDataDefProps)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setSwClassAttrInstanceImpl(null);
                return;
            }
            case 5: {
                this.setSwClassPrototype(null);
                return;
            }
            case 6: {
                this.setSwDataDefProps(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getSwClassAttrInstanceImpl() != null;
            }
            case 5: {
                return this.swClassPrototype != null;
            }
            case 6: {
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

