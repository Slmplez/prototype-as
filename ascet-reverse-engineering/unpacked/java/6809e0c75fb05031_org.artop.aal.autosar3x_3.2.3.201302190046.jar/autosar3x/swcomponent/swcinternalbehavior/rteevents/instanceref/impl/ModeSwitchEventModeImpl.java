/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gmodedeclaration.GModeDeclaration
 *  gautosar.gcommonstructure.gmodedeclaration.GModeDeclarationGroupPrototype
 *  gautosar.gswcomponents.gcomponents.GRPortPrototype
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GRModeInAtomicSwcIRef
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
package autosar3x.swcomponent.swcinternalbehavior.rteevents.instanceref.impl;

import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar3x.swcomponent.components.RPortPrototype;
import autosar3x.swcomponent.modedeclaration.ModeDeclaration;
import autosar3x.swcomponent.portinterface.ModeDeclarationGroupPrototype;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.ModeSwitchEvent;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.instanceref.InstancerefPackage;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.instanceref.ModeSwitchEventMode;
import gautosar.gcommonstructure.gmodedeclaration.GModeDeclaration;
import gautosar.gcommonstructure.gmodedeclaration.GModeDeclarationGroupPrototype;
import gautosar.gswcomponents.gcomponents.GRPortPrototype;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GRModeInAtomicSwcIRef;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ModeSwitchEventModeImpl
extends ARObjectImpl
implements ModeSwitchEventMode,
IReferringClass {
    protected RPortPrototype rPortPrototype;
    protected ModeDeclarationGroupPrototype modeDeclarationGroupPrototype;
    protected ModeDeclaration modeDeclaration;

    protected ModeSwitchEventModeImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return InstancerefPackage.Literals.MODE_SWITCH_EVENT_MODE;
    }

    public GRPortPrototype gGetContextRPort() {
        return this.getRPortPrototype();
    }

    public void gSetContextRPort(GRPortPrototype newGContextRPort) {
        this.setRPortPrototype((RPortPrototype)newGContextRPort);
    }

    public GModeDeclarationGroupPrototype gGetContextModeDeclarationGroupPrototype() {
        return this.getModeDeclarationGroupPrototype();
    }

    public void gSetContextModeDeclarationGroupPrototype(GModeDeclarationGroupPrototype newGContextModeDeclarationGroupPrototype) {
        this.setModeDeclarationGroupPrototype((ModeDeclarationGroupPrototype)newGContextModeDeclarationGroupPrototype);
    }

    public GModeDeclaration gGetTargetModeDeclaration() {
        return this.getModeDeclaration();
    }

    public void gSetTargetModeDeclaration(GModeDeclaration newGTargetModeDeclaration) {
        this.setModeDeclaration((ModeDeclaration)newGTargetModeDeclaration);
    }

    @Override
    public ModeSwitchEvent getModeSwitchEvent() {
        if (this.eContainerFeatureID() != 7) {
            return null;
        }
        return (ModeSwitchEvent)this.eContainer();
    }

    public NotificationChain basicSetModeSwitchEvent(ModeSwitchEvent newModeSwitchEvent, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newModeSwitchEvent, 7, msgs);
        return msgs;
    }

    @Override
    public void setModeSwitchEvent(ModeSwitchEvent newModeSwitchEvent) {
        if (newModeSwitchEvent != this.eInternalContainer() || this.eContainerFeatureID() != 7 && newModeSwitchEvent != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newModeSwitchEvent)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newModeSwitchEvent != null) {
                msgs = ((InternalEObject)newModeSwitchEvent).eInverseAdd((InternalEObject)this, 22, ModeSwitchEvent.class, msgs);
            }
            if ((msgs = this.basicSetModeSwitchEvent(newModeSwitchEvent, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)newModeSwitchEvent, (Object)newModeSwitchEvent));
        }
    }

    @Override
    public RPortPrototype getRPortPrototype() {
        if (this.rPortPrototype != null && this.rPortPrototype.eIsProxy()) {
            InternalEObject oldRPortPrototype = (InternalEObject)this.rPortPrototype;
            this.rPortPrototype = (RPortPrototype)this.eResolveProxy(oldRPortPrototype);
            if (this.rPortPrototype != oldRPortPrototype && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 8, (Object)oldRPortPrototype, (Object)this.rPortPrototype));
            }
        }
        return this.rPortPrototype;
    }

    public RPortPrototype basicGetRPortPrototype() {
        return this.rPortPrototype;
    }

    @Override
    public void setRPortPrototype(RPortPrototype newRPortPrototype) {
        RPortPrototype oldRPortPrototype = this.rPortPrototype;
        this.rPortPrototype = newRPortPrototype;
        AutosarObjectUtil.setDest((EObject)this, (int)8, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldRPortPrototype, (Object)this.rPortPrototype));
        }
    }

    @Override
    public ModeDeclarationGroupPrototype getModeDeclarationGroupPrototype() {
        if (this.modeDeclarationGroupPrototype != null && this.modeDeclarationGroupPrototype.eIsProxy()) {
            InternalEObject oldModeDeclarationGroupPrototype = (InternalEObject)this.modeDeclarationGroupPrototype;
            this.modeDeclarationGroupPrototype = (ModeDeclarationGroupPrototype)this.eResolveProxy(oldModeDeclarationGroupPrototype);
            if (this.modeDeclarationGroupPrototype != oldModeDeclarationGroupPrototype && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 9, (Object)oldModeDeclarationGroupPrototype, (Object)this.modeDeclarationGroupPrototype));
            }
        }
        return this.modeDeclarationGroupPrototype;
    }

    public ModeDeclarationGroupPrototype basicGetModeDeclarationGroupPrototype() {
        return this.modeDeclarationGroupPrototype;
    }

    @Override
    public void setModeDeclarationGroupPrototype(ModeDeclarationGroupPrototype newModeDeclarationGroupPrototype) {
        ModeDeclarationGroupPrototype oldModeDeclarationGroupPrototype = this.modeDeclarationGroupPrototype;
        this.modeDeclarationGroupPrototype = newModeDeclarationGroupPrototype;
        AutosarObjectUtil.setDest((EObject)this, (int)9, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldModeDeclarationGroupPrototype, (Object)this.modeDeclarationGroupPrototype));
        }
    }

    @Override
    public ModeDeclaration getModeDeclaration() {
        if (this.modeDeclaration != null && this.modeDeclaration.eIsProxy()) {
            InternalEObject oldModeDeclaration = (InternalEObject)this.modeDeclaration;
            this.modeDeclaration = (ModeDeclaration)this.eResolveProxy(oldModeDeclaration);
            if (this.modeDeclaration != oldModeDeclaration && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 10, (Object)oldModeDeclaration, (Object)this.modeDeclaration));
            }
        }
        return this.modeDeclaration;
    }

    public ModeDeclaration basicGetModeDeclaration() {
        return this.modeDeclaration;
    }

    @Override
    public void setModeDeclaration(ModeDeclaration newModeDeclaration) {
        ModeDeclaration oldModeDeclaration = this.modeDeclaration;
        this.modeDeclaration = newModeDeclaration;
        AutosarObjectUtil.setDest((EObject)this, (int)10, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldModeDeclaration, (Object)this.modeDeclaration));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 7: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetModeSwitchEvent((ModeSwitchEvent)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 7: {
                return this.basicSetModeSwitchEvent(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 7: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 22, ModeSwitchEvent.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.gGetContextRPort();
            }
            case 5: {
                return this.gGetContextModeDeclarationGroupPrototype();
            }
            case 6: {
                return this.gGetTargetModeDeclaration();
            }
            case 7: {
                return this.getModeSwitchEvent();
            }
            case 8: {
                if (resolve) {
                    return this.getRPortPrototype();
                }
                return this.basicGetRPortPrototype();
            }
            case 9: {
                if (resolve) {
                    return this.getModeDeclarationGroupPrototype();
                }
                return this.basicGetModeDeclarationGroupPrototype();
            }
            case 10: {
                if (resolve) {
                    return this.getModeDeclaration();
                }
                return this.basicGetModeDeclaration();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.gSetContextRPort((GRPortPrototype)newValue);
                return;
            }
            case 5: {
                this.gSetContextModeDeclarationGroupPrototype((GModeDeclarationGroupPrototype)newValue);
                return;
            }
            case 6: {
                this.gSetTargetModeDeclaration((GModeDeclaration)newValue);
                return;
            }
            case 7: {
                this.setModeSwitchEvent((ModeSwitchEvent)newValue);
                return;
            }
            case 8: {
                this.setRPortPrototype((RPortPrototype)newValue);
                return;
            }
            case 9: {
                this.setModeDeclarationGroupPrototype((ModeDeclarationGroupPrototype)newValue);
                return;
            }
            case 10: {
                this.setModeDeclaration((ModeDeclaration)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.gSetContextRPort(null);
                return;
            }
            case 5: {
                this.gSetContextModeDeclarationGroupPrototype(null);
                return;
            }
            case 6: {
                this.gSetTargetModeDeclaration(null);
                return;
            }
            case 7: {
                this.setModeSwitchEvent(null);
                return;
            }
            case 8: {
                this.setRPortPrototype(null);
                return;
            }
            case 9: {
                this.setModeDeclarationGroupPrototype(null);
                return;
            }
            case 10: {
                this.setModeDeclaration(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.gGetContextRPort() != null;
            }
            case 5: {
                return this.gGetContextModeDeclarationGroupPrototype() != null;
            }
            case 6: {
                return this.gGetTargetModeDeclaration() != null;
            }
            case 7: {
                return this.getModeSwitchEvent() != null;
            }
            case 8: {
                return this.rPortPrototype != null;
            }
            case 9: {
                return this.modeDeclarationGroupPrototype != null;
            }
            case 10: {
                return this.modeDeclaration != null;
            }
        }
        return super.eIsSet(featureID);
    }

    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GRModeInAtomicSwcIRef.class) {
            switch (derivedFeatureID) {
                case 4: {
                    return 2;
                }
                case 5: {
                    return 3;
                }
                case 6: {
                    return 4;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == GRModeInAtomicSwcIRef.class) {
            switch (baseFeatureID) {
                case 2: {
                    return 4;
                }
                case 3: {
                    return 5;
                }
                case 4: {
                    return 6;
                }
            }
            return -1;
        }
        return super.eDerivedStructuralFeatureID(baseFeatureID, baseClass);
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

