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
package autosar3x.swcomponent.modedeclaration.instanceref.impl;

import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar3x.swcomponent.components.RPortPrototype;
import autosar3x.swcomponent.modedeclaration.ModeDeclaration;
import autosar3x.swcomponent.modedeclaration.ModeDisablingDependency;
import autosar3x.swcomponent.modedeclaration.instanceref.InstancerefPackage;
import autosar3x.swcomponent.modedeclaration.instanceref.ModeDisablingDependencyDependentOnMode;
import autosar3x.swcomponent.portinterface.ModeDeclarationGroupPrototype;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class ModeDisablingDependencyDependentOnModeImpl
extends ARObjectImpl
implements ModeDisablingDependencyDependentOnMode,
IReferringClass {
    protected RPortPrototype rPortPrototype;
    protected ModeDeclarationGroupPrototype modeDeclarationGroupPrototype;
    protected ModeDeclaration modeDeclaration;

    protected ModeDisablingDependencyDependentOnModeImpl() {
    }

    protected EClass eStaticClass() {
        return InstancerefPackage.Literals.MODE_DISABLING_DEPENDENCY_DEPENDENT_ON_MODE;
    }

    public ModeDisablingDependency getModeDisablingDependency() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (ModeDisablingDependency)this.eContainer();
    }

    public NotificationChain basicSetModeDisablingDependency(ModeDisablingDependency newModeDisablingDependency, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newModeDisablingDependency, 4, msgs);
        return msgs;
    }

    public void setModeDisablingDependency(ModeDisablingDependency newModeDisablingDependency) {
        if (newModeDisablingDependency != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newModeDisablingDependency != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newModeDisablingDependency)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newModeDisablingDependency != null) {
                msgs = ((InternalEObject)newModeDisablingDependency).eInverseAdd((InternalEObject)this, 5, ModeDisablingDependency.class, msgs);
            }
            if ((msgs = this.basicSetModeDisablingDependency(newModeDisablingDependency, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newModeDisablingDependency, (Object)newModeDisablingDependency));
        }
    }

    public RPortPrototype getRPortPrototype() {
        if (this.rPortPrototype != null && this.rPortPrototype.eIsProxy()) {
            InternalEObject oldRPortPrototype = (InternalEObject)this.rPortPrototype;
            this.rPortPrototype = (RPortPrototype)this.eResolveProxy(oldRPortPrototype);
            if (this.rPortPrototype != oldRPortPrototype && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 5, (Object)oldRPortPrototype, (Object)this.rPortPrototype));
            }
        }
        return this.rPortPrototype;
    }

    public RPortPrototype basicGetRPortPrototype() {
        return this.rPortPrototype;
    }

    public void setRPortPrototype(RPortPrototype newRPortPrototype) {
        RPortPrototype oldRPortPrototype = this.rPortPrototype;
        this.rPortPrototype = newRPortPrototype;
        AutosarObjectUtil.setDest((EObject)this, (int)5, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldRPortPrototype, (Object)this.rPortPrototype));
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

    public ModeDeclaration getModeDeclaration() {
        if (this.modeDeclaration != null && this.modeDeclaration.eIsProxy()) {
            InternalEObject oldModeDeclaration = (InternalEObject)this.modeDeclaration;
            this.modeDeclaration = (ModeDeclaration)this.eResolveProxy(oldModeDeclaration);
            if (this.modeDeclaration != oldModeDeclaration && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 7, (Object)oldModeDeclaration, (Object)this.modeDeclaration));
            }
        }
        return this.modeDeclaration;
    }

    public ModeDeclaration basicGetModeDeclaration() {
        return this.modeDeclaration;
    }

    public void setModeDeclaration(ModeDeclaration newModeDeclaration) {
        ModeDeclaration oldModeDeclaration = this.modeDeclaration;
        this.modeDeclaration = newModeDeclaration;
        AutosarObjectUtil.setDest((EObject)this, (int)7, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldModeDeclaration, (Object)this.modeDeclaration));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetModeDisablingDependency((ModeDisablingDependency)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetModeDisablingDependency(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 5, ModeDisablingDependency.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getModeDisablingDependency();
            }
            case 5: {
                if (resolve) {
                    return this.getRPortPrototype();
                }
                return this.basicGetRPortPrototype();
            }
            case 6: {
                if (resolve) {
                    return this.getModeDeclarationGroupPrototype();
                }
                return this.basicGetModeDeclarationGroupPrototype();
            }
            case 7: {
                if (resolve) {
                    return this.getModeDeclaration();
                }
                return this.basicGetModeDeclaration();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setModeDisablingDependency((ModeDisablingDependency)newValue);
                return;
            }
            case 5: {
                this.setRPortPrototype((RPortPrototype)newValue);
                return;
            }
            case 6: {
                this.setModeDeclarationGroupPrototype((ModeDeclarationGroupPrototype)newValue);
                return;
            }
            case 7: {
                this.setModeDeclaration((ModeDeclaration)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setModeDisablingDependency(null);
                return;
            }
            case 5: {
                this.setRPortPrototype(null);
                return;
            }
            case 6: {
                this.setModeDeclarationGroupPrototype(null);
                return;
            }
            case 7: {
                this.setModeDeclaration(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getModeDisablingDependency() != null;
            }
            case 5: {
                return this.rPortPrototype != null;
            }
            case 6: {
                return this.modeDeclarationGroupPrototype != null;
            }
            case 7: {
                return this.modeDeclaration != null;
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

