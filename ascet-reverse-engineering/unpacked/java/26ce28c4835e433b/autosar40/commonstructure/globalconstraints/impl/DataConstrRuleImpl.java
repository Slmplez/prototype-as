/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar40.commonstructure.globalconstraints.impl;

import autosar40.commonstructure.globalconstraints.DataConstr;
import autosar40.commonstructure.globalconstraints.DataConstrRule;
import autosar40.commonstructure.globalconstraints.GlobalconstraintsPackage;
import autosar40.commonstructure.globalconstraints.InternalConstrs;
import autosar40.commonstructure.globalconstraints.PhysConstrs;
import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import org.artop.aal.common.datatypes.IntegerDatatype;
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
    protected static final IntegerDatatype CONSTR_LEVEL_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype constrLevel = CONSTR_LEVEL_EDEFAULT.clone();
    protected boolean constrLevelESet;
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
                msgs = ((InternalEObject)newDataConstr).eInverseAdd((InternalEObject)this, 22, DataConstr.class, msgs);
            }
            if ((msgs = this.basicSetDataConstr(newDataConstr, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newDataConstr, (Object)newDataConstr));
        }
    }

    public Integer getConstrLevel() {
        return (Integer)this.constrLevel.basicGetValue();
    }

    public void setConstrLevel(Integer newConstrLevel) {
        Integer oldConstrLevel = (Integer)this.constrLevel.basicGetValue();
        this.constrLevel.basicSetValue((Object)newConstrLevel);
        boolean oldConstrLevelESet = this.constrLevelESet;
        this.constrLevelESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldConstrLevel, (Object)newConstrLevel, !oldConstrLevelESet));
        }
    }

    public void unsetConstrLevel() {
        Integer oldConstrLevel = (Integer)this.constrLevel.basicGetValue();
        boolean oldConstrLevelESet = this.constrLevelESet;
        this.constrLevel = CONSTR_LEVEL_EDEFAULT.clone();
        this.constrLevelESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldConstrLevel, (Object)CONSTR_LEVEL_EDEFAULT, oldConstrLevelESet));
        }
    }

    public boolean isSetConstrLevel() {
        return this.constrLevelESet;
    }

    public PhysConstrs getPhysConstrs() {
        return this.physConstrs;
    }

    public NotificationChain basicSetPhysConstrs(PhysConstrs newPhysConstrs, NotificationChain msgs) {
        PhysConstrs oldPhysConstrs = this.physConstrs;
        this.physConstrs = newPhysConstrs;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldPhysConstrs, (Object)newPhysConstrs);
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newPhysConstrs, (Object)newPhysConstrs));
        }
    }

    public InternalConstrs getInternalConstrs() {
        return this.internalConstrs;
    }

    public NotificationChain basicSetInternalConstrs(InternalConstrs newInternalConstrs, NotificationChain msgs) {
        InternalConstrs oldInternalConstrs = this.internalConstrs;
        this.internalConstrs = newInternalConstrs;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldInternalConstrs, (Object)newInternalConstrs);
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)newInternalConstrs, (Object)newInternalConstrs));
        }
    }

    public IntegerDatatype getConstrLevelData() {
        return this.constrLevel.clone();
    }

    public void setConstrLevelData(IntegerDatatype newConstrLevel) {
        this.constrLevel.setRadix((int)newConstrLevel.getRadix());
        this.constrLevel.setNoOfDigits((int)newConstrLevel.getNoOfDigits());
        this.setConstrLevel(newConstrLevel.getValue());
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetDataConstr((DataConstr)otherEnd, msgs);
            }
            case 6: {
                if (this.physConstrs != null) {
                    msgs = ((InternalEObject)this.physConstrs).eInverseRemove((InternalEObject)this, -7, null, msgs);
                }
                return this.basicSetPhysConstrs((PhysConstrs)otherEnd, msgs);
            }
            case 7: {
                if (this.internalConstrs != null) {
                    msgs = ((InternalEObject)this.internalConstrs).eInverseRemove((InternalEObject)this, -8, null, msgs);
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
            case 6: {
                return this.basicSetPhysConstrs(null, msgs);
            }
            case 7: {
                return this.basicSetInternalConstrs(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 22, DataConstr.class, msgs);
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
                return this.getConstrLevel();
            }
            case 6: {
                return this.getPhysConstrs();
            }
            case 7: {
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
                this.setConstrLevel((Integer)newValue);
                return;
            }
            case 6: {
                this.setPhysConstrs((PhysConstrs)newValue);
                return;
            }
            case 7: {
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
                this.unsetConstrLevel();
                return;
            }
            case 6: {
                this.setPhysConstrs(null);
                return;
            }
            case 7: {
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
                return this.isSetConstrLevel();
            }
            case 6: {
                return this.physConstrs != null;
            }
            case 7: {
                return this.internalConstrs != null;
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (constrLevel: ");
        if (this.constrLevelESet) {
            result.append(this.constrLevel);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

