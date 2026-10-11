/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.swcomponent.datatype.recordlayout.impl;

import autosar40.commonstructure.axis.SwGenericAxisParamType;
import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.MultiLanguageOverviewParagraph;
import autosar40.swcomponent.datatype.recordlayout.RecordlayoutPackage;
import autosar40.swcomponent.datatype.recordlayout.SwRecordLayoutGroup;
import autosar40.swcomponent.datatype.recordlayout.SwRecordLayoutGroupContent;
import org.artop.aal.common.datatypes.IntegerDatatype;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class SwRecordLayoutGroupImpl
extends ARObjectImpl
implements SwRecordLayoutGroup,
IReferringClass {
    protected static final String SHORT_LABEL_EDEFAULT = "";
    protected String shortLabel = "";
    protected boolean shortLabelESet;
    protected static final String CATEGORY_EDEFAULT = "";
    protected String category = "";
    protected boolean categoryESet;
    protected MultiLanguageOverviewParagraph desc;
    protected static final String SW_RECORD_LAYOUT_GROUP_AXIS_EDEFAULT = "";
    protected String swRecordLayoutGroupAxis = "";
    protected boolean swRecordLayoutGroupAxisESet;
    protected static final String SW_RECORD_LAYOUT_GROUP_INDEX_EDEFAULT = "";
    protected String swRecordLayoutGroupIndex = "";
    protected boolean swRecordLayoutGroupIndexESet;
    protected SwGenericAxisParamType swGenericAxisParamType;
    protected static final String SW_RECORD_LAYOUT_GROUP_FROM_EDEFAULT = "";
    protected String swRecordLayoutGroupFrom = "";
    protected boolean swRecordLayoutGroupFromESet;
    protected static final String SW_RECORD_LAYOUT_GROUP_TO_EDEFAULT = "";
    protected String swRecordLayoutGroupTo = "";
    protected boolean swRecordLayoutGroupToESet;
    protected static final IntegerDatatype SW_RECORD_LAYOUT_GROUP_STEP_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype swRecordLayoutGroupStep = SW_RECORD_LAYOUT_GROUP_STEP_EDEFAULT.clone();
    protected boolean swRecordLayoutGroupStepESet;
    protected static final String SW_RECORD_LAYOUT_COMPONENT_EDEFAULT = "";
    protected String swRecordLayoutComponent = "";
    protected boolean swRecordLayoutComponentESet;
    protected SwRecordLayoutGroupContent swRecordLayoutGroupContentType;

    protected SwRecordLayoutGroupImpl() {
    }

    protected EClass eStaticClass() {
        return RecordlayoutPackage.Literals.SW_RECORD_LAYOUT_GROUP;
    }

    public String getShortLabel() {
        return this.shortLabel;
    }

    public void setShortLabel(String newShortLabel) {
        String oldShortLabel = this.shortLabel;
        this.shortLabel = newShortLabel;
        boolean oldShortLabelESet = this.shortLabelESet;
        this.shortLabelESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldShortLabel, (Object)this.shortLabel, !oldShortLabelESet));
        }
    }

    public void unsetShortLabel() {
        String oldShortLabel = this.shortLabel;
        boolean oldShortLabelESet = this.shortLabelESet;
        this.shortLabel = "";
        this.shortLabelESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 4, (Object)oldShortLabel, (Object)"", oldShortLabelESet));
        }
    }

    public boolean isSetShortLabel() {
        return this.shortLabelESet;
    }

    public String getCategory() {
        return this.category;
    }

    public void setCategory(String newCategory) {
        String oldCategory = this.category;
        this.category = newCategory;
        boolean oldCategoryESet = this.categoryESet;
        this.categoryESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldCategory, (Object)this.category, !oldCategoryESet));
        }
    }

    public void unsetCategory() {
        String oldCategory = this.category;
        boolean oldCategoryESet = this.categoryESet;
        this.category = "";
        this.categoryESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldCategory, (Object)"", oldCategoryESet));
        }
    }

    public boolean isSetCategory() {
        return this.categoryESet;
    }

    public MultiLanguageOverviewParagraph getDesc() {
        return this.desc;
    }

    public NotificationChain basicSetDesc(MultiLanguageOverviewParagraph newDesc, NotificationChain msgs) {
        MultiLanguageOverviewParagraph oldDesc = this.desc;
        this.desc = newDesc;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldDesc, (Object)newDesc);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setDesc(MultiLanguageOverviewParagraph newDesc) {
        if (newDesc != this.desc) {
            NotificationChain msgs = null;
            if (this.desc != null) {
                msgs = ((InternalEObject)this.desc).eInverseRemove((InternalEObject)this, -7, null, msgs);
            }
            if (newDesc != null) {
                msgs = ((InternalEObject)newDesc).eInverseAdd((InternalEObject)this, -7, null, msgs);
            }
            if ((msgs = this.basicSetDesc(newDesc, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newDesc, (Object)newDesc));
        }
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldSwRecordLayoutGroupAxis, (Object)this.swRecordLayoutGroupAxis, !oldSwRecordLayoutGroupAxisESet));
        }
    }

    public void unsetSwRecordLayoutGroupAxis() {
        String oldSwRecordLayoutGroupAxis = this.swRecordLayoutGroupAxis;
        boolean oldSwRecordLayoutGroupAxisESet = this.swRecordLayoutGroupAxisESet;
        this.swRecordLayoutGroupAxis = "";
        this.swRecordLayoutGroupAxisESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 7, (Object)oldSwRecordLayoutGroupAxis, (Object)"", oldSwRecordLayoutGroupAxisESet));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldSwRecordLayoutGroupIndex, (Object)this.swRecordLayoutGroupIndex, !oldSwRecordLayoutGroupIndexESet));
        }
    }

    public void unsetSwRecordLayoutGroupIndex() {
        String oldSwRecordLayoutGroupIndex = this.swRecordLayoutGroupIndex;
        boolean oldSwRecordLayoutGroupIndexESet = this.swRecordLayoutGroupIndexESet;
        this.swRecordLayoutGroupIndex = "";
        this.swRecordLayoutGroupIndexESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 8, (Object)oldSwRecordLayoutGroupIndex, (Object)"", oldSwRecordLayoutGroupIndexESet));
        }
    }

    public boolean isSetSwRecordLayoutGroupIndex() {
        return this.swRecordLayoutGroupIndexESet;
    }

    public SwGenericAxisParamType getSwGenericAxisParamType() {
        if (this.swGenericAxisParamType != null && this.swGenericAxisParamType.eIsProxy()) {
            InternalEObject oldSwGenericAxisParamType = (InternalEObject)this.swGenericAxisParamType;
            this.swGenericAxisParamType = (SwGenericAxisParamType)this.eResolveProxy(oldSwGenericAxisParamType);
            if (this.swGenericAxisParamType != oldSwGenericAxisParamType && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 9, (Object)oldSwGenericAxisParamType, (Object)this.swGenericAxisParamType));
            }
        }
        return this.swGenericAxisParamType;
    }

    public SwGenericAxisParamType basicGetSwGenericAxisParamType() {
        return this.swGenericAxisParamType;
    }

    public void setSwGenericAxisParamType(SwGenericAxisParamType newSwGenericAxisParamType) {
        SwGenericAxisParamType oldSwGenericAxisParamType = this.swGenericAxisParamType;
        this.swGenericAxisParamType = newSwGenericAxisParamType;
        AutosarObjectUtil.setDest((EObject)this, (int)9, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldSwGenericAxisParamType, (Object)this.swGenericAxisParamType));
        }
    }

    public String getSwRecordLayoutGroupFrom() {
        return this.swRecordLayoutGroupFrom;
    }

    public void setSwRecordLayoutGroupFrom(String newSwRecordLayoutGroupFrom) {
        String oldSwRecordLayoutGroupFrom = this.swRecordLayoutGroupFrom;
        this.swRecordLayoutGroupFrom = newSwRecordLayoutGroupFrom;
        boolean oldSwRecordLayoutGroupFromESet = this.swRecordLayoutGroupFromESet;
        this.swRecordLayoutGroupFromESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldSwRecordLayoutGroupFrom, (Object)this.swRecordLayoutGroupFrom, !oldSwRecordLayoutGroupFromESet));
        }
    }

    public void unsetSwRecordLayoutGroupFrom() {
        String oldSwRecordLayoutGroupFrom = this.swRecordLayoutGroupFrom;
        boolean oldSwRecordLayoutGroupFromESet = this.swRecordLayoutGroupFromESet;
        this.swRecordLayoutGroupFrom = "";
        this.swRecordLayoutGroupFromESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 10, (Object)oldSwRecordLayoutGroupFrom, (Object)"", oldSwRecordLayoutGroupFromESet));
        }
    }

    public boolean isSetSwRecordLayoutGroupFrom() {
        return this.swRecordLayoutGroupFromESet;
    }

    public String getSwRecordLayoutGroupTo() {
        return this.swRecordLayoutGroupTo;
    }

    public void setSwRecordLayoutGroupTo(String newSwRecordLayoutGroupTo) {
        String oldSwRecordLayoutGroupTo = this.swRecordLayoutGroupTo;
        this.swRecordLayoutGroupTo = newSwRecordLayoutGroupTo;
        boolean oldSwRecordLayoutGroupToESet = this.swRecordLayoutGroupToESet;
        this.swRecordLayoutGroupToESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 11, (Object)oldSwRecordLayoutGroupTo, (Object)this.swRecordLayoutGroupTo, !oldSwRecordLayoutGroupToESet));
        }
    }

    public void unsetSwRecordLayoutGroupTo() {
        String oldSwRecordLayoutGroupTo = this.swRecordLayoutGroupTo;
        boolean oldSwRecordLayoutGroupToESet = this.swRecordLayoutGroupToESet;
        this.swRecordLayoutGroupTo = "";
        this.swRecordLayoutGroupToESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 11, (Object)oldSwRecordLayoutGroupTo, (Object)"", oldSwRecordLayoutGroupToESet));
        }
    }

    public boolean isSetSwRecordLayoutGroupTo() {
        return this.swRecordLayoutGroupToESet;
    }

    public Integer getSwRecordLayoutGroupStep() {
        return (Integer)this.swRecordLayoutGroupStep.basicGetValue();
    }

    public void setSwRecordLayoutGroupStep(Integer newSwRecordLayoutGroupStep) {
        Integer oldSwRecordLayoutGroupStep = (Integer)this.swRecordLayoutGroupStep.basicGetValue();
        this.swRecordLayoutGroupStep.basicSetValue((Object)newSwRecordLayoutGroupStep);
        boolean oldSwRecordLayoutGroupStepESet = this.swRecordLayoutGroupStepESet;
        this.swRecordLayoutGroupStepESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 12, (Object)oldSwRecordLayoutGroupStep, (Object)newSwRecordLayoutGroupStep, !oldSwRecordLayoutGroupStepESet));
        }
    }

    public void unsetSwRecordLayoutGroupStep() {
        Integer oldSwRecordLayoutGroupStep = (Integer)this.swRecordLayoutGroupStep.basicGetValue();
        boolean oldSwRecordLayoutGroupStepESet = this.swRecordLayoutGroupStepESet;
        this.swRecordLayoutGroupStep = SW_RECORD_LAYOUT_GROUP_STEP_EDEFAULT.clone();
        this.swRecordLayoutGroupStepESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 12, (Object)oldSwRecordLayoutGroupStep, (Object)SW_RECORD_LAYOUT_GROUP_STEP_EDEFAULT, oldSwRecordLayoutGroupStepESet));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 13, (Object)oldSwRecordLayoutComponent, (Object)this.swRecordLayoutComponent, !oldSwRecordLayoutComponentESet));
        }
    }

    public void unsetSwRecordLayoutComponent() {
        String oldSwRecordLayoutComponent = this.swRecordLayoutComponent;
        boolean oldSwRecordLayoutComponentESet = this.swRecordLayoutComponentESet;
        this.swRecordLayoutComponent = "";
        this.swRecordLayoutComponentESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 13, (Object)oldSwRecordLayoutComponent, (Object)"", oldSwRecordLayoutComponentESet));
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
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 14, (Object)oldSwRecordLayoutGroupContentType, (Object)newSwRecordLayoutGroupContentType);
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 14, (Object)newSwRecordLayoutGroupContentType, (Object)newSwRecordLayoutGroupContentType));
        }
    }

    public IntegerDatatype getSwRecordLayoutGroupStepData() {
        return this.swRecordLayoutGroupStep.clone();
    }

    public void setSwRecordLayoutGroupStepData(IntegerDatatype newSwRecordLayoutGroupStep) {
        this.swRecordLayoutGroupStep.setRadix((int)newSwRecordLayoutGroupStep.getRadix());
        this.swRecordLayoutGroupStep.setNoOfDigits((int)newSwRecordLayoutGroupStep.getNoOfDigits());
        this.setSwRecordLayoutGroupStep(newSwRecordLayoutGroupStep.getValue());
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 14: {
                if (this.swRecordLayoutGroupContentType != null) {
                    msgs = ((InternalEObject)this.swRecordLayoutGroupContentType).eInverseRemove((InternalEObject)this, -15, null, msgs);
                }
                return this.basicSetSwRecordLayoutGroupContentType((SwRecordLayoutGroupContent)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 6: {
                return this.basicSetDesc(null, msgs);
            }
            case 14: {
                return this.basicSetSwRecordLayoutGroupContentType(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getShortLabel();
            }
            case 5: {
                return this.getCategory();
            }
            case 6: {
                return this.getDesc();
            }
            case 7: {
                return this.getSwRecordLayoutGroupAxis();
            }
            case 8: {
                return this.getSwRecordLayoutGroupIndex();
            }
            case 9: {
                if (resolve) {
                    return this.getSwGenericAxisParamType();
                }
                return this.basicGetSwGenericAxisParamType();
            }
            case 10: {
                return this.getSwRecordLayoutGroupFrom();
            }
            case 11: {
                return this.getSwRecordLayoutGroupTo();
            }
            case 12: {
                return this.getSwRecordLayoutGroupStep();
            }
            case 13: {
                return this.getSwRecordLayoutComponent();
            }
            case 14: {
                return this.getSwRecordLayoutGroupContentType();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setShortLabel((String)newValue);
                return;
            }
            case 5: {
                this.setCategory((String)newValue);
                return;
            }
            case 6: {
                this.setDesc((MultiLanguageOverviewParagraph)newValue);
                return;
            }
            case 7: {
                this.setSwRecordLayoutGroupAxis((String)newValue);
                return;
            }
            case 8: {
                this.setSwRecordLayoutGroupIndex((String)newValue);
                return;
            }
            case 9: {
                this.setSwGenericAxisParamType((SwGenericAxisParamType)newValue);
                return;
            }
            case 10: {
                this.setSwRecordLayoutGroupFrom((String)newValue);
                return;
            }
            case 11: {
                this.setSwRecordLayoutGroupTo((String)newValue);
                return;
            }
            case 12: {
                this.setSwRecordLayoutGroupStep((Integer)newValue);
                return;
            }
            case 13: {
                this.setSwRecordLayoutComponent((String)newValue);
                return;
            }
            case 14: {
                this.setSwRecordLayoutGroupContentType((SwRecordLayoutGroupContent)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.unsetShortLabel();
                return;
            }
            case 5: {
                this.unsetCategory();
                return;
            }
            case 6: {
                this.setDesc(null);
                return;
            }
            case 7: {
                this.unsetSwRecordLayoutGroupAxis();
                return;
            }
            case 8: {
                this.unsetSwRecordLayoutGroupIndex();
                return;
            }
            case 9: {
                this.setSwGenericAxisParamType(null);
                return;
            }
            case 10: {
                this.unsetSwRecordLayoutGroupFrom();
                return;
            }
            case 11: {
                this.unsetSwRecordLayoutGroupTo();
                return;
            }
            case 12: {
                this.unsetSwRecordLayoutGroupStep();
                return;
            }
            case 13: {
                this.unsetSwRecordLayoutComponent();
                return;
            }
            case 14: {
                this.setSwRecordLayoutGroupContentType(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.isSetShortLabel();
            }
            case 5: {
                return this.isSetCategory();
            }
            case 6: {
                return this.desc != null;
            }
            case 7: {
                return this.isSetSwRecordLayoutGroupAxis();
            }
            case 8: {
                return this.isSetSwRecordLayoutGroupIndex();
            }
            case 9: {
                return this.swGenericAxisParamType != null;
            }
            case 10: {
                return this.isSetSwRecordLayoutGroupFrom();
            }
            case 11: {
                return this.isSetSwRecordLayoutGroupTo();
            }
            case 12: {
                return this.isSetSwRecordLayoutGroupStep();
            }
            case 13: {
                return this.isSetSwRecordLayoutComponent();
            }
            case 14: {
                return this.swRecordLayoutGroupContentType != null;
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
        result.append(" (shortLabel: ");
        if (this.shortLabelESet) {
            result.append(this.shortLabel);
        } else {
            result.append("<unset>");
        }
        result.append(", category: ");
        if (this.categoryESet) {
            result.append(this.category);
        } else {
            result.append("<unset>");
        }
        result.append(", swRecordLayoutGroupAxis: ");
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

