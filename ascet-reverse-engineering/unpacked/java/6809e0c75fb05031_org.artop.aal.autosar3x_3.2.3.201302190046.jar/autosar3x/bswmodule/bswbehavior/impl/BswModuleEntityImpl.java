/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.EObjectResolvingReferringEList
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar3x.bswmodule.bswbehavior.impl;

import autosar3x.bswmodule.bswbehavior.BswBehavior;
import autosar3x.bswmodule.bswbehavior.BswModuleEntity;
import autosar3x.bswmodule.bswbehavior.BswSporadicEvent;
import autosar3x.bswmodule.bswbehavior.BswbehaviorPackage;
import autosar3x.bswmodule.bswinterfaces.BswModuleEntry;
import autosar3x.commonstructure.internalbehavior.ExclusiveArea;
import autosar3x.commonstructure.internalbehavior.impl.ExecutableEntityImpl;
import java.util.Collection;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.EObjectResolvingReferringEList;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class BswModuleEntityImpl
extends ExecutableEntityImpl
implements BswModuleEntity,
IReferringClass {
    protected EList<BswSporadicEvent> activationPoints;
    protected EList<BswModuleEntry> calledEntries;
    protected EList<ExclusiveArea> canEnterExclusiveAreas;
    protected EList<BswSporadicEvent> cancellationPoints;
    protected BswModuleEntry implementedEntry;

    protected BswModuleEntityImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return BswbehaviorPackage.Literals.BSW_MODULE_ENTITY;
    }

    @Override
    public BswBehavior getBswBehavior() {
        if (this.eContainerFeatureID() != 17) {
            return null;
        }
        return (BswBehavior)this.eContainer();
    }

    public NotificationChain basicSetBswBehavior(BswBehavior newBswBehavior, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newBswBehavior, 17, msgs);
        return msgs;
    }

    @Override
    public void setBswBehavior(BswBehavior newBswBehavior) {
        if (newBswBehavior != this.eInternalContainer() || this.eContainerFeatureID() != 17 && newBswBehavior != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newBswBehavior)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newBswBehavior != null) {
                msgs = ((InternalEObject)newBswBehavior).eInverseAdd((InternalEObject)this, 19, BswBehavior.class, msgs);
            }
            if ((msgs = this.basicSetBswBehavior(newBswBehavior, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 17, (Object)newBswBehavior, (Object)newBswBehavior));
        }
    }

    @Override
    public EList<BswSporadicEvent> getActivationPoints() {
        if (this.activationPoints == null) {
            this.activationPoints = new EObjectResolvingReferringEList(BswSporadicEvent.class, (InternalEObject)this, 18);
        }
        return this.activationPoints;
    }

    @Override
    public EList<BswModuleEntry> getCalledEntries() {
        if (this.calledEntries == null) {
            this.calledEntries = new EObjectResolvingReferringEList(BswModuleEntry.class, (InternalEObject)this, 19);
        }
        return this.calledEntries;
    }

    @Override
    public EList<ExclusiveArea> getCanEnterExclusiveAreas() {
        if (this.canEnterExclusiveAreas == null) {
            this.canEnterExclusiveAreas = new EObjectResolvingReferringEList(ExclusiveArea.class, (InternalEObject)this, 20);
        }
        return this.canEnterExclusiveAreas;
    }

    @Override
    public EList<BswSporadicEvent> getCancellationPoints() {
        if (this.cancellationPoints == null) {
            this.cancellationPoints = new EObjectResolvingReferringEList(BswSporadicEvent.class, (InternalEObject)this, 21);
        }
        return this.cancellationPoints;
    }

    @Override
    public BswModuleEntry getImplementedEntry() {
        if (this.implementedEntry != null && this.implementedEntry.eIsProxy()) {
            InternalEObject oldImplementedEntry = (InternalEObject)this.implementedEntry;
            this.implementedEntry = (BswModuleEntry)this.eResolveProxy(oldImplementedEntry);
            if (this.implementedEntry != oldImplementedEntry && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 22, (Object)oldImplementedEntry, (Object)this.implementedEntry));
            }
        }
        return this.implementedEntry;
    }

    public BswModuleEntry basicGetImplementedEntry() {
        return this.implementedEntry;
    }

    @Override
    public void setImplementedEntry(BswModuleEntry newImplementedEntry) {
        BswModuleEntry oldImplementedEntry = this.implementedEntry;
        this.implementedEntry = newImplementedEntry;
        AutosarObjectUtil.setDest((EObject)this, (int)22, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldImplementedEntry, (Object)this.implementedEntry));
        }
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 17: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetBswBehavior((BswBehavior)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 17: {
                return this.basicSetBswBehavior(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 17: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 19, BswBehavior.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 17: {
                return this.getBswBehavior();
            }
            case 18: {
                return this.getActivationPoints();
            }
            case 19: {
                return this.getCalledEntries();
            }
            case 20: {
                return this.getCanEnterExclusiveAreas();
            }
            case 21: {
                return this.getCancellationPoints();
            }
            case 22: {
                if (resolve) {
                    return this.getImplementedEntry();
                }
                return this.basicGetImplementedEntry();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 17: {
                this.setBswBehavior((BswBehavior)newValue);
                return;
            }
            case 18: {
                this.getActivationPoints().clear();
                this.getActivationPoints().addAll((Collection)newValue);
                return;
            }
            case 19: {
                this.getCalledEntries().clear();
                this.getCalledEntries().addAll((Collection)newValue);
                return;
            }
            case 20: {
                this.getCanEnterExclusiveAreas().clear();
                this.getCanEnterExclusiveAreas().addAll((Collection)newValue);
                return;
            }
            case 21: {
                this.getCancellationPoints().clear();
                this.getCancellationPoints().addAll((Collection)newValue);
                return;
            }
            case 22: {
                this.setImplementedEntry((BswModuleEntry)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 17: {
                this.setBswBehavior(null);
                return;
            }
            case 18: {
                this.getActivationPoints().clear();
                return;
            }
            case 19: {
                this.getCalledEntries().clear();
                return;
            }
            case 20: {
                this.getCanEnterExclusiveAreas().clear();
                return;
            }
            case 21: {
                this.getCancellationPoints().clear();
                return;
            }
            case 22: {
                this.setImplementedEntry(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 17: {
                return this.getBswBehavior() != null;
            }
            case 18: {
                return this.activationPoints != null && !this.activationPoints.isEmpty();
            }
            case 19: {
                return this.calledEntries != null && !this.calledEntries.isEmpty();
            }
            case 20: {
                return this.canEnterExclusiveAreas != null && !this.canEnterExclusiveAreas.isEmpty();
            }
            case 21: {
                return this.cancellationPoints != null && !this.cancellationPoints.isEmpty();
            }
            case 22: {
                return this.implementedEntry != null;
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

