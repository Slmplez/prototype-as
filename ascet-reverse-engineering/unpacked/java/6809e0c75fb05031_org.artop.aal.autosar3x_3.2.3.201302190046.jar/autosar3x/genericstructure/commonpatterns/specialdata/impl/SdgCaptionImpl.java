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
package autosar3x.genericstructure.commonpatterns.specialdata.impl;

import autosar3x.genericstructure.commonpatterns.specialdata.Sdg;
import autosar3x.genericstructure.commonpatterns.specialdata.SdgCaption;
import autosar3x.genericstructure.commonpatterns.specialdata.SpecialdataPackage;
import autosar3x.genericstructure.infrastructure.identifiable.impl.IdentifiableImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class SdgCaptionImpl
extends IdentifiableImpl
implements SdgCaption {
    protected SdgCaptionImpl() {
    }

    protected EClass eStaticClass() {
        return SpecialdataPackage.Literals.SDG_CAPTION;
    }

    public Sdg getSdg() {
        if (this.eContainerFeatureID() != 17) {
            return null;
        }
        return (Sdg)this.eContainer();
    }

    public NotificationChain basicSetSdg(Sdg newSdg, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newSdg, 17, msgs);
        return msgs;
    }

    public void setSdg(Sdg newSdg) {
        if (newSdg != this.eInternalContainer() || this.eContainerFeatureID() != 17 && newSdg != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newSdg)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newSdg != null) {
                msgs = ((InternalEObject)newSdg).eInverseAdd((InternalEObject)this, 5, Sdg.class, msgs);
            }
            if ((msgs = this.basicSetSdg(newSdg, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 17, (Object)newSdg, (Object)newSdg));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 17: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetSdg((Sdg)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 17: {
                return this.basicSetSdg(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 17: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 5, Sdg.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 17: {
                return this.getSdg();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 17: {
                this.setSdg((Sdg)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 17: {
                this.setSdg(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 17: {
                return this.getSdg() != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

