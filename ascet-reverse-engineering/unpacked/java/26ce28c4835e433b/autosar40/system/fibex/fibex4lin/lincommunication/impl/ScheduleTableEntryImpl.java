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
package autosar40.system.fibex.fibex4lin.lincommunication.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.DocumentationBlock;
import autosar40.system.fibex.fibex4lin.lincommunication.LinScheduleTable;
import autosar40.system.fibex.fibex4lin.lincommunication.LincommunicationPackage;
import autosar40.system.fibex.fibex4lin.lincommunication.ScheduleTableEntry;
import org.artop.aal.common.datatypes.IntegerDatatype;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public abstract class ScheduleTableEntryImpl
extends ARObjectImpl
implements ScheduleTableEntry {
    protected DocumentationBlock introduction;
    protected static final Double DELAY_EDEFAULT = new Double(0.0);
    protected Double delay = DELAY_EDEFAULT;
    protected boolean delayESet;
    protected static final IntegerDatatype POSITION_IN_TABLE_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype positionInTable = POSITION_IN_TABLE_EDEFAULT.clone();
    protected boolean positionInTableESet;

    protected ScheduleTableEntryImpl() {
    }

    protected EClass eStaticClass() {
        return LincommunicationPackage.Literals.SCHEDULE_TABLE_ENTRY;
    }

    public LinScheduleTable getLinScheduleTable() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (LinScheduleTable)this.eContainer();
    }

    public NotificationChain basicSetLinScheduleTable(LinScheduleTable newLinScheduleTable, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newLinScheduleTable, 4, msgs);
        return msgs;
    }

    public void setLinScheduleTable(LinScheduleTable newLinScheduleTable) {
        if (newLinScheduleTable != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newLinScheduleTable != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newLinScheduleTable)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newLinScheduleTable != null) {
                msgs = ((InternalEObject)newLinScheduleTable).eInverseAdd((InternalEObject)this, 21, LinScheduleTable.class, msgs);
            }
            if ((msgs = this.basicSetLinScheduleTable(newLinScheduleTable, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newLinScheduleTable, (Object)newLinScheduleTable));
        }
    }

    public DocumentationBlock getIntroduction() {
        return this.introduction;
    }

    public NotificationChain basicSetIntroduction(DocumentationBlock newIntroduction, NotificationChain msgs) {
        DocumentationBlock oldIntroduction = this.introduction;
        this.introduction = newIntroduction;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldIntroduction, (Object)newIntroduction);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setIntroduction(DocumentationBlock newIntroduction) {
        if (newIntroduction != this.introduction) {
            NotificationChain msgs = null;
            if (this.introduction != null) {
                msgs = ((InternalEObject)this.introduction).eInverseRemove((InternalEObject)this, -6, null, msgs);
            }
            if (newIntroduction != null) {
                msgs = ((InternalEObject)newIntroduction).eInverseAdd((InternalEObject)this, -6, null, msgs);
            }
            if ((msgs = this.basicSetIntroduction(newIntroduction, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newIntroduction, (Object)newIntroduction));
        }
    }

    public Double getDelay() {
        return this.delay;
    }

    public void setDelay(Double newDelay) {
        Double oldDelay = this.delay;
        this.delay = newDelay;
        boolean oldDelayESet = this.delayESet;
        this.delayESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldDelay, (Object)this.delay, !oldDelayESet));
        }
    }

    public void unsetDelay() {
        Double oldDelay = this.delay;
        boolean oldDelayESet = this.delayESet;
        this.delay = DELAY_EDEFAULT;
        this.delayESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldDelay, (Object)DELAY_EDEFAULT, oldDelayESet));
        }
    }

    public boolean isSetDelay() {
        return this.delayESet;
    }

    public Integer getPositionInTable() {
        return (Integer)this.positionInTable.basicGetValue();
    }

    public void setPositionInTable(Integer newPositionInTable) {
        Integer oldPositionInTable = (Integer)this.positionInTable.basicGetValue();
        this.positionInTable.basicSetValue((Object)newPositionInTable);
        boolean oldPositionInTableESet = this.positionInTableESet;
        this.positionInTableESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldPositionInTable, (Object)newPositionInTable, !oldPositionInTableESet));
        }
    }

    public void unsetPositionInTable() {
        Integer oldPositionInTable = (Integer)this.positionInTable.basicGetValue();
        boolean oldPositionInTableESet = this.positionInTableESet;
        this.positionInTable = POSITION_IN_TABLE_EDEFAULT.clone();
        this.positionInTableESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 7, (Object)oldPositionInTable, (Object)POSITION_IN_TABLE_EDEFAULT, oldPositionInTableESet));
        }
    }

    public boolean isSetPositionInTable() {
        return this.positionInTableESet;
    }

    public IntegerDatatype getPositionInTableData() {
        return this.positionInTable.clone();
    }

    public void setPositionInTableData(IntegerDatatype newPositionInTable) {
        this.positionInTable.setRadix((int)newPositionInTable.getRadix());
        this.positionInTable.setNoOfDigits((int)newPositionInTable.getNoOfDigits());
        this.setPositionInTable(newPositionInTable.getValue());
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetLinScheduleTable((LinScheduleTable)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetLinScheduleTable(null, msgs);
            }
            case 5: {
                return this.basicSetIntroduction(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 21, LinScheduleTable.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getLinScheduleTable();
            }
            case 5: {
                return this.getIntroduction();
            }
            case 6: {
                return this.getDelay();
            }
            case 7: {
                return this.getPositionInTable();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setLinScheduleTable((LinScheduleTable)newValue);
                return;
            }
            case 5: {
                this.setIntroduction((DocumentationBlock)newValue);
                return;
            }
            case 6: {
                this.setDelay((Double)newValue);
                return;
            }
            case 7: {
                this.setPositionInTable((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setLinScheduleTable(null);
                return;
            }
            case 5: {
                this.setIntroduction(null);
                return;
            }
            case 6: {
                this.unsetDelay();
                return;
            }
            case 7: {
                this.unsetPositionInTable();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getLinScheduleTable() != null;
            }
            case 5: {
                return this.introduction != null;
            }
            case 6: {
                return this.isSetDelay();
            }
            case 7: {
                return this.isSetPositionInTable();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (delay: ");
        if (this.delayESet) {
            result.append(this.delay);
        } else {
            result.append("<unset>");
        }
        result.append(", positionInTable: ");
        if (this.positionInTableESet) {
            result.append(this.positionInTable);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

