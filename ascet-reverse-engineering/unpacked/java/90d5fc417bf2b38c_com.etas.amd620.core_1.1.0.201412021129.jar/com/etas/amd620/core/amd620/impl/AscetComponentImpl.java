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
 */
package com.etas.amd620.core.amd620.impl;

import com.etas.amd620.core.ComponentMain.ComponentMainType;
import com.etas.amd620.core.ComponentMain.ComponentTypeType;
import com.etas.amd620.core.ComponentMain.ItemBaseT;
import com.etas.amd620.core.ComponentMain.ItemT;
import com.etas.amd620.core.ComponentMain.SpecificationTypeType;
import com.etas.amd620.core.amd620.Amd620Package;
import com.etas.amd620.core.amd620.AscetComponent;
import com.etas.amd620.core.amd620.AscetComponentType;
import java.lang.reflect.InvocationTargetException;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class AscetComponentImpl
extends MinimalEObjectImpl.Container
implements AscetComponent {
    protected ComponentMainType componentMainType;

    protected AscetComponentImpl() {
    }

    protected EClass eStaticClass() {
        return Amd620Package.Literals.ASCET_COMPONENT;
    }

    @Override
    public ComponentMainType getComponentMainType() {
        return this.componentMainType;
    }

    public NotificationChain basicSetComponentMainType(ComponentMainType newComponentMainType, NotificationChain msgs) {
        ComponentMainType oldComponentMainType = this.componentMainType;
        this.componentMainType = newComponentMainType;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldComponentMainType, (Object)newComponentMainType);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setComponentMainType(ComponentMainType newComponentMainType) {
        if (newComponentMainType != this.componentMainType) {
            NotificationChain msgs = null;
            if (this.componentMainType != null) {
                msgs = ((InternalEObject)this.componentMainType).eInverseRemove((InternalEObject)this, -1, null, msgs);
            }
            if (newComponentMainType != null) {
                msgs = ((InternalEObject)newComponentMainType).eInverseAdd((InternalEObject)this, -1, null, msgs);
            }
            if ((msgs = this.basicSetComponentMainType(newComponentMainType, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)newComponentMainType, (Object)newComponentMainType));
        }
    }

    private ItemBaseT getItemBase() {
        ItemT itemBase = this.componentMainType.getComponent();
        if (this.componentMainType.getEnumeration() != null) {
            itemBase = this.componentMainType.getEnumeration();
        }
        return itemBase;
    }

    @Override
    public String getName() {
        ItemBaseT itemBase = this.getItemBase();
        return itemBase.getName();
    }

    @Override
    public String getSchemaVersion() {
        return this.componentMainType.getSchemaVersion();
    }

    @Override
    public String getQualifiedName() {
        ItemBaseT itemBase = this.getItemBase();
        String namespace = itemBase.getNameSpace();
        return String.valueOf(namespace) + "/" + this.getName();
    }

    private ComponentTypeType getComponentType() {
        if (this.componentMainType.getComponent() != null) {
            return this.componentMainType.getComponent().getComponentType();
        }
        if (this.componentMainType.getEnumeration() != null) {
            return this.componentMainType.getEnumeration().getComponentType();
        }
        if (this.componentMainType.getImage() != null) {
            return this.componentMainType.getImage().getComponentType();
        }
        if (this.componentMainType.getSignal() != null) {
            return this.componentMainType.getSignal().getComponentType();
        }
        if (this.componentMainType.getAsap2Item() != null) {
            return this.componentMainType.getAsap2Item().getComponentType();
        }
        if (this.componentMainType.getContainer() != null) {
            return this.componentMainType.getContainer().getComponentType();
        }
        if (this.componentMainType.getComponent() != null) {
            return this.componentMainType.getComponent().getComponentType();
        }
        if (this.componentMainType.getFolder() != null) {
            return this.componentMainType.getFolder().getComponentType();
        }
        if (this.componentMainType.getGenericComponent() != null) {
            return this.componentMainType.getGenericComponent().getComponentType();
        }
        if (this.componentMainType.getAtomicSoftwareComponent() != null) {
            return this.componentMainType.getAtomicSoftwareComponent().getComponentType();
        }
        if (this.componentMainType.getModeGroup() != null) {
            return this.componentMainType.getModeGroup().getComponentType();
        }
        return null;
    }

    private SpecificationTypeType getSpecificationType() {
        SpecificationTypeType specificationType = null;
        if (this.componentMainType.getComponent() != null) {
            specificationType = this.componentMainType.getComponent().getSpecificationType();
        }
        return specificationType;
    }

    private AscetComponentType getAscetComponentType() {
        AscetComponentType type = null;
        ComponentTypeType componentType = this.getComponentType();
        SpecificationTypeType specificationType = this.getSpecificationType();
        block0 : switch (componentType) {
            case ASCET_CLASS: {
                switch (specificationType) {
                    case BLOCK_DIAGRAM: {
                        type = AscetComponentType.CLASS_BD;
                        break block0;
                    }
                    case CCODE: {
                        type = AscetComponentType.CLASS_CCODE;
                        break block0;
                    }
                    case ESDL: {
                        type = AscetComponentType.CLASS_ESDL;
                        break block0;
                    }
                    case STATE_MACHINE: {
                        type = AscetComponentType.CLASS_STATEMACHINE;
                        break block0;
                    }
                }
                type = AscetComponentType.UNKNOWN;
                break;
            }
            case ASCET_MODULE: {
                switch (specificationType) {
                    case BLOCK_DIAGRAM: {
                        type = AscetComponentType.MODULE_BD;
                        break block0;
                    }
                    case CCODE: {
                        type = AscetComponentType.MODULE_CCODE;
                        break block0;
                    }
                    case ESDL: {
                        type = AscetComponentType.MODULE_ESDL;
                        break block0;
                    }
                }
                type = AscetComponentType.UNKNOWN;
                break;
            }
            case ASCET_PROJECT: {
                type = AscetComponentType.PROJECT;
                break;
            }
            case ASCET_ENUMERATION: {
                type = AscetComponentType.ENUM;
                break;
            }
            case ASCET_RECORD: {
                type = AscetComponentType.RECORD;
                break;
            }
            default: {
                type = AscetComponentType.UNKNOWN;
            }
        }
        return type;
    }

    @Override
    public AscetComponentType getType() {
        return this.getAscetComponentType();
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return this.basicSetComponentMainType(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getComponentMainType();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setComponentMainType((ComponentMainType)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setComponentMainType(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.componentMainType != null;
            }
        }
        return super.eIsSet(featureID);
    }

    public Object eInvoke(int operationID, EList<?> arguments) throws InvocationTargetException {
        switch (operationID) {
            case 0: {
                return this.getName();
            }
            case 1: {
                return this.getSchemaVersion();
            }
            case 2: {
                return this.getQualifiedName();
            }
            case 3: {
                return this.getType();
            }
        }
        return super.eInvoke(operationID, arguments);
    }
}

