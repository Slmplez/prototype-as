/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar3x.commonstructure.swclass.impl;

import autosar3x.commonstructure.datadefproperties.SwDataDefProps;
import autosar3x.commonstructure.swclass.SwCalprmImpl;
import autosar3x.commonstructure.swclass.SwClassAttrImpl;
import autosar3x.commonstructure.swclass.SwVariableImpl;
import autosar3x.commonstructure.swclass.SwclassPackage;
import autosar3x.genericstructure.infrastructure.identifiable.impl.IdentifiableImpl;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SwClassAttrImplImpl
extends IdentifiableImpl
implements SwClassAttrImpl {
    protected SwDataDefProps swDataDefProps;
    protected EList<SwVariableImpl> swVariableImpls;
    protected EList<SwCalprmImpl> swCalprmImpls;

    protected SwClassAttrImplImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return SwclassPackage.Literals.SW_CLASS_ATTR_IMPL;
    }

    @Override
    public SwDataDefProps getSwDataDefProps() {
        return this.swDataDefProps;
    }

    public NotificationChain basicSetSwDataDefProps(SwDataDefProps newSwDataDefProps, NotificationChain msgs) {
        SwDataDefProps oldSwDataDefProps = this.swDataDefProps;
        this.swDataDefProps = newSwDataDefProps;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 17, (Object)oldSwDataDefProps, (Object)newSwDataDefProps);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setSwDataDefProps(SwDataDefProps newSwDataDefProps) {
        if (newSwDataDefProps != this.swDataDefProps) {
            NotificationChain msgs = null;
            if (this.swDataDefProps != null) {
                msgs = ((InternalEObject)this.swDataDefProps).eInverseRemove((InternalEObject)this, -18, null, msgs);
            }
            if (newSwDataDefProps != null) {
                msgs = ((InternalEObject)newSwDataDefProps).eInverseAdd((InternalEObject)this, -18, null, msgs);
            }
            if ((msgs = this.basicSetSwDataDefProps(newSwDataDefProps, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 17, (Object)newSwDataDefProps, (Object)newSwDataDefProps));
        }
    }

    @Override
    public EList<SwVariableImpl> getSwVariableImpls() {
        if (this.swVariableImpls == null) {
            this.swVariableImpls = new EObjectContainmentEList(SwVariableImpl.class, (InternalEObject)this, 18);
        }
        return this.swVariableImpls;
    }

    @Override
    public EList<SwCalprmImpl> getSwCalprmImpls() {
        if (this.swCalprmImpls == null) {
            this.swCalprmImpls = new EObjectContainmentEList(SwCalprmImpl.class, (InternalEObject)this, 19);
        }
        return this.swCalprmImpls;
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 17: {
                return this.basicSetSwDataDefProps(null, msgs);
            }
            case 18: {
                return ((InternalEList)this.getSwVariableImpls()).basicRemove((Object)otherEnd, msgs);
            }
            case 19: {
                return ((InternalEList)this.getSwCalprmImpls()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 17: {
                return this.getSwDataDefProps();
            }
            case 18: {
                return this.getSwVariableImpls();
            }
            case 19: {
                return this.getSwCalprmImpls();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 17: {
                this.setSwDataDefProps((SwDataDefProps)newValue);
                return;
            }
            case 18: {
                this.getSwVariableImpls().clear();
                this.getSwVariableImpls().addAll((Collection)newValue);
                return;
            }
            case 19: {
                this.getSwCalprmImpls().clear();
                this.getSwCalprmImpls().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 17: {
                this.setSwDataDefProps(null);
                return;
            }
            case 18: {
                this.getSwVariableImpls().clear();
                return;
            }
            case 19: {
                this.getSwCalprmImpls().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 17: {
                return this.swDataDefProps != null;
            }
            case 18: {
                return this.swVariableImpls != null && !this.swVariableImpls.isEmpty();
            }
            case 19: {
                return this.swCalprmImpls != null && !this.swCalprmImpls.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

