/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar21.swcomponent.modedeclaration.impl;

import autosar21.genericstructure.infrastructure.identifiable.impl.IdentifiableImpl;
import autosar21.swcomponent.modedeclaration.ModeDeclaration;
import autosar21.swcomponent.modedeclaration.ModeDeclarationGroup;
import autosar21.swcomponent.modedeclaration.ModedeclarationPackage;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class ModeDeclarationImpl
extends IdentifiableImpl
implements ModeDeclaration {
    protected ModeDeclarationImpl() {
    }

    protected EClass eStaticClass() {
        return ModedeclarationPackage.Literals.MODE_DECLARATION;
    }

    public ModeDeclarationGroup getModeDeclarationGroup() {
        if (this.eContainerFeatureID() != 16) {
            return null;
        }
        return (ModeDeclarationGroup)this.eContainer();
    }

    public NotificationChain basicSetModeDeclarationGroup(ModeDeclarationGroup newModeDeclarationGroup, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newModeDeclarationGroup, 16, msgs);
        return msgs;
    }

    public void setModeDeclarationGroup(ModeDeclarationGroup newModeDeclarationGroup) {
        if (newModeDeclarationGroup != this.eInternalContainer() || this.eContainerFeatureID() != 16 && newModeDeclarationGroup != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newModeDeclarationGroup)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newModeDeclarationGroup != null) {
                msgs = ((InternalEObject)newModeDeclarationGroup).eInverseAdd((InternalEObject)this, 21, ModeDeclarationGroup.class, msgs);
            }
            if ((msgs = this.basicSetModeDeclarationGroup(newModeDeclarationGroup, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 16, (Object)newModeDeclarationGroup, (Object)newModeDeclarationGroup));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 16: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetModeDeclarationGroup((ModeDeclarationGroup)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 16: {
                return this.basicSetModeDeclarationGroup(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 16: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 21, ModeDeclarationGroup.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 16: {
                return this.getModeDeclarationGroup();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 16: {
                this.setModeDeclarationGroup((ModeDeclarationGroup)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 16: {
                this.setModeDeclarationGroup(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 16: {
                return this.getModeDeclarationGroup() != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

