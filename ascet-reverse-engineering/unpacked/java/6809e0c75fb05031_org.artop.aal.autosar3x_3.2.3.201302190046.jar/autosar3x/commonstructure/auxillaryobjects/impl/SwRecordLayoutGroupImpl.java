/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar3x.commonstructure.auxillaryobjects.impl;

import autosar3x.commonstructure.auxillaryobjects.AuxillaryobjectsPackage;
import autosar3x.commonstructure.auxillaryobjects.SwRecordLayoutGroup;
import autosar3x.commonstructure.auxillaryobjects.SwRecordLayoutGroupContent;
import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class SwRecordLayoutGroupImpl
extends ARObjectImpl
implements SwRecordLayoutGroup {
    protected static final String SW_RECORD_LAYOUT_GROUP_AXIS_EDEFAULT = "";
    protected String swRecordLayoutGroupAxis = "";
    protected boolean swRecordLayoutGroupAxisESet;
    protected static final String SW_RECORD_LAYOUT_GROUP_INDEX_EDEFAULT = "";
    protected String swRecordLayoutGroupIndex = "";
    protected boolean swRecordLayoutGroupIndexESet;
    protected static final Integer SW_RECORD_LAYOUT_GROUP_FROM_EDEFAULT = new Integer(0);
    protected Integer swRecordLayoutGroupFrom = SW_RECORD_LAYOUT_GROUP_FROM_EDEFAULT;
    protected boolean swRecordLayoutGroupFromESet;
    protected static final Integer SW_RECORD_LAYOUT_GROUP_TO_EDEFAULT = new Integer(0);
    protected Integer swRecordLayoutGroupTo = SW_RECORD_LAYOUT_GROUP_TO_EDEFAULT;
    protected boolean swRecordLayoutGroupToESet;
    protected static final Integer SW_RECORD_LAYOUT_GROUP_STEP_EDEFAULT = new Integer(0);
    protected Integer swRecordLayoutGroupStep = SW_RECORD_LAYOUT_GROUP_STEP_EDEFAULT;
    protected boolean swRecordLayoutGroupStepESet;
    protected static final String SW_RECORD_LAYOUT_COMPONENT_EDEFAULT = "";
    protected String swRecordLayoutComponent = "";
    protected boolean swRecordLayoutComponentESet;
    protected SwRecordLayoutGroupContent swRecordLayoutGroupContentType;

    protected SwRecordLayoutGroupImpl() {
    }

    protected EClass eStaticClass() {
        return AuxillaryobjectsPackage.Literals.SW_RECORD_LAYOUT_GROUP;
    }

    public String getSwRecordLayoutGroupAxis() {
        return this.swRecordLayoutGroupAxis;
    }

    public void setSwRecordLayoutGroupAxis(String newSwRecordLayoutGroupAxis) {
        String oldSwRecordLayoutGroupAxis = this.swRecordLayoutGroupAxis;
        this.swRecordLayoutGroupAxis = newSwRecordLayoutGroupAxis;
        boolean oldSwRecordLayoutGroupAxisESet = this.swRecordLayoutGroupAxisESet;
        this.swRecordLayoutGroupAxisESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldSwRecordLayoutGroupAxis, (Object)this.swRecordLayoutGroupAxis, !oldSwRecordLayoutGroupAxisESet));
        }
    }

    public void unsetSwRecordLayoutGroupAxis() {
        String oldSwRecordLayoutGroupAxis = this.swRecordLayoutGroupAxis;
        boolean oldSwRecordLayoutGroupAxisESet = this.swRecordLayoutGroupAxisESet;
        this.swRecordLayoutGroupAxis = "";
        this.swRecordLayoutGroupAxisESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 4, (Object)oldSwRecordLayoutGroupAxis, (Object)"", oldSwRecordLayoutGroupAxisESet));
        }
    }

    public boolean isSetSwRecordLayoutGroupAxis() {
        return this.swRecordLayoutGroupAxisESet;
    }

    public String getSwRecordLayoutGroupIndex() {
        return this.swRecordLayoutGroupIndex;
    }

    public void setSwRecordLayoutGroupIndex(String newSwRecordLayoutGroupIndex) {
        String oldSwRecordLayoutGroupIndex = this.swRecordLayoutGroupIndex;
        this.swRecordLayoutGroupIndex = newSwRecordLayoutGroupIndex;
        boolean oldSwRecordLayoutGroupIndexESet = this.swRecordLayoutGroupIndexESet;
        this.swRecordLayoutGroupIndexESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldSwRecordLayoutGroupIndex, (Object)this.swRecordLayoutGroupIndex, !oldSwRecordLayoutGroupIndexESet));
        }
    }

    public void unsetSwRecordLayoutGroupIndex() {
        String oldSwRecordLayoutGroupIndex = this.swRecordLayoutGroupIndex;
        boolean oldSwRecordLayoutGroupIndexESet = this.swRecordLayoutGroupIndexESet;
        this.swRecordLayoutGroupIndex = "";
        this.swRecordLayoutGroupIndexESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldSwRecordLayoutGroupIndex, (Object)"", oldSwRecordLayoutGroupIndexESet));
        }
    }

    public boolean isSetSwRecordLayoutGroupIndex() {
        return this.swRecordLayoutGroupIndexESet;
    }

    public Integer getSwRecordLayoutGroupFrom() {
        return this.swRecordLayoutGroupFrom;
    }

    public void setSwRecordLayoutGroupFrom(Integer newSwRecordLayoutGroupFrom) {
        Integer oldSwRecordLayoutGroupFrom = this.swRecordLayoutGroupFrom;
        this.swRecordLayoutGroupFrom = newSwRecordLayoutGroupFrom;
        boolean oldSwRecordLayoutGroupFromESet = this.swRecordLayoutGroupFromESet;
        this.swRecordLayoutGroupFromESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldSwRecordLayoutGroupFrom, (Object)this.swRecordLayoutGroupFrom, !oldSwRecordLayoutGroupFromESet));
        }
    }

    public void unsetSwRecordLayoutGroupFrom() {
        Integer oldSwRecordLayoutGroupFrom = this.swRecordLayoutGroupFrom;
        boolean oldSwRecordLayoutGroupFromESet = this.swRecordLayoutGroupFromESet;
        this.swRecordLayoutGroupFrom = SW_RECORD_LAYOUT_GROUP_FROM_EDEFAULT;
        this.swRecordLayoutGroupFromESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldSwRecordLayoutGroupFrom, (Object)SW_RECORD_LAYOUT_GROUP_FROM_EDEFAULT, oldSwRecordLayoutGroupFromESet));
        }
    }

    public boolean isSetSwRecordLayoutGroupFrom() {
        return this.swRecordLayoutGroupFromESet;
    }

    public Integer getSwRecordLayoutGroupTo() {
        return this.swRecordLayoutGroupTo;
    }

    public void setSwRecordLayoutGroupTo(Integer newSwRecordLayoutGroupTo) {
        Integer oldSwRecordLayoutGroupTo = this.swRecordLayoutGroupTo;
        this.swRecordLayoutGroupTo = newSwRecordLayoutGroupTo;
        boolean oldSwRecordLayoutGroupToESet = this.swRecordLayoutGroupToESet;
        this.swRecordLayoutGroupToESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldSwRecordLayoutGroupTo, (Object)this.swRecordLayoutGroupTo, !oldSwRecordLayoutGroupToESet));
        }
    }

    public void unsetSwRecordLayoutGroupTo() {
        Integer oldSwRecordLayoutGroupTo = this.swRecordLayoutGroupTo;
        boolean oldSwRecordLayoutGroupToESet = this.swRecordLayoutGroupToESet;
        this.swRecordLayoutGroupTo = SW_RECORD_LAYOUT_GROUP_TO_EDEFAULT;
        this.swRecordLayoutGroupToESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 7, (Object)oldSwRecordLayoutGroupTo, (Object)SW_RECORD_LAYOUT_GROUP_TO_EDEFAULT, oldSwRecordLayoutGroupToESet));
        }
    }

    public boolean isSetSwRecordLayoutGroupTo() {
        return this.swRecordLayoutGroupToESet;
    }

    public Integer getSwRecordLayoutGroupStep() {
        return this.swRecordLayoutGroupStep;
    }

    public void setSwRecordLayoutGroupStep(Integer newSwRecordLayoutGroupStep) {
        Integer oldSwRecordLayoutGroupStep = this.swRecordLayoutGroupStep;
        this.swRecordLayoutGroupStep = newSwRecordLayoutGroupStep;
        boolean oldSwRecordLayoutGroupStepESet = this.swRecordLayoutGroupStepESet;
        this.swRecordLayoutGroupStepESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldSwRecordLayoutGroupStep, (Object)this.swRecordLayoutGroupStep, !oldSwRecordLayoutGroupStepESet));
        }
    }

    public void unsetSwRecordLayoutGroupStep() {
        Integer oldSwRecordLayoutGroupStep = this.swRecordLayoutGroupStep;
        boolean oldSwRecordLayoutGroupStepESet = this.swRecordLayoutGroupStepESet;
        this.swRecordLayoutGroupStep = SW_RECORD_LAYOUT_GROUP_STEP_EDEFAULT;
        this.swRecordLayoutGroupStepESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 8, (Object)oldSwRecordLayoutGroupStep, (Object)SW_RECORD_LAYOUT_GROUP_STEP_EDEFAULT, oldSwRecordLayoutGroupStepESet));
        }
    }

    public boolean isSetSwRecordLayoutGroupStep() {
        return this.swRecordLayoutGroupStepESet;
    }

    public String getSwRecordLayoutComponent() {
        return this.swRecordLayoutComponent;
    }

    public void setSwRecordLayoutComponent(String newSwRecordLayoutComponent) {
        String oldSwRecordLayoutComponent = this.swRecordLayoutComponent;
        this.swRecordLayoutComponent = newSwRecordLayoutComponent;
        boolean oldSwRecordLayoutComponentESet = this.swRecordLayoutComponentESet;
        this.swRecordLayoutComponentESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldSwRecordLayoutComponent, (Object)this.swRecordLayoutComponent, !oldSwRecordLayoutComponentESet));
        }
    }

    public void unsetSwRecordLayoutComponent() {
        String oldSwRecordLayoutComponent = this.swRecordLayoutComponent;
        boolean oldSwRecordLayoutComponentESet = this.swRecordLayoutComponentESet;
        this.swRecordLayoutComponent = "";
        this.swRecordLayoutComponentESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 9, (Object)oldSwRecordLayoutComponent, (Object)"", oldSwRecordLayoutComponentESet));
        }
    }

    public boolean isSetSwRecordLayoutComponent() {
        return this.swRecordLayoutComponentESet;
    }

    public SwRecordLayoutGroupContent getSwRecordLayoutGroupContentType() {
        return this.swRecordLayoutGroupContentType;
    }

    public NotificationChain basicSetSwRecordLayoutGroupContentType(SwRecordLayoutGroupContent newSwRecordLayoutGroupContentType, NotificationChain msgs) {
        SwRecordLayoutGroupContent oldSwRecordLayoutGroupContentType = this.swRecordLayoutGroupContentType;
        this.swRecordLayoutGroupContentType = newSwRecordLayoutGroupContentType;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldSwRecordLayoutGroupContentType, (Object)newSwRecordLayoutGroupContentType);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setSwRecordLayoutGroupContentType(SwRecordLayoutGroupContent newSwRecordLayoutGroupContentType) {
        if (newSwRecordLayoutGroupContentType != this.swRecordLayoutGroupContentType) {
            NotificationChain msgs = null;
            if (this.swRecordLayoutGroupContentType != null) {
                msgs = ((InternalEObject)this.swRecordLayoutGroupContentType).eInverseRemove((InternalEObject)this, 4, SwRecordLayoutGroupContent.class, msgs);
            }
            if (newSwRecordLayoutGroupContentType != null) {
                msgs = ((InternalEObject)newSwRecordLayoutGroupContentType).eInverseAdd((InternalEObject)this, 4, SwRecordLayoutGroupContent.class, msgs);
            }
            if ((msgs = this.basicSetSwRecordLayoutGroupContentType(newSwRecordLayoutGroupContentType, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)newSwRecordLayoutGroupContentType, (Object)newSwRecordLayoutGroupContentType));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 10: {
                if (this.swRecordLayoutGroupContentType != null) {
                    msgs = ((InternalEObject)this.swRecordLayoutGroupContentType).eInverseRemove((InternalEObject)this, -11, null, msgs);
                }
                return this.basicSetSwRecordLayoutGroupContentType((SwRecordLayoutGroupContent)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 10: {
                return this.basicSetSwRecordLayoutGroupContentType(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getSwRecordLayoutGroupAxis();
            }
            case 5: {
                return this.getSwRecordLayoutGroupIndex();
            }
            case 6: {
                return this.getSwRecordLayoutGroupFrom();
            }
            case 7: {
                return this.getSwRecordLayoutGroupTo();
            }
            case 8: {
                return this.getSwRecordLayoutGroupStep();
            }
            case 9: {
                return this.getSwRecordLayoutComponent();
            }
            case 10: {
                return this.getSwRecordLayoutGroupContentType();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setSwRecordLayoutGroupAxis((String)newValue);
                return;
            }
            case 5: {
                this.setSwRecordLayoutGroupIndex((String)newValue);
                return;
            }
            case 6: {
                this.setSwRecordLayoutGroupFrom((Integer)newValue);
                return;
            }
            case 7: {
                this.setSwRecordLayoutGroupTo((Integer)newValue);
                return;
            }
            case 8: {
                this.setSwRecordLayoutGroupStep((Integer)newValue);
                return;
            }
            case 9: {
                this.setSwRecordLayoutComponent((String)newValue);
                return;
            }
            case 10: {
                this.setSwRecordLayoutGroupContentType((SwRecordLayoutGroupContent)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.unsetSwRecordLayoutGroupAxis();
                return;
            }
            case 5: {
                this.unsetSwRecordLayoutGroupIndex();
                return;
            }
            case 6: {
                this.unsetSwRecordLayoutGroupFrom();
                return;
            }
            case 7: {
                this.unsetSwRecordLayoutGroupTo();
                return;
            }
            case 8: {
                this.unsetSwRecordLayoutGroupStep();
                return;
            }
            case 9: {
                this.unsetSwRecordLayoutComponent();
                return;
            }
            case 10: {
                this.setSwRecordLayoutGroupContentType(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.isSetSwRecordLayoutGroupAxis();
            }
            case 5: {
                return this.isSetSwRecordLayoutGroupIndex();
            }
            case 6: {
                return this.isSetSwRecordLayoutGroupFrom();
            }
            case 7: {
                return this.isSetSwRecordLayoutGroupTo();
            }
            case 8: {
                return this.isSetSwRecordLayoutGroupStep();
            }
            case 9: {
                return this.isSetSwRecordLayoutComponent();
            }
            case 10: {
                return this.swRecordLayoutGroupContentType != null;
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (swRecordLayoutGroupAxis: ");
        if (this.swRecordLayoutGroupAxisESet) {
            result.append(this.swRecordLayoutGroupAxis);
        } else {
            result.append("<unset>");
        }
        result.append(", swRecordLayoutGroupIndex: ");
        if (this.swRecordLayoutGroupIndexESet) {
            result.append(this.swRecordLayoutGroupIndex);
        } else {
            result.append("<unset>");
        }
        result.append(", swRecordLayoutGroupFrom: ");
        if (this.swRecordLayoutGroupFromESet) {
            result.append(this.swRecordLayoutGroupFrom);
        } else {
            result.append("<unset>");
        }
        result.append(", swRecordLayoutGroupTo: ");
        if (this.swRecordLayoutGroupToESet) {
            result.append(this.swRecordLayoutGroupTo);
        } else {
            result.append("<unset>");
        }
        result.append(", swRecordLayoutGroupStep: ");
        if (this.swRecordLayoutGroupStepESet) {
            result.append(this.swRecordLayoutGroupStep);
        } else {
            result.append("<unset>");
        }
        result.append(", swRecordLayoutComponent: ");
        if (this.swRecordLayoutComponentESet) {
            result.append(this.swRecordLayoutComponent);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

