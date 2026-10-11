/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar21.genericstructure.commonpatterns.specialdata.impl;

import autosar21.genericstructure.commonpatterns.specialdata.Sd;
import autosar21.genericstructure.commonpatterns.specialdata.Sdg;
import autosar21.genericstructure.commonpatterns.specialdata.SdgContents;
import autosar21.genericstructure.commonpatterns.specialdata.SpecialdataPackage;
import autosar21.genericstructure.infrastructure.impl.ARObjectImpl;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SdgContentsImpl
extends ARObjectImpl
implements SdgContents {
    protected EList<Sd> sds;
    protected EList<Sdg> sdgs;

    protected SdgContentsImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return SpecialdataPackage.Literals.SDG_CONTENTS;
    }

    @Override
    public Sdg getSdg() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (Sdg)this.eContainer();
    }

    public NotificationChain basicSetSdg(Sdg newSdg, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newSdg, 4, msgs);
        return msgs;
    }

    @Override
    public void setSdg(Sdg newSdg) {
        if (newSdg != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newSdg != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newSdg)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newSdg != null) {
                msgs = ((InternalEObject)newSdg).eInverseAdd((InternalEObject)this, 6, Sdg.class, msgs);
            }
            if ((msgs = this.basicSetSdg(newSdg, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newSdg, (Object)newSdg));
        }
    }

    @Override
    public EList<Sd> getSds() {
        if (this.sds == null) {
            this.sds = new EObjectContainmentWithInverseEList(Sd.class, (InternalEObject)this, 5, 5);
        }
        return this.sds;
    }

    @Override
    public EList<Sdg> getSdgs() {
        if (this.sdgs == null) {
            this.sdgs = new EObjectContainmentEList(Sdg.class, (InternalEObject)this, 6);
        }
        return this.sdgs;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetSdg((Sdg)otherEnd, msgs);
            }
            case 5: {
                return ((InternalEList)this.getSds()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetSdg(null, msgs);
            }
            case 5: {
                return ((InternalEList)this.getSds()).basicRemove((Object)otherEnd, msgs);
            }
            case 6: {
                return ((InternalEList)this.getSdgs()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 6, Sdg.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getSdg();
            }
            case 5: {
                return this.getSds();
            }
            case 6: {
                return this.getSdgs();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setSdg((Sdg)newValue);
                return;
            }
            case 5: {
                this.getSds().clear();
                this.getSds().addAll((Collection)newValue);
                return;
            }
            case 6: {
                this.getSdgs().clear();
                this.getSdgs().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setSdg(null);
                return;
            }
            case 5: {
                this.getSds().clear();
                return;
            }
            case 6: {
                this.getSdgs().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getSdg() != null;
            }
            case 5: {
                return this.sds != null && !this.sds.isEmpty();
            }
            case 6: {
                return this.sdgs != null && !this.sdgs.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

