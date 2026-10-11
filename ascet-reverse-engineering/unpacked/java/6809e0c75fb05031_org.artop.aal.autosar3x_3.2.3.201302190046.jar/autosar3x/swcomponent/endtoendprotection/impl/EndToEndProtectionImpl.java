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
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar3x.swcomponent.endtoendprotection.impl;

import autosar3x.genericstructure.infrastructure.identifiable.impl.IdentifiableImpl;
import autosar3x.swcomponent.endtoendprotection.EndToEndDescription;
import autosar3x.swcomponent.endtoendprotection.EndToEndProtection;
import autosar3x.swcomponent.endtoendprotection.EndToEndProtectionDataElementPrototype;
import autosar3x.swcomponent.endtoendprotection.EndToEndProtectionSet;
import autosar3x.swcomponent.endtoendprotection.EndtoendprotectionPackage;
import autosar3x.system.endtoendprotection.EndToEndProtectionISignalIPdu;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EndToEndProtectionImpl
extends IdentifiableImpl
implements EndToEndProtection {
    protected EndToEndDescription endToEndProfile;
    protected EList<EndToEndProtectionDataElementPrototype> endToEndProtectionDataElementPrototypes;
    protected EList<EndToEndProtectionISignalIPdu> endToEndProtectionISignalIPdus;

    protected EndToEndProtectionImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return EndtoendprotectionPackage.Literals.END_TO_END_PROTECTION;
    }

    @Override
    public EndToEndProtectionSet getEndToEndProtectionSet() {
        if (this.eContainerFeatureID() != 17) {
            return null;
        }
        return (EndToEndProtectionSet)this.eContainer();
    }

    public NotificationChain basicSetEndToEndProtectionSet(EndToEndProtectionSet newEndToEndProtectionSet, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newEndToEndProtectionSet, 17, msgs);
        return msgs;
    }

    @Override
    public void setEndToEndProtectionSet(EndToEndProtectionSet newEndToEndProtectionSet) {
        if (newEndToEndProtectionSet != this.eInternalContainer() || this.eContainerFeatureID() != 17 && newEndToEndProtectionSet != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newEndToEndProtectionSet)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newEndToEndProtectionSet != null) {
                msgs = ((InternalEObject)newEndToEndProtectionSet).eInverseAdd((InternalEObject)this, 19, EndToEndProtectionSet.class, msgs);
            }
            if ((msgs = this.basicSetEndToEndProtectionSet(newEndToEndProtectionSet, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 17, (Object)newEndToEndProtectionSet, (Object)newEndToEndProtectionSet));
        }
    }

    @Override
    public EndToEndDescription getEndToEndProfile() {
        return this.endToEndProfile;
    }

    public NotificationChain basicSetEndToEndProfile(EndToEndDescription newEndToEndProfile, NotificationChain msgs) {
        EndToEndDescription oldEndToEndProfile = this.endToEndProfile;
        this.endToEndProfile = newEndToEndProfile;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 18, (Object)oldEndToEndProfile, (Object)newEndToEndProfile);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setEndToEndProfile(EndToEndDescription newEndToEndProfile) {
        if (newEndToEndProfile != this.endToEndProfile) {
            NotificationChain msgs = null;
            if (this.endToEndProfile != null) {
                msgs = ((InternalEObject)this.endToEndProfile).eInverseRemove((InternalEObject)this, 4, EndToEndDescription.class, msgs);
            }
            if (newEndToEndProfile != null) {
                msgs = ((InternalEObject)newEndToEndProfile).eInverseAdd((InternalEObject)this, 4, EndToEndDescription.class, msgs);
            }
            if ((msgs = this.basicSetEndToEndProfile(newEndToEndProfile, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)newEndToEndProfile, (Object)newEndToEndProfile));
        }
    }

    @Override
    public EList<EndToEndProtectionDataElementPrototype> getEndToEndProtectionDataElementPrototypes() {
        if (this.endToEndProtectionDataElementPrototypes == null) {
            this.endToEndProtectionDataElementPrototypes = new EObjectContainmentWithInverseEList(EndToEndProtectionDataElementPrototype.class, (InternalEObject)this, 19, 4);
        }
        return this.endToEndProtectionDataElementPrototypes;
    }

    @Override
    public EList<EndToEndProtectionISignalIPdu> getEndToEndProtectionISignalIPdus() {
        if (this.endToEndProtectionISignalIPdus == null) {
            this.endToEndProtectionISignalIPdus = new EObjectContainmentWithInverseEList(EndToEndProtectionISignalIPdu.class, (InternalEObject)this, 20, 4);
        }
        return this.endToEndProtectionISignalIPdus;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 17: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetEndToEndProtectionSet((EndToEndProtectionSet)otherEnd, msgs);
            }
            case 18: {
                if (this.endToEndProfile != null) {
                    msgs = ((InternalEObject)this.endToEndProfile).eInverseRemove((InternalEObject)this, -19, null, msgs);
                }
                return this.basicSetEndToEndProfile((EndToEndDescription)otherEnd, msgs);
            }
            case 19: {
                return ((InternalEList)this.getEndToEndProtectionDataElementPrototypes()).basicAdd((Object)otherEnd, msgs);
            }
            case 20: {
                return ((InternalEList)this.getEndToEndProtectionISignalIPdus()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 17: {
                return this.basicSetEndToEndProtectionSet(null, msgs);
            }
            case 18: {
                return this.basicSetEndToEndProfile(null, msgs);
            }
            case 19: {
                return ((InternalEList)this.getEndToEndProtectionDataElementPrototypes()).basicRemove((Object)otherEnd, msgs);
            }
            case 20: {
                return ((InternalEList)this.getEndToEndProtectionISignalIPdus()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 17: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 19, EndToEndProtectionSet.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 17: {
                return this.getEndToEndProtectionSet();
            }
            case 18: {
                return this.getEndToEndProfile();
            }
            case 19: {
                return this.getEndToEndProtectionDataElementPrototypes();
            }
            case 20: {
                return this.getEndToEndProtectionISignalIPdus();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 17: {
                this.setEndToEndProtectionSet((EndToEndProtectionSet)newValue);
                return;
            }
            case 18: {
                this.setEndToEndProfile((EndToEndDescription)newValue);
                return;
            }
            case 19: {
                this.getEndToEndProtectionDataElementPrototypes().clear();
                this.getEndToEndProtectionDataElementPrototypes().addAll((Collection)newValue);
                return;
            }
            case 20: {
                this.getEndToEndProtectionISignalIPdus().clear();
                this.getEndToEndProtectionISignalIPdus().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 17: {
                this.setEndToEndProtectionSet(null);
                return;
            }
            case 18: {
                this.setEndToEndProfile(null);
                return;
            }
            case 19: {
                this.getEndToEndProtectionDataElementPrototypes().clear();
                return;
            }
            case 20: {
                this.getEndToEndProtectionISignalIPdus().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 17: {
                return this.getEndToEndProtectionSet() != null;
            }
            case 18: {
                return this.endToEndProfile != null;
            }
            case 19: {
                return this.endToEndProtectionDataElementPrototypes != null && !this.endToEndProtectionDataElementPrototypes.isEmpty();
            }
            case 20: {
                return this.endToEndProtectionISignalIPdus != null && !this.endToEndProtectionISignalIPdus.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

