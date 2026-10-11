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
package autosar3x.system.fibex.fibex4lin.lincommunication.impl;

import autosar3x.genericstructure.infrastructure.identifiable.impl.IdentifiableImpl;
import autosar3x.system.fibex.fibex4lin.lincommunication.LinScheduleTable;
import autosar3x.system.fibex.fibex4lin.lincommunication.LincommunicationPackage;
import autosar3x.system.fibex.fibex4lin.lincommunication.RunMode;
import autosar3x.system.fibex.fibex4lin.lintopology.LinCluster;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class LinScheduleTableImpl
extends IdentifiableImpl
implements LinScheduleTable {
    protected static final Integer PRIORITY_EDEFAULT = new Integer(0);
    protected Integer priority = PRIORITY_EDEFAULT;
    protected boolean priorityESet;
    protected static final RunMode RUN_MODE_EDEFAULT = RunMode.RUN_CONTINUOUS;
    protected RunMode runMode = RUN_MODE_EDEFAULT;
    protected boolean runModeESet;

    protected LinScheduleTableImpl() {
    }

    protected EClass eStaticClass() {
        return LincommunicationPackage.Literals.LIN_SCHEDULE_TABLE;
    }

    public LinCluster getLinCluster() {
        if (this.eContainerFeatureID() != 17) {
            return null;
        }
        return (LinCluster)this.eContainer();
    }

    public NotificationChain basicSetLinCluster(LinCluster newLinCluster, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newLinCluster, 17, msgs);
        return msgs;
    }

    public void setLinCluster(LinCluster newLinCluster) {
        if (newLinCluster != this.eInternalContainer() || this.eContainerFeatureID() != 17 && newLinCluster != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newLinCluster)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newLinCluster != null) {
                msgs = ((InternalEObject)newLinCluster).eInverseAdd((InternalEObject)this, 27, LinCluster.class, msgs);
            }
            if ((msgs = this.basicSetLinCluster(newLinCluster, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 17, (Object)newLinCluster, (Object)newLinCluster));
        }
    }

    public Integer getPriority() {
        return this.priority;
    }

    public void setPriority(Integer newPriority) {
        Integer oldPriority = this.priority;
        this.priority = newPriority;
        boolean oldPriorityESet = this.priorityESet;
        this.priorityESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)oldPriority, (Object)this.priority, !oldPriorityESet));
        }
    }

    public void unsetPriority() {
        Integer oldPriority = this.priority;
        boolean oldPriorityESet = this.priorityESet;
        this.priority = PRIORITY_EDEFAULT;
        this.priorityESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 18, (Object)oldPriority, (Object)PRIORITY_EDEFAULT, oldPriorityESet));
        }
    }

    public boolean isSetPriority() {
        return this.priorityESet;
    }

    public RunMode getRunMode() {
        return this.runMode;
    }

    public void setRunMode(RunMode newRunMode) {
        RunMode oldRunMode = this.runMode;
        this.runMode = newRunMode == null ? RUN_MODE_EDEFAULT : newRunMode;
        boolean oldRunModeESet = this.runModeESet;
        this.runModeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldRunMode, (Object)this.runMode, !oldRunModeESet));
        }
    }

    public void unsetRunMode() {
        RunMode oldRunMode = this.runMode;
        boolean oldRunModeESet = this.runModeESet;
        this.runMode = RUN_MODE_EDEFAULT;
        this.runModeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 19, (Object)oldRunMode, (Object)RUN_MODE_EDEFAULT, oldRunModeESet));
        }
    }

    public boolean isSetRunMode() {
        return this.runModeESet;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 17: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetLinCluster((LinCluster)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 17: {
                return this.basicSetLinCluster(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 17: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 27, LinCluster.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 17: {
                return this.getLinCluster();
            }
            case 18: {
                return this.getPriority();
            }
            case 19: {
                return this.getRunMode();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 17: {
                this.setLinCluster((LinCluster)newValue);
                return;
            }
            case 18: {
                this.setPriority((Integer)newValue);
                return;
            }
            case 19: {
                this.setRunMode((RunMode)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 17: {
                this.setLinCluster(null);
                return;
            }
            case 18: {
                this.unsetPriority();
                return;
            }
            case 19: {
                this.unsetRunMode();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 17: {
                return this.getLinCluster() != null;
            }
            case 18: {
                return this.isSetPriority();
            }
            case 19: {
                return this.isSetRunMode();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (priority: ");
        if (this.priorityESet) {
            result.append(this.priority);
        } else {
            result.append("<unset>");
        }
        result.append(", runMode: ");
        if (this.runModeESet) {
            result.append((Object)this.runMode);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

