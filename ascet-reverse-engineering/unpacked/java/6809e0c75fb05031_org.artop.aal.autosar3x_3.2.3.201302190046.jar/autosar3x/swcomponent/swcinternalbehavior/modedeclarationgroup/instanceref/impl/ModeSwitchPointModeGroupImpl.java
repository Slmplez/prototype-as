/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gmodedeclaration.GModeDeclarationGroupPrototype
 *  gautosar.gswcomponents.gcomponents.GPPortPrototype
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GModeGroupInAtomicSwcIRef
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GPModeGroupInAtomicSwcIRef
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
package autosar3x.swcomponent.swcinternalbehavior.modedeclarationgroup.instanceref.impl;

import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar3x.swcomponent.components.PPortPrototype;
import autosar3x.swcomponent.portinterface.ModeDeclarationGroupPrototype;
import autosar3x.swcomponent.swcinternalbehavior.modedeclarationgroup.ModeSwitchPoint;
import autosar3x.swcomponent.swcinternalbehavior.modedeclarationgroup.instanceref.InstancerefPackage;
import autosar3x.swcomponent.swcinternalbehavior.modedeclarationgroup.instanceref.ModeSwitchPointModeGroup;
import gautosar.gcommonstructure.gmodedeclaration.GModeDeclarationGroupPrototype;
import gautosar.gswcomponents.gcomponents.GPPortPrototype;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GModeGroupInAtomicSwcIRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GPModeGroupInAtomicSwcIRef;
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
public class ModeSwitchPointModeGroupImpl
extends ARObjectImpl
implements ModeSwitchPointModeGroup,
IReferringClass {
    protected PPortPrototype pPortPrototype;
    protected ModeDeclarationGroupPrototype modeDeclarationGroupPrototype;

    protected ModeSwitchPointModeGroupImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return InstancerefPackage.Literals.MODE_SWITCH_POINT_MODE_GROUP;
    }

    public GPPortPrototype gGetContextPPort() {
        return this.getPPortPrototype();
    }

    public void gSetContextPPort(GPPortPrototype newGContextPPort) {
        this.setPPortPrototype((PPortPrototype)newGContextPPort);
    }

    public GModeDeclarationGroupPrototype gGetTargetModeGroup() {
        return this.getModeDeclarationGroupPrototype();
    }

    public void gSetTargetModeGroup(GModeDeclarationGroupPrototype newGTargetModeGroup) {
        this.setModeDeclarationGroupPrototype((ModeDeclarationGroupPrototype)newGTargetModeGroup);
    }

    @Override
    public ModeSwitchPoint getModeSwitchPoint() {
        if (this.eContainerFeatureID() != 6) {
            return null;
        }
        return (ModeSwitchPoint)this.eContainer();
    }

    public NotificationChain basicSetModeSwitchPoint(ModeSwitchPoint newModeSwitchPoint, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newModeSwitchPoint, 6, msgs);
        return msgs;
    }

    @Override
    public void setModeSwitchPoint(ModeSwitchPoint newModeSwitchPoint) {
        if (newModeSwitchPoint != this.eInternalContainer() || this.eContainerFeatureID() != 6 && newModeSwitchPoint != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newModeSwitchPoint)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newModeSwitchPoint != null) {
                msgs = ((InternalEObject)newModeSwitchPoint).eInverseAdd((InternalEObject)this, 19, ModeSwitchPoint.class, msgs);
            }
            if ((msgs = this.basicSetModeSwitchPoint(newModeSwitchPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newModeSwitchPoint, (Object)newModeSwitchPoint));
        }
    }

    @Override
    public PPortPrototype getPPortPrototype() {
        if (this.pPortPrototype != null && this.pPortPrototype.eIsProxy()) {
            InternalEObject oldPPortPrototype = (InternalEObject)this.pPortPrototype;
            this.pPortPrototype = (PPortPrototype)this.eResolveProxy(oldPPortPrototype);
            if (this.pPortPrototype != oldPPortPrototype && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 7, (Object)oldPPortPrototype, (Object)this.pPortPrototype));
            }
        }
        return this.pPortPrototype;
    }

    public PPortPrototype basicGetPPortPrototype() {
        return this.pPortPrototype;
    }

    @Override
    public void setPPortPrototype(PPortPrototype newPPortPrototype) {
        PPortPrototype oldPPortPrototype = this.pPortPrototype;
        this.pPortPrototype = newPPortPrototype;
        AutosarObjectUtil.setDest((EObject)this, (int)7, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldPPortPrototype, (Object)this.pPortPrototype));
        }
    }

    @Override
    public ModeDeclarationGroupPrototype getModeDeclarationGroupPrototype() {
        if (this.modeDeclarationGroupPrototype != null && this.modeDeclarationGroupPrototype.eIsProxy()) {
            InternalEObject oldModeDeclarationGroupPrototype = (InternalEObject)this.modeDeclarationGroupPrototype;
            this.modeDeclarationGroupPrototype = (ModeDeclarationGroupPrototype)this.eResolveProxy(oldModeDeclarationGroupPrototype);
            if (this.modeDeclarationGroupPrototype != oldModeDeclarationGroupPrototype && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 8, (Object)oldModeDeclarationGroupPrototype, (Object)this.modeDeclarationGroupPrototype));
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
        AutosarObjectUtil.setDest((EObject)this, (int)8, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldModeDeclarationGroupPrototype, (Object)this.modeDeclarationGroupPrototype));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 6: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetModeSwitchPoint((ModeSwitchPoint)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 6: {
                return this.basicSetModeSwitchPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 6: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 19, ModeSwitchPoint.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.gGetContextPPort();
            }
            case 5: {
                return this.gGetTargetModeGroup();
            }
            case 6: {
                return this.getModeSwitchPoint();
            }
            case 7: {
                if (resolve) {
                    return this.getPPortPrototype();
                }
                return this.basicGetPPortPrototype();
            }
            case 8: {
                if (resolve) {
                    return this.getModeDeclarationGroupPrototype();
                }
                return this.basicGetModeDeclarationGroupPrototype();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.gSetContextPPort((GPPortPrototype)newValue);
                return;
            }
            case 5: {
                this.gSetTargetModeGroup((GModeDeclarationGroupPrototype)newValue);
                return;
            }
            case 6: {
                this.setModeSwitchPoint((ModeSwitchPoint)newValue);
                return;
            }
            case 7: {
                this.setPPortPrototype((PPortPrototype)newValue);
                return;
            }
            case 8: {
                this.setModeDeclarationGroupPrototype((ModeDeclarationGroupPrototype)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.gSetContextPPort(null);
                return;
            }
            case 5: {
                this.gSetTargetModeGroup(null);
                return;
            }
            case 6: {
                this.setModeSwitchPoint(null);
                return;
            }
            case 7: {
                this.setPPortPrototype(null);
                return;
            }
            case 8: {
                this.setModeDeclarationGroupPrototype(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.gGetContextPPort() != null;
            }
            case 5: {
                return this.gGetTargetModeGroup() != null;
            }
            case 6: {
                return this.getModeSwitchPoint() != null;
            }
            case 7: {
                return this.pPortPrototype != null;
            }
            case 8: {
                return this.modeDeclarationGroupPrototype != null;
            }
        }
        return super.eIsSet(featureID);
    }

    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GModeGroupInAtomicSwcIRef.class) {
            return -1;
        }
        if (baseClass == GPModeGroupInAtomicSwcIRef.class) {
            switch (derivedFeatureID) {
                case 4: {
                    return 2;
                }
                case 5: {
                    return 3;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == GModeGroupInAtomicSwcIRef.class) {
            return -1;
        }
        if (baseClass == GPModeGroupInAtomicSwcIRef.class) {
            switch (baseFeatureID) {
                case 2: {
                    return 4;
                }
                case 3: {
                    return 5;
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

