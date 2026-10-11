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
package autosar40.commonstructure.modedeclaration.impl;

import autosar40.commonstructure.modedeclaration.ModeDeclarationGroupPrototype;
import autosar40.commonstructure.modedeclaration.ModeDeclarationGroupPrototypeMapping;
import autosar40.commonstructure.modedeclaration.ModedeclarationPackage;
import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.swcomponent.portinterface.ModeInterfaceMapping;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class ModeDeclarationGroupPrototypeMappingImpl
extends ARObjectImpl
implements ModeDeclarationGroupPrototypeMapping,
IReferringClass {
    protected ModeDeclarationGroupPrototype firstModeGroup;
    protected ModeDeclarationGroupPrototype secondModeGroup;

    protected ModeDeclarationGroupPrototypeMappingImpl() {
    }

    protected EClass eStaticClass() {
        return ModedeclarationPackage.Literals.MODE_DECLARATION_GROUP_PROTOTYPE_MAPPING;
    }

    public ModeInterfaceMapping getModeInterfaceMapping() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (ModeInterfaceMapping)this.eContainer();
    }

    public NotificationChain basicSetModeInterfaceMapping(ModeInterfaceMapping newModeInterfaceMapping, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newModeInterfaceMapping, 4, msgs);
        return msgs;
    }

    public void setModeInterfaceMapping(ModeInterfaceMapping newModeInterfaceMapping) {
        if (newModeInterfaceMapping != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newModeInterfaceMapping != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newModeInterfaceMapping)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newModeInterfaceMapping != null) {
                msgs = ((InternalEObject)newModeInterfaceMapping).eInverseAdd((InternalEObject)this, 19, ModeInterfaceMapping.class, msgs);
            }
            if ((msgs = this.basicSetModeInterfaceMapping(newModeInterfaceMapping, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newModeInterfaceMapping, (Object)newModeInterfaceMapping));
        }
    }

    public ModeDeclarationGroupPrototype getFirstModeGroup() {
        if (this.firstModeGroup != null && this.firstModeGroup.eIsProxy()) {
            InternalEObject oldFirstModeGroup = (InternalEObject)this.firstModeGroup;
            this.firstModeGroup = (ModeDeclarationGroupPrototype)this.eResolveProxy(oldFirstModeGroup);
            if (this.firstModeGroup != oldFirstModeGroup && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 5, (Object)oldFirstModeGroup, (Object)this.firstModeGroup));
            }
        }
        return this.firstModeGroup;
    }

    public ModeDeclarationGroupPrototype basicGetFirstModeGroup() {
        return this.firstModeGroup;
    }

    public void setFirstModeGroup(ModeDeclarationGroupPrototype newFirstModeGroup) {
        ModeDeclarationGroupPrototype oldFirstModeGroup = this.firstModeGroup;
        this.firstModeGroup = newFirstModeGroup;
        AutosarObjectUtil.setDest((EObject)this, (int)5, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldFirstModeGroup, (Object)this.firstModeGroup));
        }
    }

    public ModeDeclarationGroupPrototype getSecondModeGroup() {
        if (this.secondModeGroup != null && this.secondModeGroup.eIsProxy()) {
            InternalEObject oldSecondModeGroup = (InternalEObject)this.secondModeGroup;
            this.secondModeGroup = (ModeDeclarationGroupPrototype)this.eResolveProxy(oldSecondModeGroup);
            if (this.secondModeGroup != oldSecondModeGroup && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 6, (Object)oldSecondModeGroup, (Object)this.secondModeGroup));
            }
        }
        return this.secondModeGroup;
    }

    public ModeDeclarationGroupPrototype basicGetSecondModeGroup() {
        return this.secondModeGroup;
    }

    public void setSecondModeGroup(ModeDeclarationGroupPrototype newSecondModeGroup) {
        ModeDeclarationGroupPrototype oldSecondModeGroup = this.secondModeGroup;
        this.secondModeGroup = newSecondModeGroup;
        AutosarObjectUtil.setDest((EObject)this, (int)6, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldSecondModeGroup, (Object)this.secondModeGroup));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetModeInterfaceMapping((ModeInterfaceMapping)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetModeInterfaceMapping(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 19, ModeInterfaceMapping.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getModeInterfaceMapping();
            }
            case 5: {
                if (resolve) {
                    return this.getFirstModeGroup();
                }
                return this.basicGetFirstModeGroup();
            }
            case 6: {
                if (resolve) {
                    return this.getSecondModeGroup();
                }
                return this.basicGetSecondModeGroup();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setModeInterfaceMapping((ModeInterfaceMapping)newValue);
                return;
            }
            case 5: {
                this.setFirstModeGroup((ModeDeclarationGroupPrototype)newValue);
                return;
            }
            case 6: {
                this.setSecondModeGroup((ModeDeclarationGroupPrototype)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setModeInterfaceMapping(null);
                return;
            }
            case 5: {
                this.setFirstModeGroup(null);
                return;
            }
            case 6: {
                this.setSecondModeGroup(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getModeInterfaceMapping() != null;
            }
            case 5: {
                return this.firstModeGroup != null;
            }
            case 6: {
                return this.secondModeGroup != null;
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

