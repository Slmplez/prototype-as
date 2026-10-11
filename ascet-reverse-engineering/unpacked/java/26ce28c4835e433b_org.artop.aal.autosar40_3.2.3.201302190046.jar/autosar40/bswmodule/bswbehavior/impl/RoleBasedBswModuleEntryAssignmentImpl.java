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
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar40.bswmodule.bswbehavior.impl;

import autosar40.bswmodule.bswbehavior.BswServiceDependency;
import autosar40.bswmodule.bswbehavior.BswbehaviorPackage;
import autosar40.bswmodule.bswbehavior.RoleBasedBswModuleEntryAssignment;
import autosar40.bswmodule.bswinterfaces.BswModuleEntry;
import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class RoleBasedBswModuleEntryAssignmentImpl
extends ARObjectImpl
implements RoleBasedBswModuleEntryAssignment,
IReferringClass {
    protected BswModuleEntry assignedEntry;
    protected static final String ROLE_EDEFAULT = "";
    protected String role = "";
    protected boolean roleESet;

    protected RoleBasedBswModuleEntryAssignmentImpl() {
    }

    protected EClass eStaticClass() {
        return BswbehaviorPackage.Literals.ROLE_BASED_BSW_MODULE_ENTRY_ASSIGNMENT;
    }

    public BswServiceDependency getBswServiceDependency() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (BswServiceDependency)this.eContainer();
    }

    public NotificationChain basicSetBswServiceDependency(BswServiceDependency newBswServiceDependency, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newBswServiceDependency, 4, msgs);
        return msgs;
    }

    public void setBswServiceDependency(BswServiceDependency newBswServiceDependency) {
        if (newBswServiceDependency != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newBswServiceDependency != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newBswServiceDependency)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newBswServiceDependency != null) {
                msgs = ((InternalEObject)newBswServiceDependency).eInverseAdd((InternalEObject)this, 6, BswServiceDependency.class, msgs);
            }
            if ((msgs = this.basicSetBswServiceDependency(newBswServiceDependency, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newBswServiceDependency, (Object)newBswServiceDependency));
        }
    }

    public BswModuleEntry getAssignedEntry() {
        if (this.assignedEntry != null && this.assignedEntry.eIsProxy()) {
            InternalEObject oldAssignedEntry = (InternalEObject)this.assignedEntry;
            this.assignedEntry = (BswModuleEntry)this.eResolveProxy(oldAssignedEntry);
            if (this.assignedEntry != oldAssignedEntry && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 5, (Object)oldAssignedEntry, (Object)this.assignedEntry));
            }
        }
        return this.assignedEntry;
    }

    public BswModuleEntry basicGetAssignedEntry() {
        return this.assignedEntry;
    }

    public void setAssignedEntry(BswModuleEntry newAssignedEntry) {
        BswModuleEntry oldAssignedEntry = this.assignedEntry;
        this.assignedEntry = newAssignedEntry;
        AutosarObjectUtil.setDest((EObject)this, (int)5, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldAssignedEntry, (Object)this.assignedEntry));
        }
    }

    public String getRole() {
        return this.role;
    }

    public void setRole(String newRole) {
        String oldRole = this.role;
        this.role = newRole;
        boolean oldRoleESet = this.roleESet;
        this.roleESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldRole, (Object)this.role, !oldRoleESet));
        }
    }

    public void unsetRole() {
        String oldRole = this.role;
        boolean oldRoleESet = this.roleESet;
        this.role = ROLE_EDEFAULT;
        this.roleESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldRole, (Object)ROLE_EDEFAULT, oldRoleESet));
        }
    }

    public boolean isSetRole() {
        return this.roleESet;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetBswServiceDependency((BswServiceDependency)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetBswServiceDependency(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 6, BswServiceDependency.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getBswServiceDependency();
            }
            case 5: {
                if (resolve) {
                    return this.getAssignedEntry();
                }
                return this.basicGetAssignedEntry();
            }
            case 6: {
                return this.getRole();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setBswServiceDependency((BswServiceDependency)newValue);
                return;
            }
            case 5: {
                this.setAssignedEntry((BswModuleEntry)newValue);
                return;
            }
            case 6: {
                this.setRole((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setBswServiceDependency(null);
                return;
            }
            case 5: {
                this.setAssignedEntry(null);
                return;
            }
            case 6: {
                this.unsetRole();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getBswServiceDependency() != null;
            }
            case 5: {
                return this.assignedEntry != null;
            }
            case 6: {
                return this.isSetRole();
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
        result.append(" (role: ");
        if (this.roleESet) {
            result.append(this.role);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

