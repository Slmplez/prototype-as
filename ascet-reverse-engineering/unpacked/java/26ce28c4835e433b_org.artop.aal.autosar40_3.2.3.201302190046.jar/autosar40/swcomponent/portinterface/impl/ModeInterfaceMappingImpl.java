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
package autosar40.swcomponent.portinterface.impl;

import autosar40.commonstructure.modedeclaration.ModeDeclarationGroupPrototypeMapping;
import autosar40.swcomponent.portinterface.ModeInterfaceMapping;
import autosar40.swcomponent.portinterface.PortinterfacePackage;
import autosar40.swcomponent.portinterface.impl.PortInterfaceMappingImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class ModeInterfaceMappingImpl
extends PortInterfaceMappingImpl
implements ModeInterfaceMapping {
    protected ModeDeclarationGroupPrototypeMapping modeMapping;

    protected ModeInterfaceMappingImpl() {
    }

    protected EClass eStaticClass() {
        return PortinterfacePackage.Literals.MODE_INTERFACE_MAPPING;
    }

    public ModeDeclarationGroupPrototypeMapping getModeMapping() {
        return this.modeMapping;
    }

    public NotificationChain basicSetModeMapping(ModeDeclarationGroupPrototypeMapping newModeMapping, NotificationChain msgs) {
        ModeDeclarationGroupPrototypeMapping oldModeMapping = this.modeMapping;
        this.modeMapping = newModeMapping;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldModeMapping, (Object)newModeMapping);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setModeMapping(ModeDeclarationGroupPrototypeMapping newModeMapping) {
        if (newModeMapping != this.modeMapping) {
            NotificationChain msgs = null;
            if (this.modeMapping != null) {
                msgs = ((InternalEObject)this.modeMapping).eInverseRemove((InternalEObject)this, 4, ModeDeclarationGroupPrototypeMapping.class, msgs);
            }
            if (newModeMapping != null) {
                msgs = ((InternalEObject)newModeMapping).eInverseAdd((InternalEObject)this, 4, ModeDeclarationGroupPrototypeMapping.class, msgs);
            }
            if ((msgs = this.basicSetModeMapping(newModeMapping, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)newModeMapping, (Object)newModeMapping));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 19: {
                if (this.modeMapping != null) {
                    msgs = ((InternalEObject)this.modeMapping).eInverseRemove((InternalEObject)this, -20, null, msgs);
                }
                return this.basicSetModeMapping((ModeDeclarationGroupPrototypeMapping)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 19: {
                return this.basicSetModeMapping(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 19: {
                return this.getModeMapping();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 19: {
                this.setModeMapping((ModeDeclarationGroupPrototypeMapping)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 19: {
                this.setModeMapping(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 19: {
                return this.modeMapping != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

