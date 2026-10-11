/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
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
package autosar40.bswmodule.bswbehavior.impl;

import autosar40.bswmodule.bswbehavior.BswInternalBehavior;
import autosar40.bswmodule.bswbehavior.BswInternalTriggeringPointRefConditional;
import autosar40.bswmodule.bswbehavior.BswModuleEntity;
import autosar40.bswmodule.bswbehavior.BswSchedulerNamePrefix;
import autosar40.bswmodule.bswbehavior.BswbehaviorPackage;
import autosar40.bswmodule.bswinterfaces.BswModuleEntry;
import autosar40.bswmodule.bswinterfaces.BswModuleEntryRefConditional;
import autosar40.commonstructure.internalbehavior.impl.ExecutableEntityImpl;
import autosar40.commonstructure.modedeclaration.ModeDeclarationGroupPrototypeRefConditional;
import autosar40.commonstructure.triggerdeclaration.TriggerRefConditional;
import autosar40.genericstructure.varianthandling.VariationPoint;
import java.util.Collection;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
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
public class BswModuleEntityImpl
extends ExecutableEntityImpl
implements BswModuleEntity,
IReferringClass {
    protected EList<ModeDeclarationGroupPrototypeRefConditional> accessedModeGroups;
    protected EList<BswInternalTriggeringPointRefConditional> activationPoints;
    protected EList<BswModuleEntryRefConditional> calledEntries;
    protected BswModuleEntry implementedEntry;
    protected EList<TriggerRefConditional> issuedTriggers;
    protected EList<ModeDeclarationGroupPrototypeRefConditional> managedModeGroups;
    protected BswSchedulerNamePrefix schedulerNamePrefix;
    protected VariationPoint variationPoint;

    protected BswModuleEntityImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return BswbehaviorPackage.Literals.BSW_MODULE_ENTITY;
    }

    @Override
    public BswInternalBehavior getBswInternalBehavior() {
        if (this.eContainerFeatureID() != 24) {
            return null;
        }
        return (BswInternalBehavior)this.eContainer();
    }

    public NotificationChain basicSetBswInternalBehavior(BswInternalBehavior newBswInternalBehavior, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newBswInternalBehavior, 24, msgs);
        return msgs;
    }

    @Override
    public void setBswInternalBehavior(BswInternalBehavior newBswInternalBehavior) {
        if (newBswInternalBehavior != this.eInternalContainer() || this.eContainerFeatureID() != 24 && newBswInternalBehavior != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newBswInternalBehavior)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newBswInternalBehavior != null) {
                msgs = ((InternalEObject)newBswInternalBehavior).eInverseAdd((InternalEObject)this, 27, BswInternalBehavior.class, msgs);
            }
            if ((msgs = this.basicSetBswInternalBehavior(newBswInternalBehavior, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)newBswInternalBehavior, (Object)newBswInternalBehavior));
        }
    }

    @Override
    public EList<ModeDeclarationGroupPrototypeRefConditional> getAccessedModeGroups() {
        if (this.accessedModeGroups == null) {
            this.accessedModeGroups = new EObjectContainmentEList(ModeDeclarationGroupPrototypeRefConditional.class, (InternalEObject)this, 25);
        }
        return this.accessedModeGroups;
    }

    @Override
    public EList<BswInternalTriggeringPointRefConditional> getActivationPoints() {
        if (this.activationPoints == null) {
            this.activationPoints = new EObjectContainmentWithInverseEList(BswInternalTriggeringPointRefConditional.class, (InternalEObject)this, 26, 4);
        }
        return this.activationPoints;
    }

    @Override
    public EList<BswModuleEntryRefConditional> getCalledEntries() {
        if (this.calledEntries == null) {
            this.calledEntries = new EObjectContainmentEList(BswModuleEntryRefConditional.class, (InternalEObject)this, 27);
        }
        return this.calledEntries;
    }

    @Override
    public BswModuleEntry getImplementedEntry() {
        if (this.implementedEntry != null && this.implementedEntry.eIsProxy()) {
            InternalEObject oldImplementedEntry = (InternalEObject)this.implementedEntry;
            this.implementedEntry = (BswModuleEntry)this.eResolveProxy(oldImplementedEntry);
            if (this.implementedEntry != oldImplementedEntry && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 28, (Object)oldImplementedEntry, (Object)this.implementedEntry));
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
        AutosarObjectUtil.setDest((EObject)this, (int)28, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 28, (Object)oldImplementedEntry, (Object)this.implementedEntry));
        }
    }

    @Override
    public EList<TriggerRefConditional> getIssuedTriggers() {
        if (this.issuedTriggers == null) {
            this.issuedTriggers = new EObjectContainmentWithInverseEList(TriggerRefConditional.class, (InternalEObject)this, 29, 4);
        }
        return this.issuedTriggers;
    }

    @Override
    public EList<ModeDeclarationGroupPrototypeRefConditional> getManagedModeGroups() {
        if (this.managedModeGroups == null) {
            this.managedModeGroups = new EObjectContainmentEList(ModeDeclarationGroupPrototypeRefConditional.class, (InternalEObject)this, 30);
        }
        return this.managedModeGroups;
    }

    @Override
    public BswSchedulerNamePrefix getSchedulerNamePrefix() {
        if (this.schedulerNamePrefix != null && this.schedulerNamePrefix.eIsProxy()) {
            InternalEObject oldSchedulerNamePrefix = (InternalEObject)this.schedulerNamePrefix;
            this.schedulerNamePrefix = (BswSchedulerNamePrefix)this.eResolveProxy(oldSchedulerNamePrefix);
            if (this.schedulerNamePrefix != oldSchedulerNamePrefix && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 31, (Object)oldSchedulerNamePrefix, (Object)this.schedulerNamePrefix));
            }
        }
        return this.schedulerNamePrefix;
    }

    public BswSchedulerNamePrefix basicGetSchedulerNamePrefix() {
        return this.schedulerNamePrefix;
    }

    @Override
    public void setSchedulerNamePrefix(BswSchedulerNamePrefix newSchedulerNamePrefix) {
        BswSchedulerNamePrefix oldSchedulerNamePrefix = this.schedulerNamePrefix;
        this.schedulerNamePrefix = newSchedulerNamePrefix;
        AutosarObjectUtil.setDest((EObject)this, (int)31, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 31, (Object)oldSchedulerNamePrefix, (Object)this.schedulerNamePrefix));
        }
    }

    @Override
    public VariationPoint getVariationPoint() {
        return this.variationPoint;
    }

    public NotificationChain basicSetVariationPoint(VariationPoint newVariationPoint, NotificationChain msgs) {
        VariationPoint oldVariationPoint = this.variationPoint;
        this.variationPoint = newVariationPoint;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 32, (Object)oldVariationPoint, (Object)newVariationPoint);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setVariationPoint(VariationPoint newVariationPoint) {
        if (newVariationPoint != this.variationPoint) {
            NotificationChain msgs = null;
            if (this.variationPoint != null) {
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -33, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -33, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 32, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 24: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetBswInternalBehavior((BswInternalBehavior)otherEnd, msgs);
            }
            case 26: {
                return ((InternalEList)this.getActivationPoints()).basicAdd((Object)otherEnd, msgs);
            }
            case 29: {
                return ((InternalEList)this.getIssuedTriggers()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 24: {
                return this.basicSetBswInternalBehavior(null, msgs);
            }
            case 25: {
                return ((InternalEList)this.getAccessedModeGroups()).basicRemove((Object)otherEnd, msgs);
            }
            case 26: {
                return ((InternalEList)this.getActivationPoints()).basicRemove((Object)otherEnd, msgs);
            }
            case 27: {
                return ((InternalEList)this.getCalledEntries()).basicRemove((Object)otherEnd, msgs);
            }
            case 29: {
                return ((InternalEList)this.getIssuedTriggers()).basicRemove((Object)otherEnd, msgs);
            }
            case 30: {
                return ((InternalEList)this.getManagedModeGroups()).basicRemove((Object)otherEnd, msgs);
            }
            case 32: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 24: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 27, BswInternalBehavior.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 24: {
                return this.getBswInternalBehavior();
            }
            case 25: {
                return this.getAccessedModeGroups();
            }
            case 26: {
                return this.getActivationPoints();
            }
            case 27: {
                return this.getCalledEntries();
            }
            case 28: {
                if (resolve) {
                    return this.getImplementedEntry();
                }
                return this.basicGetImplementedEntry();
            }
            case 29: {
                return this.getIssuedTriggers();
            }
            case 30: {
                return this.getManagedModeGroups();
            }
            case 31: {
                if (resolve) {
                    return this.getSchedulerNamePrefix();
                }
                return this.basicGetSchedulerNamePrefix();
            }
            case 32: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 24: {
                this.setBswInternalBehavior((BswInternalBehavior)newValue);
                return;
            }
            case 25: {
                this.getAccessedModeGroups().clear();
                this.getAccessedModeGroups().addAll((Collection)newValue);
                return;
            }
            case 26: {
                this.getActivationPoints().clear();
                this.getActivationPoints().addAll((Collection)newValue);
                return;
            }
            case 27: {
                this.getCalledEntries().clear();
                this.getCalledEntries().addAll((Collection)newValue);
                return;
            }
            case 28: {
                this.setImplementedEntry((BswModuleEntry)newValue);
                return;
            }
            case 29: {
                this.getIssuedTriggers().clear();
                this.getIssuedTriggers().addAll((Collection)newValue);
                return;
            }
            case 30: {
                this.getManagedModeGroups().clear();
                this.getManagedModeGroups().addAll((Collection)newValue);
                return;
            }
            case 31: {
                this.setSchedulerNamePrefix((BswSchedulerNamePrefix)newValue);
                return;
            }
            case 32: {
                this.setVariationPoint((VariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 24: {
                this.setBswInternalBehavior(null);
                return;
            }
            case 25: {
                this.getAccessedModeGroups().clear();
                return;
            }
            case 26: {
                this.getActivationPoints().clear();
                return;
            }
            case 27: {
                this.getCalledEntries().clear();
                return;
            }
            case 28: {
                this.setImplementedEntry(null);
                return;
            }
            case 29: {
                this.getIssuedTriggers().clear();
                return;
            }
            case 30: {
                this.getManagedModeGroups().clear();
                return;
            }
            case 31: {
                this.setSchedulerNamePrefix(null);
                return;
            }
            case 32: {
                this.setVariationPoint(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 24: {
                return this.getBswInternalBehavior() != null;
            }
            case 25: {
                return this.accessedModeGroups != null && !this.accessedModeGroups.isEmpty();
            }
            case 26: {
                return this.activationPoints != null && !this.activationPoints.isEmpty();
            }
            case 27: {
                return this.calledEntries != null && !this.calledEntries.isEmpty();
            }
            case 28: {
                return this.implementedEntry != null;
            }
            case 29: {
                return this.issuedTriggers != null && !this.issuedTriggers.isEmpty();
            }
            case 30: {
                return this.managedModeGroups != null && !this.managedModeGroups.isEmpty();
            }
            case 31: {
                return this.schedulerNamePrefix != null;
            }
            case 32: {
                return this.variationPoint != null;
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public void eSetReferringDest(int featureID, String dest) {
        AutosarObjectUtil.setDest((EObject)this, (int)featureID, (int)-1, (String)dest);
    }

    @Override
    public void eSetReferringDest(int featureID, int index, String dest) {
        AutosarObjectUtil.setDest((EObject)this, (int)featureID, (int)index, (String)dest);
    }

    @Override
    public String eGetReferringDest(int featureID) {
        return AutosarObjectUtil.getDest((EObject)this, (int)featureID, (int)-1);
    }

    @Override
    public String eGetReferringDest(int featureID, int index) {
        return AutosarObjectUtil.getDest((EObject)this, (int)featureID, (int)index);
    }
}

