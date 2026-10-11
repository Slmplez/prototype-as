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
package com.etas.amd620.core.ComponentMain.impl;

import com.etas.amd620.core.ComponentMain.ComponentMainPackage;
import com.etas.amd620.core.ComponentMain.ExternalMappingObjectT;
import com.etas.amd620.core.ComponentMain.MappingItemT;
import com.etas.amd620.core.ComponentMain.SourceObjectType;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class ExternalMappingObjectTImpl
extends MinimalEObjectImpl.Container
implements ExternalMappingObjectT {
    protected SourceObjectType sourceObject;
    protected MappingItemT targetObject;

    protected ExternalMappingObjectTImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentMainPackage.Literals.EXTERNAL_MAPPING_OBJECT_T;
    }

    @Override
    public SourceObjectType getSourceObject() {
        return this.sourceObject;
    }

    public NotificationChain basicSetSourceObject(SourceObjectType newSourceObject, NotificationChain msgs) {
        SourceObjectType oldSourceObject = this.sourceObject;
        this.sourceObject = newSourceObject;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldSourceObject, (Object)newSourceObject);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setSourceObject(SourceObjectType newSourceObject) {
        if (newSourceObject != this.sourceObject) {
            NotificationChain msgs = null;
            if (this.sourceObject != null) {
                msgs = ((InternalEObject)this.sourceObject).eInverseRemove((InternalEObject)this, -1, null, msgs);
            }
            if (newSourceObject != null) {
                msgs = ((InternalEObject)newSourceObject).eInverseAdd((InternalEObject)this, -1, null, msgs);
            }
            if ((msgs = this.basicSetSourceObject(newSourceObject, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)newSourceObject, (Object)newSourceObject));
        }
    }

    @Override
    public MappingItemT getTargetObject() {
        return this.targetObject;
    }

    public NotificationChain basicSetTargetObject(MappingItemT newTargetObject, NotificationChain msgs) {
        MappingItemT oldTargetObject = this.targetObject;
        this.targetObject = newTargetObject;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldTargetObject, (Object)newTargetObject);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setTargetObject(MappingItemT newTargetObject) {
        if (newTargetObject != this.targetObject) {
            NotificationChain msgs = null;
            if (this.targetObject != null) {
                msgs = ((InternalEObject)this.targetObject).eInverseRemove((InternalEObject)this, -2, null, msgs);
            }
            if (newTargetObject != null) {
                msgs = ((InternalEObject)newTargetObject).eInverseAdd((InternalEObject)this, -2, null, msgs);
            }
            if ((msgs = this.basicSetTargetObject(newTargetObject, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)newTargetObject, (Object)newTargetObject));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return this.basicSetSourceObject(null, msgs);
            }
            case 1: {
                return this.basicSetTargetObject(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getSourceObject();
            }
            case 1: {
                return this.getTargetObject();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setSourceObject((SourceObjectType)newValue);
                return;
            }
            case 1: {
                this.setTargetObject((MappingItemT)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setSourceObject(null);
                return;
            }
            case 1: {
                this.setTargetObject(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.sourceObject != null;
            }
            case 1: {
                return this.targetObject != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

