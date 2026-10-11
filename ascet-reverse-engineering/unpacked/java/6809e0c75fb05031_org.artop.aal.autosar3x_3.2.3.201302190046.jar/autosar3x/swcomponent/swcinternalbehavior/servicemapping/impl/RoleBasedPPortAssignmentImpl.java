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
package autosar3x.swcomponent.swcinternalbehavior.servicemapping.impl;

import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar3x.swcomponent.components.PPortPrototype;
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.RoleBasedPPortAssignment;
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.ServicemappingPackage;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class RoleBasedPPortAssignmentImpl
extends ARObjectImpl
implements RoleBasedPPortAssignment,
IReferringClass {
    protected PPortPrototype pPortPrototype;
    protected static final String ROLE_EDEFAULT = "";
    protected String role = "";
    protected boolean roleESet;

    protected RoleBasedPPortAssignmentImpl() {
    }

    protected EClass eStaticClass() {
        return ServicemappingPackage.Literals.ROLE_BASED_PPORT_ASSIGNMENT;
    }

    public PPortPrototype getPPortPrototype() {
        if (this.pPortPrototype != null && this.pPortPrototype.eIsProxy()) {
            InternalEObject oldPPortPrototype = (InternalEObject)this.pPortPrototype;
            this.pPortPrototype = (PPortPrototype)this.eResolveProxy(oldPPortPrototype);
            if (this.pPortPrototype != oldPPortPrototype && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 4, (Object)oldPPortPrototype, (Object)this.pPortPrototype));
            }
        }
        return this.pPortPrototype;
    }

    public PPortPrototype basicGetPPortPrototype() {
        return this.pPortPrototype;
    }

    public void setPPortPrototype(PPortPrototype newPPortPrototype) {
        PPortPrototype oldPPortPrototype = this.pPortPrototype;
        this.pPortPrototype = newPPortPrototype;
        AutosarObjectUtil.setDest((EObject)this, (int)4, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldPPortPrototype, (Object)this.pPortPrototype));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldRole, (Object)this.role, !oldRoleESet));
        }
    }

    public void unsetRole() {
        String oldRole = this.role;
        boolean oldRoleESet = this.roleESet;
        this.role = ROLE_EDEFAULT;
        this.roleESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldRole, (Object)ROLE_EDEFAULT, oldRoleESet));
        }
    }

    public boolean isSetRole() {
        return this.roleESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                if (resolve) {
                    return this.getPPortPrototype();
                }
                return this.basicGetPPortPrototype();
            }
            case 5: {
                return this.getRole();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setPPortPrototype((PPortPrototype)newValue);
                return;
            }
            case 5: {
                this.setRole((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setPPortPrototype(null);
                return;
            }
            case 5: {
                this.unsetRole();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.pPortPrototype != null;
            }
            case 5: {
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

