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
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.swcomponent.measurementandcalibration.interpolationroutinemappingset.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.swcomponent.datatype.recordlayout.SwRecordLayout;
import autosar40.swcomponent.measurementandcalibration.interpolationroutinemappingset.InterpolationRoutine;
import autosar40.swcomponent.measurementandcalibration.interpolationroutinemappingset.InterpolationRoutineMapping;
import autosar40.swcomponent.measurementandcalibration.interpolationroutinemappingset.InterpolationRoutineMappingSet;
import autosar40.swcomponent.measurementandcalibration.interpolationroutinemappingset.InterpolationroutinemappingsetPackage;
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
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class InterpolationRoutineMappingImpl
extends ARObjectImpl
implements InterpolationRoutineMapping,
IReferringClass {
    protected EList<InterpolationRoutine> interpolationRoutines;
    protected SwRecordLayout swRecordLayout;

    protected InterpolationRoutineMappingImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return InterpolationroutinemappingsetPackage.Literals.INTERPOLATION_ROUTINE_MAPPING;
    }

    @Override
    public InterpolationRoutineMappingSet getInterpolationRoutineMappingSet() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (InterpolationRoutineMappingSet)this.eContainer();
    }

    public NotificationChain basicSetInterpolationRoutineMappingSet(InterpolationRoutineMappingSet newInterpolationRoutineMappingSet, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newInterpolationRoutineMappingSet, 4, msgs);
        return msgs;
    }

    @Override
    public void setInterpolationRoutineMappingSet(InterpolationRoutineMappingSet newInterpolationRoutineMappingSet) {
        if (newInterpolationRoutineMappingSet != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newInterpolationRoutineMappingSet != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newInterpolationRoutineMappingSet)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newInterpolationRoutineMappingSet != null) {
                msgs = ((InternalEObject)newInterpolationRoutineMappingSet).eInverseAdd((InternalEObject)this, 21, InterpolationRoutineMappingSet.class, msgs);
            }
            if ((msgs = this.basicSetInterpolationRoutineMappingSet(newInterpolationRoutineMappingSet, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newInterpolationRoutineMappingSet, (Object)newInterpolationRoutineMappingSet));
        }
    }

    @Override
    public EList<InterpolationRoutine> getInterpolationRoutines() {
        if (this.interpolationRoutines == null) {
            this.interpolationRoutines = new EObjectContainmentWithInverseEList(InterpolationRoutine.class, (InternalEObject)this, 5, 4);
        }
        return this.interpolationRoutines;
    }

    @Override
    public SwRecordLayout getSwRecordLayout() {
        if (this.swRecordLayout != null && this.swRecordLayout.eIsProxy()) {
            InternalEObject oldSwRecordLayout = (InternalEObject)this.swRecordLayout;
            this.swRecordLayout = (SwRecordLayout)this.eResolveProxy(oldSwRecordLayout);
            if (this.swRecordLayout != oldSwRecordLayout && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 6, (Object)oldSwRecordLayout, (Object)this.swRecordLayout));
            }
        }
        return this.swRecordLayout;
    }

    public SwRecordLayout basicGetSwRecordLayout() {
        return this.swRecordLayout;
    }

    @Override
    public void setSwRecordLayout(SwRecordLayout newSwRecordLayout) {
        SwRecordLayout oldSwRecordLayout = this.swRecordLayout;
        this.swRecordLayout = newSwRecordLayout;
        AutosarObjectUtil.setDest((EObject)this, (int)6, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldSwRecordLayout, (Object)this.swRecordLayout));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetInterpolationRoutineMappingSet((InterpolationRoutineMappingSet)otherEnd, msgs);
            }
            case 5: {
                return ((InternalEList)this.getInterpolationRoutines()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetInterpolationRoutineMappingSet(null, msgs);
            }
            case 5: {
                return ((InternalEList)this.getInterpolationRoutines()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 21, InterpolationRoutineMappingSet.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getInterpolationRoutineMappingSet();
            }
            case 5: {
                return this.getInterpolationRoutines();
            }
            case 6: {
                if (resolve) {
                    return this.getSwRecordLayout();
                }
                return this.basicGetSwRecordLayout();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setInterpolationRoutineMappingSet((InterpolationRoutineMappingSet)newValue);
                return;
            }
            case 5: {
                this.getInterpolationRoutines().clear();
                this.getInterpolationRoutines().addAll((Collection)newValue);
                return;
            }
            case 6: {
                this.setSwRecordLayout((SwRecordLayout)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setInterpolationRoutineMappingSet(null);
                return;
            }
            case 5: {
                this.getInterpolationRoutines().clear();
                return;
            }
            case 6: {
                this.setSwRecordLayout(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getInterpolationRoutineMappingSet() != null;
            }
            case 5: {
                return this.interpolationRoutines != null && !this.interpolationRoutines.isEmpty();
            }
            case 6: {
                return this.swRecordLayout != null;
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

