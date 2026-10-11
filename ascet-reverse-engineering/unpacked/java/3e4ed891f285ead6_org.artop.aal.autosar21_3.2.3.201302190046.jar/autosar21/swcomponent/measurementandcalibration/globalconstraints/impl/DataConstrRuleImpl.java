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
package autosar21.swcomponent.measurementandcalibration.globalconstraints.impl;

import autosar21.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar21.swcomponent.measurementandcalibration.globalconstraints.DataConstr;
import autosar21.swcomponent.measurementandcalibration.globalconstraints.DataConstrRule;
import autosar21.swcomponent.measurementandcalibration.globalconstraints.GlobalconstraintsPackage;
import autosar21.swcomponent.measurementandcalibration.globalconstraints.InternalConstrs;
import autosar21.swcomponent.measurementandcalibration.globalconstraints.PhysConstrs;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class DataConstrRuleImpl
extends ARObjectImpl
implements DataConstrRule {
    protected PhysConstrs physConstrs;
    protected InternalConstrs internalConstrs;

    protected DataConstrRuleImpl() {
    }

    protected EClass eStaticClass() {
        return GlobalconstraintsPackage.Literals.DATA_CONSTR_RULE;
    }

    public DataConstr getDataConstr() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (DataConstr)this.eContainer();
    }

    public NotificationChain basicSetDataConstr(DataConstr newDataConstr, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newDataConstr, 4, msgs);
        return msgs;
    }

    public void setDataConstr(DataConstr newDataConstr) {
        if (newDataConstr != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newDataConstr != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newDataConstr)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newDataConstr != null) {
                msgs = ((InternalEObject)newDataConstr).eInverseAdd((InternalEObject)this, 18, DataConstr.class, msgs);
            }
            if ((msgs = this.basicSetDataConstr(newDataConstr, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newDataConstr, (Object)newDataConstr));
        }
    }

    public PhysConstrs getPhysConstrs() {
        return this.physConstrs;
    }

    public NotificationChain basicSetPhysConstrs(PhysConstrs newPhysConstrs, NotificationChain msgs) {
        PhysConstrs oldPhysConstrs = this.physConstrs;
        this.physConstrs = newPhysConstrs;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldPhysConstrs, (Object)newPhysConstrs);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setPhysConstrs(PhysConstrs newPhysConstrs) {
        if (newPhysConstrs != this.physConstrs) {
            NotificationChain msgs = null;
            if (this.physConstrs != null) {
                msgs = ((InternalEObject)this.physConstrs).eInverseRemove((InternalEObject)this, 4, PhysConstrs.class, msgs);
            }
            if (newPhysConstrs != null) {
                msgs = ((InternalEObject)newPhysConstrs).eInverseAdd((InternalEObject)this, 4, PhysConstrs.class, msgs);
            }
            if ((msgs = this.basicSetPhysConstrs(newPhysConstrs, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newPhysConstrs, (Object)newPhysConstrs));
        }
    }

    public InternalConstrs getInternalConstrs() {
        return this.internalConstrs;
    }

    public NotificationChain basicSetInternalConstrs(InternalConstrs newInternalConstrs, NotificationChain msgs) {
        InternalConstrs oldInternalConstrs = this.internalConstrs;
        this.internalConstrs = newInternalConstrs;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldInternalConstrs, (Object)newInternalConstrs);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setInternalConstrs(InternalConstrs newInternalConstrs) {
        if (newInternalConstrs != this.internalConstrs) {
            NotificationChain msgs = null;
            if (this.internalConstrs != null) {
                msgs = ((InternalEObject)this.internalConstrs).eInverseRemove((InternalEObject)this, 4, InternalConstrs.class, msgs);
            }
            if (newInternalConstrs != null) {
                msgs = ((InternalEObject)newInternalConstrs).eInverseAdd((InternalEObject)this, 4, InternalConstrs.class, msgs);
            }
            if ((msgs = this.basicSetInternalConstrs(newInternalConstrs, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newInternalConstrs, (Object)newInternalConstrs));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetDataConstr((DataConstr)otherEnd, msgs);
            }
            case 5: {
                if (this.physConstrs != null) {
                    msgs = ((InternalEObject)this.physConstrs).eInverseRemove((InternalEObject)this, -6, null, msgs);
                }
                return this.basicSetPhysConstrs((PhysConstrs)otherEnd, msgs);
            }
            case 6: {
                if (this.internalConstrs != null) {
                    msgs = ((InternalEObject)this.internalConstrs).eInverseRemove((InternalEObject)this, -7, null, msgs);
                }
                return this.basicSetInternalConstrs((InternalConstrs)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetDataConstr(null, msgs);
            }
            case 5: {
                return this.basicSetPhysConstrs(null, msgs);
            }
            case 6: {
                return this.basicSetInternalConstrs(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 18, DataConstr.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getDataConstr();
            }
            case 5: {
                return this.getPhysConstrs();
            }
            case 6: {
                return this.getInternalConstrs();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setDataConstr((DataConstr)newValue);
                return;
            }
            case 5: {
                this.setPhysConstrs((PhysConstrs)newValue);
                return;
            }
            case 6: {
                this.setInternalConstrs((InternalConstrs)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setDataConstr(null);
                return;
            }
            case 5: {
                this.setPhysConstrs(null);
                return;
            }
            case 6: {
                this.setInternalConstrs(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getDataConstr() != null;
            }
            case 5: {
                return this.physConstrs != null;
            }
            case 6: {
                return this.internalConstrs != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

