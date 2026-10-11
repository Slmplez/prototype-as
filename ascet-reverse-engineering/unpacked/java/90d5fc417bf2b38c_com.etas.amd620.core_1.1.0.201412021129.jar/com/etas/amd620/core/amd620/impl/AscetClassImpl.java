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
package com.etas.amd620.core.amd620.impl;

import com.etas.amd620.core.ComponentData.ComponentDataType;
import com.etas.amd620.core.ComponentImplementation.ComponentImplementationType;
import com.etas.amd620.core.ComponentSpecification.SpecificationsType;
import com.etas.amd620.core.amd620.Amd620Package;
import com.etas.amd620.core.amd620.AscetClass;
import com.etas.amd620.core.amd620.DefaultConfiguration;
import com.etas.amd620.core.amd620.impl.AscetComponentImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class AscetClassImpl
extends AscetComponentImpl
implements AscetClass {
    protected ComponentDataType componentDataType;
    protected ComponentImplementationType componentImplementationType;
    protected SpecificationsType specificationsType;
    protected DefaultConfiguration defaultConfiguration;

    protected AscetClassImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return Amd620Package.Literals.ASCET_CLASS;
    }

    @Override
    public ComponentDataType getComponentDataType() {
        return this.componentDataType;
    }

    public NotificationChain basicSetComponentDataType(ComponentDataType newComponentDataType, NotificationChain msgs) {
        ComponentDataType oldComponentDataType = this.componentDataType;
        this.componentDataType = newComponentDataType;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldComponentDataType, (Object)newComponentDataType);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setComponentDataType(ComponentDataType newComponentDataType) {
        if (newComponentDataType != this.componentDataType) {
            NotificationChain msgs = null;
            if (this.componentDataType != null) {
                msgs = ((InternalEObject)this.componentDataType).eInverseRemove((InternalEObject)this, -2, null, msgs);
            }
            if (newComponentDataType != null) {
                msgs = ((InternalEObject)newComponentDataType).eInverseAdd((InternalEObject)this, -2, null, msgs);
            }
            if ((msgs = this.basicSetComponentDataType(newComponentDataType, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)newComponentDataType, (Object)newComponentDataType));
        }
    }

    @Override
    public ComponentImplementationType getComponentImplementationType() {
        return this.componentImplementationType;
    }

    public NotificationChain basicSetComponentImplementationType(ComponentImplementationType newComponentImplementationType, NotificationChain msgs) {
        ComponentImplementationType oldComponentImplementationType = this.componentImplementationType;
        this.componentImplementationType = newComponentImplementationType;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 2, (Object)oldComponentImplementationType, (Object)newComponentImplementationType);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setComponentImplementationType(ComponentImplementationType newComponentImplementationType) {
        if (newComponentImplementationType != this.componentImplementationType) {
            NotificationChain msgs = null;
            if (this.componentImplementationType != null) {
                msgs = ((InternalEObject)this.componentImplementationType).eInverseRemove((InternalEObject)this, -3, null, msgs);
            }
            if (newComponentImplementationType != null) {
                msgs = ((InternalEObject)newComponentImplementationType).eInverseAdd((InternalEObject)this, -3, null, msgs);
            }
            if ((msgs = this.basicSetComponentImplementationType(newComponentImplementationType, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, (Object)newComponentImplementationType, (Object)newComponentImplementationType));
        }
    }

    @Override
    public SpecificationsType getSpecificationsType() {
        return this.specificationsType;
    }

    public NotificationChain basicSetSpecificationsType(SpecificationsType newSpecificationsType, NotificationChain msgs) {
        SpecificationsType oldSpecificationsType = this.specificationsType;
        this.specificationsType = newSpecificationsType;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 3, (Object)oldSpecificationsType, (Object)newSpecificationsType);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setSpecificationsType(SpecificationsType newSpecificationsType) {
        if (newSpecificationsType != this.specificationsType) {
            NotificationChain msgs = null;
            if (this.specificationsType != null) {
                msgs = ((InternalEObject)this.specificationsType).eInverseRemove((InternalEObject)this, -4, null, msgs);
            }
            if (newSpecificationsType != null) {
                msgs = ((InternalEObject)newSpecificationsType).eInverseAdd((InternalEObject)this, -4, null, msgs);
            }
            if ((msgs = this.basicSetSpecificationsType(newSpecificationsType, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 3, (Object)newSpecificationsType, (Object)newSpecificationsType));
        }
    }

    @Override
    public DefaultConfiguration getDefaultConfiguration() {
        return this.defaultConfiguration;
    }

    public NotificationChain basicSetDefaultConfiguration(DefaultConfiguration newDefaultConfiguration, NotificationChain msgs) {
        DefaultConfiguration oldDefaultConfiguration = this.defaultConfiguration;
        this.defaultConfiguration = newDefaultConfiguration;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldDefaultConfiguration, (Object)newDefaultConfiguration);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setDefaultConfiguration(DefaultConfiguration newDefaultConfiguration) {
        if (newDefaultConfiguration != this.defaultConfiguration) {
            NotificationChain msgs = null;
            if (this.defaultConfiguration != null) {
                msgs = ((InternalEObject)this.defaultConfiguration).eInverseRemove((InternalEObject)this, -5, null, msgs);
            }
            if (newDefaultConfiguration != null) {
                msgs = ((InternalEObject)newDefaultConfiguration).eInverseAdd((InternalEObject)this, -5, null, msgs);
            }
            if ((msgs = this.basicSetDefaultConfiguration(newDefaultConfiguration, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newDefaultConfiguration, (Object)newDefaultConfiguration));
        }
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 1: {
                return this.basicSetComponentDataType(null, msgs);
            }
            case 2: {
                return this.basicSetComponentImplementationType(null, msgs);
            }
            case 3: {
                return this.basicSetSpecificationsType(null, msgs);
            }
            case 4: {
                return this.basicSetDefaultConfiguration(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 1: {
                return this.getComponentDataType();
            }
            case 2: {
                return this.getComponentImplementationType();
            }
            case 3: {
                return this.getSpecificationsType();
            }
            case 4: {
                return this.getDefaultConfiguration();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 1: {
                this.setComponentDataType((ComponentDataType)newValue);
                return;
            }
            case 2: {
                this.setComponentImplementationType((ComponentImplementationType)newValue);
                return;
            }
            case 3: {
                this.setSpecificationsType((SpecificationsType)newValue);
                return;
            }
            case 4: {
                this.setDefaultConfiguration((DefaultConfiguration)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 1: {
                this.setComponentDataType(null);
                return;
            }
            case 2: {
                this.setComponentImplementationType(null);
                return;
            }
            case 3: {
                this.setSpecificationsType(null);
                return;
            }
            case 4: {
                this.setDefaultConfiguration(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 1: {
                return this.componentDataType != null;
            }
            case 2: {
                return this.componentImplementationType != null;
            }
            case 3: {
                return this.specificationsType != null;
            }
            case 4: {
                return this.defaultConfiguration != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

