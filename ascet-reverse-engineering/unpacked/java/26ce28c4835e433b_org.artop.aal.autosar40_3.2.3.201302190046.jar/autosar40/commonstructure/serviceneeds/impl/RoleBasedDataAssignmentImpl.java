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
package autosar40.commonstructure.serviceneeds.impl;

import autosar40.commonstructure.serviceneeds.RoleBasedDataAssignment;
import autosar40.commonstructure.serviceneeds.ServiceneedsPackage;
import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.swcomponent.swcinternalbehavior.dataelements.AutosarParameterRef;
import autosar40.swcomponent.swcinternalbehavior.dataelements.AutosarVariableRef;
import autosar40.swcomponent.swcinternalbehavior.perinstancememory.PerInstanceMemory;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class RoleBasedDataAssignmentImpl
extends ARObjectImpl
implements RoleBasedDataAssignment,
IReferringClass {
    protected static final String ROLE_EDEFAULT = "";
    protected String role = "";
    protected boolean roleESet;
    protected AutosarVariableRef usedDataElement;
    protected AutosarParameterRef usedParameterElement;
    protected PerInstanceMemory usedPim;

    protected RoleBasedDataAssignmentImpl() {
    }

    protected EClass eStaticClass() {
        return ServiceneedsPackage.Literals.ROLE_BASED_DATA_ASSIGNMENT;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldRole, (Object)this.role, !oldRoleESet));
        }
    }

    public void unsetRole() {
        String oldRole = this.role;
        boolean oldRoleESet = this.roleESet;
        this.role = ROLE_EDEFAULT;
        this.roleESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 4, (Object)oldRole, (Object)ROLE_EDEFAULT, oldRoleESet));
        }
    }

    public boolean isSetRole() {
        return this.roleESet;
    }

    public AutosarVariableRef getUsedDataElement() {
        return this.usedDataElement;
    }

    public NotificationChain basicSetUsedDataElement(AutosarVariableRef newUsedDataElement, NotificationChain msgs) {
        AutosarVariableRef oldUsedDataElement = this.usedDataElement;
        this.usedDataElement = newUsedDataElement;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldUsedDataElement, (Object)newUsedDataElement);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setUsedDataElement(AutosarVariableRef newUsedDataElement) {
        if (newUsedDataElement != this.usedDataElement) {
            NotificationChain msgs = null;
            if (this.usedDataElement != null) {
                msgs = ((InternalEObject)this.usedDataElement).eInverseRemove((InternalEObject)this, -6, null, msgs);
            }
            if (newUsedDataElement != null) {
                msgs = ((InternalEObject)newUsedDataElement).eInverseAdd((InternalEObject)this, -6, null, msgs);
            }
            if ((msgs = this.basicSetUsedDataElement(newUsedDataElement, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newUsedDataElement, (Object)newUsedDataElement));
        }
    }

    public AutosarParameterRef getUsedParameterElement() {
        return this.usedParameterElement;
    }

    public NotificationChain basicSetUsedParameterElement(AutosarParameterRef newUsedParameterElement, NotificationChain msgs) {
        AutosarParameterRef oldUsedParameterElement = this.usedParameterElement;
        this.usedParameterElement = newUsedParameterElement;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldUsedParameterElement, (Object)newUsedParameterElement);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setUsedParameterElement(AutosarParameterRef newUsedParameterElement) {
        if (newUsedParameterElement != this.usedParameterElement) {
            NotificationChain msgs = null;
            if (this.usedParameterElement != null) {
                msgs = ((InternalEObject)this.usedParameterElement).eInverseRemove((InternalEObject)this, -7, null, msgs);
            }
            if (newUsedParameterElement != null) {
                msgs = ((InternalEObject)newUsedParameterElement).eInverseAdd((InternalEObject)this, -7, null, msgs);
            }
            if ((msgs = this.basicSetUsedParameterElement(newUsedParameterElement, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newUsedParameterElement, (Object)newUsedParameterElement));
        }
    }

    public PerInstanceMemory getUsedPim() {
        if (this.usedPim != null && this.usedPim.eIsProxy()) {
            InternalEObject oldUsedPim = (InternalEObject)this.usedPim;
            this.usedPim = (PerInstanceMemory)this.eResolveProxy(oldUsedPim);
            if (this.usedPim != oldUsedPim && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 7, (Object)oldUsedPim, (Object)this.usedPim));
            }
        }
        return this.usedPim;
    }

    public PerInstanceMemory basicGetUsedPim() {
        return this.usedPim;
    }

    public void setUsedPim(PerInstanceMemory newUsedPim) {
        PerInstanceMemory oldUsedPim = this.usedPim;
        this.usedPim = newUsedPim;
        AutosarObjectUtil.setDest((EObject)this, (int)7, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldUsedPim, (Object)this.usedPim));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                return this.basicSetUsedDataElement(null, msgs);
            }
            case 6: {
                return this.basicSetUsedParameterElement(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getRole();
            }
            case 5: {
                return this.getUsedDataElement();
            }
            case 6: {
                return this.getUsedParameterElement();
            }
            case 7: {
                if (resolve) {
                    return this.getUsedPim();
                }
                return this.basicGetUsedPim();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setRole((String)newValue);
                return;
            }
            case 5: {
                this.setUsedDataElement((AutosarVariableRef)newValue);
                return;
            }
            case 6: {
                this.setUsedParameterElement((AutosarParameterRef)newValue);
                return;
            }
            case 7: {
                this.setUsedPim((PerInstanceMemory)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.unsetRole();
                return;
            }
            case 5: {
                this.setUsedDataElement(null);
                return;
            }
            case 6: {
                this.setUsedParameterElement(null);
                return;
            }
            case 7: {
                this.setUsedPim(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.isSetRole();
            }
            case 5: {
                return this.usedDataElement != null;
            }
            case 6: {
                return this.usedParameterElement != null;
            }
            case 7: {
                return this.usedPim != null;
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

