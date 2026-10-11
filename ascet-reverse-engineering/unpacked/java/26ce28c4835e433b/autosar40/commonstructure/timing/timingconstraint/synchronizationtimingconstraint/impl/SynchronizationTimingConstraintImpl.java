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
 */
package autosar40.commonstructure.timing.timingconstraint.synchronizationtimingconstraint.impl;

import autosar40.commonstructure.timing.timingconstraint.impl.TimingConstraintImpl;
import autosar40.commonstructure.timing.timingconstraint.synchronizationtimingconstraint.SynchronizationTimingConstraint;
import autosar40.commonstructure.timing.timingconstraint.synchronizationtimingconstraint.SynchronizationTypeEnum;
import autosar40.commonstructure.timing.timingconstraint.synchronizationtimingconstraint.SynchronizationtimingconstraintPackage;
import autosar40.commonstructure.timing.timingdescription.TimingDescriptionEventChain;
import autosar40.genericstructure.generaltemplateclasses.multidimensionaltime.MultidimensionalTime;
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

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SynchronizationTimingConstraintImpl
extends TimingConstraintImpl
implements SynchronizationTimingConstraint,
IReferringClass {
    protected EList<TimingDescriptionEventChain> scopes;
    protected static final SynchronizationTypeEnum SYNCHRONIZATION_CONSTRAINT_TYPE_EDEFAULT = SynchronizationTypeEnum.STIMULUS_SYNCHRONIZATION;
    protected SynchronizationTypeEnum synchronizationConstraintType = SYNCHRONIZATION_CONSTRAINT_TYPE_EDEFAULT;
    protected boolean synchronizationConstraintTypeESet;
    protected MultidimensionalTime tolerance;

    protected SynchronizationTimingConstraintImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return SynchronizationtimingconstraintPackage.Literals.SYNCHRONIZATION_TIMING_CONSTRAINT;
    }

    @Override
    public EList<TimingDescriptionEventChain> getScopes() {
        if (this.scopes == null) {
            this.scopes = new EObjectResolvingReferringEList(TimingDescriptionEventChain.class, (InternalEObject)this, 20);
        }
        return this.scopes;
    }

    @Override
    public SynchronizationTypeEnum getSynchronizationConstraintType() {
        return this.synchronizationConstraintType;
    }

    @Override
    public void setSynchronizationConstraintType(SynchronizationTypeEnum newSynchronizationConstraintType) {
        SynchronizationTypeEnum oldSynchronizationConstraintType = this.synchronizationConstraintType;
        this.synchronizationConstraintType = newSynchronizationConstraintType == null ? SYNCHRONIZATION_CONSTRAINT_TYPE_EDEFAULT : newSynchronizationConstraintType;
        boolean oldSynchronizationConstraintTypeESet = this.synchronizationConstraintTypeESet;
        this.synchronizationConstraintTypeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldSynchronizationConstraintType, (Object)this.synchronizationConstraintType, !oldSynchronizationConstraintTypeESet));
        }
    }

    @Override
    public void unsetSynchronizationConstraintType() {
        SynchronizationTypeEnum oldSynchronizationConstraintType = this.synchronizationConstraintType;
        boolean oldSynchronizationConstraintTypeESet = this.synchronizationConstraintTypeESet;
        this.synchronizationConstraintType = SYNCHRONIZATION_CONSTRAINT_TYPE_EDEFAULT;
        this.synchronizationConstraintTypeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 21, (Object)oldSynchronizationConstraintType, (Object)SYNCHRONIZATION_CONSTRAINT_TYPE_EDEFAULT, oldSynchronizationConstraintTypeESet));
        }
    }

    @Override
    public boolean isSetSynchronizationConstraintType() {
        return this.synchronizationConstraintTypeESet;
    }

    @Override
    public MultidimensionalTime getTolerance() {
        return this.tolerance;
    }

    public NotificationChain basicSetTolerance(MultidimensionalTime newTolerance, NotificationChain msgs) {
        MultidimensionalTime oldTolerance = this.tolerance;
        this.tolerance = newTolerance;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldTolerance, (Object)newTolerance);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setTolerance(MultidimensionalTime newTolerance) {
        if (newTolerance != this.tolerance) {
            NotificationChain msgs = null;
            if (this.tolerance != null) {
                msgs = ((InternalEObject)this.tolerance).eInverseRemove((InternalEObject)this, -23, null, msgs);
            }
            if (newTolerance != null) {
                msgs = ((InternalEObject)newTolerance).eInverseAdd((InternalEObject)this, -23, null, msgs);
            }
            if ((msgs = this.basicSetTolerance(newTolerance, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)newTolerance, (Object)newTolerance));
        }
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 22: {
                return this.basicSetTolerance(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 20: {
                return this.getScopes();
            }
            case 21: {
                return this.getSynchronizationConstraintType();
            }
            case 22: {
                return this.getTolerance();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 20: {
                this.getScopes().clear();
                this.getScopes().addAll((Collection)newValue);
                return;
            }
            case 21: {
                this.setSynchronizationConstraintType((SynchronizationTypeEnum)((Object)newValue));
                return;
            }
            case 22: {
                this.setTolerance((MultidimensionalTime)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 20: {
                this.getScopes().clear();
                return;
            }
            case 21: {
                this.unsetSynchronizationConstraintType();
                return;
            }
            case 22: {
                this.setTolerance(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 20: {
                return this.scopes != null && !this.scopes.isEmpty();
            }
            case 21: {
                return this.isSetSynchronizationConstraintType();
            }
            case 22: {
                return this.tolerance != null;
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

    @Override
    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (synchronizationConstraintType: ");
        if (this.synchronizationConstraintTypeESet) {
            result.append((Object)this.synchronizationConstraintType);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

