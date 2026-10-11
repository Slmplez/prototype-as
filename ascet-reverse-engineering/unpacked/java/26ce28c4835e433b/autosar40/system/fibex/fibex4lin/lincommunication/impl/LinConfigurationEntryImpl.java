/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.system.fibex.fibex4lin.lincommunication.impl;

import autosar40.system.fibex.fibex4lin.lincommunication.LinConfigurationEntry;
import autosar40.system.fibex.fibex4lin.lincommunication.LincommunicationPackage;
import autosar40.system.fibex.fibex4lin.lincommunication.impl.ScheduleTableEntryImpl;
import autosar40.system.fibex.fibex4lin.lintopology.LinSlave;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public abstract class LinConfigurationEntryImpl
extends ScheduleTableEntryImpl
implements LinConfigurationEntry,
IReferringClass {
    protected LinSlave assignedController;

    protected LinConfigurationEntryImpl() {
    }

    protected EClass eStaticClass() {
        return LincommunicationPackage.Literals.LIN_CONFIGURATION_ENTRY;
    }

    public LinSlave getAssignedController() {
        if (this.assignedController != null && this.assignedController.eIsProxy()) {
            InternalEObject oldAssignedController = (InternalEObject)this.assignedController;
            this.assignedController = (LinSlave)this.eResolveProxy(oldAssignedController);
            if (this.assignedController != oldAssignedController && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 8, (Object)oldAssignedController, (Object)this.assignedController));
            }
        }
        return this.assignedController;
    }

    public LinSlave basicGetAssignedController() {
        return this.assignedController;
    }

    public void setAssignedController(LinSlave newAssignedController) {
        LinSlave oldAssignedController = this.assignedController;
        this.assignedController = newAssignedController;
        AutosarObjectUtil.setDest((EObject)this, (int)8, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldAssignedController, (Object)this.assignedController));
        }
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 8: {
                if (resolve) {
                    return this.getAssignedController();
                }
                return this.basicGetAssignedController();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 8: {
                this.setAssignedController((LinSlave)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 8: {
                this.setAssignedController(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 8: {
                return this.assignedController != null;
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

