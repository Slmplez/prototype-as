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
 *  org.eclipse.emf.ecore.impl.MinimalEObjectImpl$Container
 */
package com.etas.amd620.core.ComponentData.impl;

import com.etas.amd620.core.ComponentData.ComponentDataPackage;
import com.etas.amd620.core.ComponentData.LocalType;
import com.etas.amd620.core.ComponentData.ReferenceDataT;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class ReferenceDataTImpl
extends MinimalEObjectImpl.Container
implements ReferenceDataT {
    protected LocalType local;
    protected EObject external;

    protected ReferenceDataTImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentDataPackage.Literals.REFERENCE_DATA_T;
    }

    @Override
    public LocalType getLocal() {
        return this.local;
    }

    public NotificationChain basicSetLocal(LocalType newLocal, NotificationChain msgs) {
        LocalType oldLocal = this.local;
        this.local = newLocal;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldLocal, (Object)newLocal);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setLocal(LocalType newLocal) {
        if (newLocal != this.local) {
            NotificationChain msgs = null;
            if (this.local != null) {
                msgs = ((InternalEObject)this.local).eInverseRemove((InternalEObject)this, -1, null, msgs);
            }
            if (newLocal != null) {
                msgs = ((InternalEObject)newLocal).eInverseAdd((InternalEObject)this, -1, null, msgs);
            }
            if ((msgs = this.basicSetLocal(newLocal, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)newLocal, (Object)newLocal));
        }
    }

    @Override
    public EObject getExternal() {
        return this.external;
    }

    public NotificationChain basicSetExternal(EObject newExternal, NotificationChain msgs) {
        EObject oldExternal = this.external;
        this.external = newExternal;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldExternal, (Object)newExternal);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setExternal(EObject newExternal) {
        if (newExternal != this.external) {
            NotificationChain msgs = null;
            if (this.external != null) {
                msgs = ((InternalEObject)this.external).eInverseRemove((InternalEObject)this, -2, null, msgs);
            }
            if (newExternal != null) {
                msgs = ((InternalEObject)newExternal).eInverseAdd((InternalEObject)this, -2, null, msgs);
            }
            if ((msgs = this.basicSetExternal(newExternal, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)newExternal, (Object)newExternal));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return this.basicSetLocal(null, msgs);
            }
            case 1: {
                return this.basicSetExternal(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getLocal();
            }
            case 1: {
                return this.getExternal();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setLocal((LocalType)newValue);
                return;
            }
            case 1: {
                this.setExternal((EObject)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setLocal(null);
                return;
            }
            case 1: {
                this.setExternal(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.local != null;
            }
            case 1: {
                return this.external != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

