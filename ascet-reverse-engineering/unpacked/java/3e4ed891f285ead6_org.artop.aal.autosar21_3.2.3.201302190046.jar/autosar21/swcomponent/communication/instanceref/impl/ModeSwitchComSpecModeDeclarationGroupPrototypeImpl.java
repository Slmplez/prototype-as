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
package autosar21.swcomponent.communication.instanceref.impl;

import autosar21.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar21.swcomponent.communication.ModeSwitchComSpec;
import autosar21.swcomponent.communication.instanceref.InstancerefPackage;
import autosar21.swcomponent.communication.instanceref.ModeSwitchComSpecModeDeclarationGroupPrototype;
import autosar21.swcomponent.components.PPortPrototype;
import autosar21.swcomponent.portinterface.ModeDeclarationGroupPrototype;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class ModeSwitchComSpecModeDeclarationGroupPrototypeImpl
extends ARObjectImpl
implements ModeSwitchComSpecModeDeclarationGroupPrototype,
IReferringClass {
    protected PPortPrototype pPortPrototype;
    protected ModeDeclarationGroupPrototype modeDeclarationGroupPrototype;

    protected ModeSwitchComSpecModeDeclarationGroupPrototypeImpl() {
    }

    protected EClass eStaticClass() {
        return InstancerefPackage.Literals.MODE_SWITCH_COM_SPEC_MODE_DECLARATION_GROUP_PROTOTYPE;
    }

    public ModeSwitchComSpec getModeSwitchComSpec() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (ModeSwitchComSpec)this.eContainer();
    }

    public NotificationChain basicSetModeSwitchComSpec(ModeSwitchComSpec newModeSwitchComSpec, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newModeSwitchComSpec, 4, msgs);
        return msgs;
    }

    public void setModeSwitchComSpec(ModeSwitchComSpec newModeSwitchComSpec) {
        if (newModeSwitchComSpec != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newModeSwitchComSpec != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newModeSwitchComSpec)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newModeSwitchComSpec != null) {
                msgs = ((InternalEObject)newModeSwitchComSpec).eInverseAdd((InternalEObject)this, 5, ModeSwitchComSpec.class, msgs);
            }
            if ((msgs = this.basicSetModeSwitchComSpec(newModeSwitchComSpec, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newModeSwitchComSpec, (Object)newModeSwitchComSpec));
        }
    }

    public PPortPrototype getPPortPrototype() {
        if (this.pPortPrototype != null && this.pPortPrototype.eIsProxy()) {
            InternalEObject oldPPortPrototype = (InternalEObject)this.pPortPrototype;
            this.pPortPrototype = (PPortPrototype)this.eResolveProxy(oldPPortPrototype);
            if (this.pPortPrototype != oldPPortPrototype && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 5, (Object)oldPPortPrototype, (Object)this.pPortPrototype));
            }
        }
        return this.pPortPrototype;
    }

    public PPortPrototype basicGetPPortPrototype() {
        return this.pPortPrototype;
    }

    public void setPPortPrototype(PPortPrototype newPPortPrototype) {
        PPortPrototype oldPPortPrototype = this.pPortPrototype;
        this.pPortPrototype = newPPortPrototype;
        AutosarObjectUtil.setDest((EObject)this, (int)5, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldPPortPrototype, (Object)this.pPortPrototype));
        }
    }

    public ModeDeclarationGroupPrototype getModeDeclarationGroupPrototype() {
        if (this.modeDeclarationGroupPrototype != null && this.modeDeclarationGroupPrototype.eIsProxy()) {
            InternalEObject oldModeDeclarationGroupPrototype = (InternalEObject)this.modeDeclarationGroupPrototype;
            this.modeDeclarationGroupPrototype = (ModeDeclarationGroupPrototype)this.eResolveProxy(oldModeDeclarationGroupPrototype);
            if (this.modeDeclarationGroupPrototype != oldModeDeclarationGroupPrototype && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 6, (Object)oldModeDeclarationGroupPrototype, (Object)this.modeDeclarationGroupPrototype));
            }
        }
        return this.modeDeclarationGroupPrototype;
    }

    public ModeDeclarationGroupPrototype basicGetModeDeclarationGroupPrototype() {
        return this.modeDeclarationGroupPrototype;
    }

    public void setModeDeclarationGroupPrototype(ModeDeclarationGroupPrototype newModeDeclarationGroupPrototype) {
        ModeDeclarationGroupPrototype oldModeDeclarationGroupPrototype = this.modeDeclarationGroupPrototype;
        this.modeDeclarationGroupPrototype = newModeDeclarationGroupPrototype;
        AutosarObjectUtil.setDest((EObject)this, (int)6, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldModeDeclarationGroupPrototype, (Object)this.modeDeclarationGroupPrototype));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetModeSwitchComSpec((ModeSwitchComSpec)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetModeSwitchComSpec(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 5, ModeSwitchComSpec.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getModeSwitchComSpec();
            }
            case 5: {
                if (resolve) {
                    return this.getPPortPrototype();
                }
                return this.basicGetPPortPrototype();
            }
            case 6: {
                if (resolve) {
                    return this.getModeDeclarationGroupPrototype();
                }
                return this.basicGetModeDeclarationGroupPrototype();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setModeSwitchComSpec((ModeSwitchComSpec)newValue);
                return;
            }
            case 5: {
                this.setPPortPrototype((PPortPrototype)newValue);
                return;
            }
            case 6: {
                this.setModeDeclarationGroupPrototype((ModeDeclarationGroupPrototype)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setModeSwitchComSpec(null);
                return;
            }
            case 5: {
                this.setPPortPrototype(null);
                return;
            }
            case 6: {
                this.setModeDeclarationGroupPrototype(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getModeSwitchComSpec() != null;
            }
            case 5: {
                return this.pPortPrototype != null;
            }
            case 6: {
                return this.modeDeclarationGroupPrototype != null;
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

