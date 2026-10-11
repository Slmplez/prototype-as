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
 */
package autosar40.commonstructure.timing.timingconstraint.executiontimeconstraint.impl;

import autosar40.commonstructure.internalbehavior.ExecutableEntity;
import autosar40.commonstructure.timing.timingconstraint.executiontimeconstraint.ExecutionTimeConstraint;
import autosar40.commonstructure.timing.timingconstraint.executiontimeconstraint.ExecutionTimeTypeEnum;
import autosar40.commonstructure.timing.timingconstraint.executiontimeconstraint.ExecutiontimeconstraintPackage;
import autosar40.commonstructure.timing.timingconstraint.impl.TimingConstraintImpl;
import autosar40.genericstructure.generaltemplateclasses.multidimensionaltime.MultidimensionalTime;
import autosar40.swcomponent.composition.instancerefs.ComponentInCompositionInstanceRef;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class ExecutionTimeConstraintImpl
extends TimingConstraintImpl
implements ExecutionTimeConstraint,
IReferringClass {
    protected ComponentInCompositionInstanceRef component;
    protected ExecutableEntity executable;
    protected static final ExecutionTimeTypeEnum EXECUTION_TIME_TYPE_EDEFAULT = ExecutionTimeTypeEnum.NET;
    protected ExecutionTimeTypeEnum executionTimeType = EXECUTION_TIME_TYPE_EDEFAULT;
    protected boolean executionTimeTypeESet;
    protected MultidimensionalTime maximum;
    protected MultidimensionalTime minimum;

    protected ExecutionTimeConstraintImpl() {
    }

    protected EClass eStaticClass() {
        return ExecutiontimeconstraintPackage.Literals.EXECUTION_TIME_CONSTRAINT;
    }

    public ComponentInCompositionInstanceRef getComponent() {
        return this.component;
    }

    public NotificationChain basicSetComponent(ComponentInCompositionInstanceRef newComponent, NotificationChain msgs) {
        ComponentInCompositionInstanceRef oldComponent = this.component;
        this.component = newComponent;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldComponent, (Object)newComponent);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setComponent(ComponentInCompositionInstanceRef newComponent) {
        if (newComponent != this.component) {
            NotificationChain msgs = null;
            if (this.component != null) {
                msgs = ((InternalEObject)this.component).eInverseRemove((InternalEObject)this, -21, null, msgs);
            }
            if (newComponent != null) {
                msgs = ((InternalEObject)newComponent).eInverseAdd((InternalEObject)this, -21, null, msgs);
            }
            if ((msgs = this.basicSetComponent(newComponent, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)newComponent, (Object)newComponent));
        }
    }

    public ExecutableEntity getExecutable() {
        if (this.executable != null && this.executable.eIsProxy()) {
            InternalEObject oldExecutable = (InternalEObject)this.executable;
            this.executable = (ExecutableEntity)this.eResolveProxy(oldExecutable);
            if (this.executable != oldExecutable && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 21, (Object)oldExecutable, (Object)this.executable));
            }
        }
        return this.executable;
    }

    public ExecutableEntity basicGetExecutable() {
        return this.executable;
    }

    public void setExecutable(ExecutableEntity newExecutable) {
        ExecutableEntity oldExecutable = this.executable;
        this.executable = newExecutable;
        AutosarObjectUtil.setDest((EObject)this, (int)21, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldExecutable, (Object)this.executable));
        }
    }

    public ExecutionTimeTypeEnum getExecutionTimeType() {
        return this.executionTimeType;
    }

    public void setExecutionTimeType(ExecutionTimeTypeEnum newExecutionTimeType) {
        ExecutionTimeTypeEnum oldExecutionTimeType = this.executionTimeType;
        this.executionTimeType = newExecutionTimeType == null ? EXECUTION_TIME_TYPE_EDEFAULT : newExecutionTimeType;
        boolean oldExecutionTimeTypeESet = this.executionTimeTypeESet;
        this.executionTimeTypeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldExecutionTimeType, (Object)this.executionTimeType, !oldExecutionTimeTypeESet));
        }
    }

    public void unsetExecutionTimeType() {
        ExecutionTimeTypeEnum oldExecutionTimeType = this.executionTimeType;
        boolean oldExecutionTimeTypeESet = this.executionTimeTypeESet;
        this.executionTimeType = EXECUTION_TIME_TYPE_EDEFAULT;
        this.executionTimeTypeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 22, (Object)oldExecutionTimeType, (Object)EXECUTION_TIME_TYPE_EDEFAULT, oldExecutionTimeTypeESet));
        }
    }

    public boolean isSetExecutionTimeType() {
        return this.executionTimeTypeESet;
    }

    public MultidimensionalTime getMaximum() {
        return this.maximum;
    }

    public NotificationChain basicSetMaximum(MultidimensionalTime newMaximum, NotificationChain msgs) {
        MultidimensionalTime oldMaximum = this.maximum;
        this.maximum = newMaximum;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldMaximum, (Object)newMaximum);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setMaximum(MultidimensionalTime newMaximum) {
        if (newMaximum != this.maximum) {
            NotificationChain msgs = null;
            if (this.maximum != null) {
                msgs = ((InternalEObject)this.maximum).eInverseRemove((InternalEObject)this, -24, null, msgs);
            }
            if (newMaximum != null) {
                msgs = ((InternalEObject)newMaximum).eInverseAdd((InternalEObject)this, -24, null, msgs);
            }
            if ((msgs = this.basicSetMaximum(newMaximum, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)newMaximum, (Object)newMaximum));
        }
    }

    public MultidimensionalTime getMinimum() {
        return this.minimum;
    }

    public NotificationChain basicSetMinimum(MultidimensionalTime newMinimum, NotificationChain msgs) {
        MultidimensionalTime oldMinimum = this.minimum;
        this.minimum = newMinimum;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldMinimum, (Object)newMinimum);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setMinimum(MultidimensionalTime newMinimum) {
        if (newMinimum != this.minimum) {
            NotificationChain msgs = null;
            if (this.minimum != null) {
                msgs = ((InternalEObject)this.minimum).eInverseRemove((InternalEObject)this, -25, null, msgs);
            }
            if (newMinimum != null) {
                msgs = ((InternalEObject)newMinimum).eInverseAdd((InternalEObject)this, -25, null, msgs);
            }
            if ((msgs = this.basicSetMinimum(newMinimum, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)newMinimum, (Object)newMinimum));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 20: {
                return this.basicSetComponent(null, msgs);
            }
            case 23: {
                return this.basicSetMaximum(null, msgs);
            }
            case 24: {
                return this.basicSetMinimum(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 20: {
                return this.getComponent();
            }
            case 21: {
                if (resolve) {
                    return this.getExecutable();
                }
                return this.basicGetExecutable();
            }
            case 22: {
                return this.getExecutionTimeType();
            }
            case 23: {
                return this.getMaximum();
            }
            case 24: {
                return this.getMinimum();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 20: {
                this.setComponent((ComponentInCompositionInstanceRef)newValue);
                return;
            }
            case 21: {
                this.setExecutable((ExecutableEntity)newValue);
                return;
            }
            case 22: {
                this.setExecutionTimeType((ExecutionTimeTypeEnum)((Object)newValue));
                return;
            }
            case 23: {
                this.setMaximum((MultidimensionalTime)newValue);
                return;
            }
            case 24: {
                this.setMinimum((MultidimensionalTime)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 20: {
                this.setComponent(null);
                return;
            }
            case 21: {
                this.setExecutable(null);
                return;
            }
            case 22: {
                this.unsetExecutionTimeType();
                return;
            }
            case 23: {
                this.setMaximum(null);
                return;
            }
            case 24: {
                this.setMinimum(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 20: {
                return this.component != null;
            }
            case 21: {
                return this.executable != null;
            }
            case 22: {
                return this.isSetExecutionTimeType();
            }
            case 23: {
                return this.maximum != null;
            }
            case 24: {
                return this.minimum != null;
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

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (executionTimeType: ");
        if (this.executionTimeTypeESet) {
            result.append((Object)this.executionTimeType);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

