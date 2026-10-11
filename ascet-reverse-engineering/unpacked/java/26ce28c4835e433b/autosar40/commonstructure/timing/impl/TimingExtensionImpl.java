/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.commonstructure.timing.impl;

import autosar40.commonstructure.timing.TimingExtension;
import autosar40.commonstructure.timing.TimingPackage;
import autosar40.commonstructure.timing.timingconstraint.TimingConstraint;
import autosar40.commonstructure.timing.timingdescription.TimingDescription;
import autosar40.genericstructure.generaltemplateclasses.arpackage.impl.ARElementImpl;
import java.util.Collection;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class TimingExtensionImpl
extends ARElementImpl
implements TimingExtension {
    protected EList<TimingDescription> timingDescriptions;
    protected EList<TimingConstraint> timingGuarantees;
    protected EList<TimingConstraint> timingRequirements;

    protected TimingExtensionImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return TimingPackage.Literals.TIMING_EXTENSION;
    }

    @Override
    public EList<TimingDescription> getTimingDescriptions() {
        if (this.timingDescriptions == null) {
            this.timingDescriptions = new EObjectContainmentWithInverseEList(TimingDescription.class, (InternalEObject)this, 21, 18);
        }
        return this.timingDescriptions;
    }

    @Override
    public EList<TimingConstraint> getTimingGuarantees() {
        if (this.timingGuarantees == null) {
            this.timingGuarantees = new EObjectContainmentEList(TimingConstraint.class, (InternalEObject)this, 22);
        }
        return this.timingGuarantees;
    }

    @Override
    public EList<TimingConstraint> getTimingRequirements() {
        if (this.timingRequirements == null) {
            this.timingRequirements = new EObjectContainmentEList(TimingConstraint.class, (InternalEObject)this, 23);
        }
        return this.timingRequirements;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 21: {
                return ((InternalEList)this.getTimingDescriptions()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 21: {
                return ((InternalEList)this.getTimingDescriptions()).basicRemove((Object)otherEnd, msgs);
            }
            case 22: {
                return ((InternalEList)this.getTimingGuarantees()).basicRemove((Object)otherEnd, msgs);
            }
            case 23: {
                return ((InternalEList)this.getTimingRequirements()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 21: {
                return this.getTimingDescriptions();
            }
            case 22: {
                return this.getTimingGuarantees();
            }
            case 23: {
                return this.getTimingRequirements();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 21: {
                this.getTimingDescriptions().clear();
                this.getTimingDescriptions().addAll((Collection)newValue);
                return;
            }
            case 22: {
                this.getTimingGuarantees().clear();
                this.getTimingGuarantees().addAll((Collection)newValue);
                return;
            }
            case 23: {
                this.getTimingRequirements().clear();
                this.getTimingRequirements().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 21: {
                this.getTimingDescriptions().clear();
                return;
            }
            case 22: {
                this.getTimingGuarantees().clear();
                return;
            }
            case 23: {
                this.getTimingRequirements().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 21: {
                return this.timingDescriptions != null && !this.timingDescriptions.isEmpty();
            }
            case 22: {
                return this.timingGuarantees != null && !this.timingGuarantees.isEmpty();
            }
            case 23: {
                return this.timingRequirements != null && !this.timingRequirements.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

