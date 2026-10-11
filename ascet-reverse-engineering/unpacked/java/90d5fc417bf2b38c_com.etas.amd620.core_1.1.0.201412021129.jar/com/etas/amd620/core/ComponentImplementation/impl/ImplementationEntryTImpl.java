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
 *  org.eclipse.emf.ecore.impl.MinimalEObjectImpl$Container
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package com.etas.amd620.core.ComponentImplementation.impl;

import com.etas.amd620.core.ComponentImplementation.ComponentImplementationPackage;
import com.etas.amd620.core.ComponentImplementation.GenericDataT;
import com.etas.amd620.core.ComponentImplementation.ImplementationEntryT;
import com.etas.amd620.core.ComponentImplementation.ImplementationVariantT;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.InternalEList;

public class ImplementationEntryTImpl
extends MinimalEObjectImpl.Container
implements ImplementationEntryT {
    protected ImplementationVariantT implementationVariant;
    protected EList<GenericDataT> customerData;
    protected static final String IGNORE_EDEFAULT = "false";
    protected String ignore = "false";
    protected boolean ignoreESet;

    protected ImplementationEntryTImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentImplementationPackage.Literals.IMPLEMENTATION_ENTRY_T;
    }

    @Override
    public ImplementationVariantT getImplementationVariant() {
        return this.implementationVariant;
    }

    public NotificationChain basicSetImplementationVariant(ImplementationVariantT newImplementationVariant, NotificationChain msgs) {
        ImplementationVariantT oldImplementationVariant = this.implementationVariant;
        this.implementationVariant = newImplementationVariant;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldImplementationVariant, (Object)newImplementationVariant);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setImplementationVariant(ImplementationVariantT newImplementationVariant) {
        if (newImplementationVariant != this.implementationVariant) {
            NotificationChain msgs = null;
            if (this.implementationVariant != null) {
                msgs = ((InternalEObject)this.implementationVariant).eInverseRemove((InternalEObject)this, -1, null, msgs);
            }
            if (newImplementationVariant != null) {
                msgs = ((InternalEObject)newImplementationVariant).eInverseAdd((InternalEObject)this, -1, null, msgs);
            }
            if ((msgs = this.basicSetImplementationVariant(newImplementationVariant, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)newImplementationVariant, (Object)newImplementationVariant));
        }
    }

    @Override
    public EList<GenericDataT> getCustomerData() {
        if (this.customerData == null) {
            this.customerData = new EObjectContainmentEList(GenericDataT.class, (InternalEObject)this, 1);
        }
        return this.customerData;
    }

    @Override
    public String getIgnore() {
        return this.ignore;
    }

    @Override
    public void setIgnore(String newIgnore) {
        String oldIgnore = this.ignore;
        this.ignore = newIgnore;
        boolean oldIgnoreESet = this.ignoreESet;
        this.ignoreESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, (Object)oldIgnore, (Object)this.ignore, !oldIgnoreESet));
        }
    }

    @Override
    public void unsetIgnore() {
        String oldIgnore = this.ignore;
        boolean oldIgnoreESet = this.ignoreESet;
        this.ignore = IGNORE_EDEFAULT;
        this.ignoreESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 2, (Object)oldIgnore, (Object)IGNORE_EDEFAULT, oldIgnoreESet));
        }
    }

    @Override
    public boolean isSetIgnore() {
        return this.ignoreESet;
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return this.basicSetImplementationVariant(null, msgs);
            }
            case 1: {
                return ((InternalEList)this.getCustomerData()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getImplementationVariant();
            }
            case 1: {
                return this.getCustomerData();
            }
            case 2: {
                return this.getIgnore();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setImplementationVariant((ImplementationVariantT)newValue);
                return;
            }
            case 1: {
                this.getCustomerData().clear();
                this.getCustomerData().addAll((Collection)newValue);
                return;
            }
            case 2: {
                this.setIgnore((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setImplementationVariant(null);
                return;
            }
            case 1: {
                this.getCustomerData().clear();
                return;
            }
            case 2: {
                this.unsetIgnore();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.implementationVariant != null;
            }
            case 1: {
                return this.customerData != null && !this.customerData.isEmpty();
            }
            case 2: {
                return this.isSetIgnore();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (ignore: ");
        if (this.ignoreESet) {
            result.append(this.ignore);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

