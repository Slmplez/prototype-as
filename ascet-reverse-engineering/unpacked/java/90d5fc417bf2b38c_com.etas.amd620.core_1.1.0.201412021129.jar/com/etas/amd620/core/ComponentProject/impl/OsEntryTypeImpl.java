/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.impl.MinimalEObjectImpl$Container
 */
package com.etas.amd620.core.ComponentProject.impl;

import com.etas.amd620.core.ComponentProject.ComponentProjectPackage;
import com.etas.amd620.core.ComponentProject.OsDescriptionType;
import com.etas.amd620.core.ComponentProject.OsEntryType;
import com.etas.amd620.core.ComponentProject.TargetKeyType;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class OsEntryTypeImpl
extends MinimalEObjectImpl.Container
implements OsEntryType {
    protected TargetKeyType targetKey;
    protected OsDescriptionType osDescription;

    protected OsEntryTypeImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentProjectPackage.Literals.OS_ENTRY_TYPE;
    }

    @Override
    public TargetKeyType getTargetKey() {
        return this.targetKey;
    }

    public NotificationChain basicSetTargetKey(TargetKeyType newTargetKey, NotificationChain msgs) {
        TargetKeyType oldTargetKey = this.targetKey;
        this.targetKey = newTargetKey;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldTargetKey, (Object)newTargetKey);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setTargetKey(TargetKeyType newTargetKey) {
        if (newTargetKey != this.targetKey) {
            NotificationChain msgs = null;
            if (this.targetKey != null) {
                msgs = ((InternalEObject)this.targetKey).eInverseRemove((InternalEObject)this, -1, null, msgs);
            }
            if (newTargetKey != null) {
                msgs = ((InternalEObject)newTargetKey).eInverseAdd((InternalEObject)this, -1, null, msgs);
            }
            if ((msgs = this.basicSetTargetKey(newTargetKey, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)newTargetKey, (Object)newTargetKey));
        }
    }

    @Override
    public OsDescriptionType getOsDescription() {
        return this.osDescription;
    }

    public NotificationChain basicSetOsDescription(OsDescriptionType newOsDescription, NotificationChain msgs) {
        OsDescriptionType oldOsDescription = this.osDescription;
        this.osDescription = newOsDescription;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldOsDescription, (Object)newOsDescription);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setOsDescription(OsDescriptionType newOsDescription) {
        if (newOsDescription != this.osDescription) {
            NotificationChain msgs = null;
            if (this.osDescription != null) {
                msgs = ((InternalEObject)this.osDescription).eInverseRemove((InternalEObject)this, -2, null, msgs);
            }
            if (newOsDescription != null) {
                msgs = ((InternalEObject)newOsDescription).eInverseAdd((InternalEObject)this, -2, null, msgs);
            }
            if ((msgs = this.basicSetOsDescription(newOsDescription, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)newOsDescription, (Object)newOsDescription));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return this.basicSetTargetKey(null, msgs);
            }
            case 1: {
                return this.basicSetOsDescription(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getTargetKey();
            }
            case 1: {
                return this.getOsDescription();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setTargetKey((TargetKeyType)newValue);
                return;
            }
            case 1: {
                this.setOsDescription((OsDescriptionType)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setTargetKey(null);
                return;
            }
            case 1: {
                this.setOsDescription(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.targetKey != null;
            }
            case 1: {
                return this.osDescription != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

