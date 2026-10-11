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
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar40.swcomponent.datatype.recordlayout.impl;

import autosar40.commonstructure.axis.SwGenericAxisParamType;
import autosar40.commonstructure.basetypes.SwBaseType;
import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.MultiLanguageOverviewParagraph;
import autosar40.swcomponent.datatype.recordlayout.RecordlayoutPackage;
import autosar40.swcomponent.datatype.recordlayout.SwRecordLayoutGroupContent;
import autosar40.swcomponent.datatype.recordlayout.SwRecordLayoutV;
import org.artop.aal.common.datatypes.IntegerDatatype;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class SwRecordLayoutVImpl
extends ARObjectImpl
implements SwRecordLayoutV,
IReferringClass {
    protected static final String SHORT_LABEL_EDEFAULT = "";
    protected String shortLabel = "";
    protected boolean shortLabelESet;
    protected static final String CATEGORY_EDEFAULT = "";
    protected String category = "";
    protected boolean categoryESet;
    protected MultiLanguageOverviewParagraph desc;
    protected SwBaseType baseType;
    protected static final String SW_RECORD_LAYOUT_VAXIS_EDEFAULT = "";
    protected String swRecordLayoutVAxis = "";
    protected boolean swRecordLayoutVAxisESet;
    protected static final String SW_RECORD_LAYOUT_VPROP_EDEFAULT = "";
    protected String swRecordLayoutVProp = "";
    protected boolean swRecordLayoutVPropESet;
    protected static final String SW_RECORD_LAYOUT_VINDEX_EDEFAULT = "";
    protected String swRecordLayoutVIndex = "";
    protected boolean swRecordLayoutVIndexESet;
    protected SwGenericAxisParamType swGenericAxisParamType;
    protected static final IntegerDatatype SW_RECORD_LAYOUT_VFIX_VALUE_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype swRecordLayoutVFixValue = SW_RECORD_LAYOUT_VFIX_VALUE_EDEFAULT.clone();
    protected boolean swRecordLayoutVFixValueESet;

    protected SwRecordLayoutVImpl() {
    }

    protected EClass eStaticClass() {
        return RecordlayoutPackage.Literals.SW_RECORD_LAYOUT_V;
    }

    public SwRecordLayoutGroupContent getSwRecordLayoutGroupContent() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (SwRecordLayoutGroupContent)this.eContainer();
    }

    public NotificationChain basicSetSwRecordLayoutGroupContent(SwRecordLayoutGroupContent newSwRecordLayoutGroupContent, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newSwRecordLayoutGroupContent, 4, msgs);
        return msgs;
    }

    public void setSwRecordLayoutGroupContent(SwRecordLayoutGroupContent newSwRecordLayoutGroupContent) {
        if (newSwRecordLayoutGroupContent != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newSwRecordLayoutGroupContent != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newSwRecordLayoutGroupContent)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newSwRecordLayoutGroupContent != null) {
                msgs = ((InternalEObject)newSwRecordLayoutGroupContent).eInverseAdd((InternalEObject)this, 6, SwRecordLayoutGroupContent.class, msgs);
            }
            if ((msgs = this.basicSetSwRecordLayoutGroupContent(newSwRecordLayoutGroupContent, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newSwRecordLayoutGroupContent, (Object)newSwRecordLayoutGroupContent));
        }
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldShortLabel, (Object)this.shortLabel, !oldShortLabelESet));
        }
    }

    public void unsetShortLabel() {
        String oldShortLabel = this.shortLabel;
        boolean oldShortLabelESet = this.shortLabelESet;
        this.shortLabel = "";
        this.shortLabelESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldShortLabel, (Object)"", oldShortLabelESet));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldCategory, (Object)this.category, !oldCategoryESet));
        }
    }

    public void unsetCategory() {
        String oldCategory = this.category;
        boolean oldCategoryESet = this.categoryESet;
        this.category = "";
        this.categoryESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldCategory, (Object)"", oldCategoryESet));
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
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldDesc, (Object)newDesc);
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
                msgs = ((InternalEObject)this.desc).eInverseRemove((InternalEObject)this, -8, null, msgs);
            }
            if (newDesc != null) {
                msgs = ((InternalEObject)newDesc).eInverseAdd((InternalEObject)this, -8, null, msgs);
            }
            if ((msgs = this.basicSetDesc(newDesc, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)newDesc, (Object)newDesc));
        }
    }

    public SwBaseType getBaseType() {
        if (this.baseType != null && this.baseType.eIsProxy()) {
            InternalEObject oldBaseType = (InternalEObject)this.baseType;
            this.baseType = (SwBaseType)this.eResolveProxy(oldBaseType);
            if (this.baseType != oldBaseType && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 8, (Object)oldBaseType, (Object)this.baseType));
            }
        }
        return this.baseType;
    }

    public SwBaseType basicGetBaseType() {
        return this.baseType;
    }

    public void setBaseType(SwBaseType newBaseType) {
        SwBaseType oldBaseType = this.baseType;
        this.baseType = newBaseType;
        AutosarObjectUtil.setDest((EObject)this, (int)8, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldBaseType, (Object)this.baseType));
        }
    }

    public String getSwRecordLayoutVAxis() {
        return this.swRecordLayoutVAxis;
    }

    public void setSwRecordLayoutVAxis(String newSwRecordLayoutVAxis) {
        String oldSwRecordLayoutVAxis = this.swRecordLayoutVAxis;
        this.swRecordLayoutVAxis = newSwRecordLayoutVAxis;
        boolean oldSwRecordLayoutVAxisESet = this.swRecordLayoutVAxisESet;
        this.swRecordLayoutVAxisESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldSwRecordLayoutVAxis, (Object)this.swRecordLayoutVAxis, !oldSwRecordLayoutVAxisESet));
        }
    }

    public void unsetSwRecordLayoutVAxis() {
        String oldSwRecordLayoutVAxis = this.swRecordLayoutVAxis;
        boolean oldSwRecordLayoutVAxisESet = this.swRecordLayoutVAxisESet;
        this.swRecordLayoutVAxis = "";
        this.swRecordLayoutVAxisESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 9, (Object)oldSwRecordLayoutVAxis, (Object)"", oldSwRecordLayoutVAxisESet));
        }
    }

    public boolean isSetSwRecordLayoutVAxis() {
        return this.swRecordLayoutVAxisESet;
    }

    public String getSwRecordLayoutVProp() {
        return this.swRecordLayoutVProp;
    }

    public void setSwRecordLayoutVProp(String newSwRecordLayoutVProp) {
        String oldSwRecordLayoutVProp = this.swRecordLayoutVProp;
        this.swRecordLayoutVProp = newSwRecordLayoutVProp;
        boolean oldSwRecordLayoutVPropESet = this.swRecordLayoutVPropESet;
        this.swRecordLayoutVPropESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldSwRecordLayoutVProp, (Object)this.swRecordLayoutVProp, !oldSwRecordLayoutVPropESet));
        }
    }

    public void unsetSwRecordLayoutVProp() {
        String oldSwRecordLayoutVProp = this.swRecordLayoutVProp;
        boolean oldSwRecordLayoutVPropESet = this.swRecordLayoutVPropESet;
        this.swRecordLayoutVProp = "";
        this.swRecordLayoutVPropESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 10, (Object)oldSwRecordLayoutVProp, (Object)"", oldSwRecordLayoutVPropESet));
        }
    }

    public boolean isSetSwRecordLayoutVProp() {
        return this.swRecordLayoutVPropESet;
    }

    public String getSwRecordLayoutVIndex() {
        return this.swRecordLayoutVIndex;
    }

    public void setSwRecordLayoutVIndex(String newSwRecordLayoutVIndex) {
        String oldSwRecordLayoutVIndex = this.swRecordLayoutVIndex;
        this.swRecordLayoutVIndex = newSwRecordLayoutVIndex;
        boolean oldSwRecordLayoutVIndexESet = this.swRecordLayoutVIndexESet;
        this.swRecordLayoutVIndexESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 11, (Object)oldSwRecordLayoutVIndex, (Object)this.swRecordLayoutVIndex, !oldSwRecordLayoutVIndexESet));
        }
    }

    public void unsetSwRecordLayoutVIndex() {
        String oldSwRecordLayoutVIndex = this.swRecordLayoutVIndex;
        boolean oldSwRecordLayoutVIndexESet = this.swRecordLayoutVIndexESet;
        this.swRecordLayoutVIndex = "";
        this.swRecordLayoutVIndexESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 11, (Object)oldSwRecordLayoutVIndex, (Object)"", oldSwRecordLayoutVIndexESet));
        }
    }

    public boolean isSetSwRecordLayoutVIndex() {
        return this.swRecordLayoutVIndexESet;
    }

    public SwGenericAxisParamType getSwGenericAxisParamType() {
        if (this.swGenericAxisParamType != null && this.swGenericAxisParamType.eIsProxy()) {
            InternalEObject oldSwGenericAxisParamType = (InternalEObject)this.swGenericAxisParamType;
            this.swGenericAxisParamType = (SwGenericAxisParamType)this.eResolveProxy(oldSwGenericAxisParamType);
            if (this.swGenericAxisParamType != oldSwGenericAxisParamType && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 12, (Object)oldSwGenericAxisParamType, (Object)this.swGenericAxisParamType));
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
        AutosarObjectUtil.setDest((EObject)this, (int)12, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 12, (Object)oldSwGenericAxisParamType, (Object)this.swGenericAxisParamType));
        }
    }

    public Integer getSwRecordLayoutVFixValue() {
        return (Integer)this.swRecordLayoutVFixValue.basicGetValue();
    }

    public void setSwRecordLayoutVFixValue(Integer newSwRecordLayoutVFixValue) {
        Integer oldSwRecordLayoutVFixValue = (Integer)this.swRecordLayoutVFixValue.basicGetValue();
        this.swRecordLayoutVFixValue.basicSetValue((Object)newSwRecordLayoutVFixValue);
        boolean oldSwRecordLayoutVFixValueESet = this.swRecordLayoutVFixValueESet;
        this.swRecordLayoutVFixValueESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 13, (Object)oldSwRecordLayoutVFixValue, (Object)newSwRecordLayoutVFixValue, !oldSwRecordLayoutVFixValueESet));
        }
    }

    public void unsetSwRecordLayoutVFixValue() {
        Integer oldSwRecordLayoutVFixValue = (Integer)this.swRecordLayoutVFixValue.basicGetValue();
        boolean oldSwRecordLayoutVFixValueESet = this.swRecordLayoutVFixValueESet;
        this.swRecordLayoutVFixValue = SW_RECORD_LAYOUT_VFIX_VALUE_EDEFAULT.clone();
        this.swRecordLayoutVFixValueESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 13, (Object)oldSwRecordLayoutVFixValue, (Object)SW_RECORD_LAYOUT_VFIX_VALUE_EDEFAULT, oldSwRecordLayoutVFixValueESet));
        }
    }

    public boolean isSetSwRecordLayoutVFixValue() {
        return this.swRecordLayoutVFixValueESet;
    }

    public IntegerDatatype getSwRecordLayoutVFixValueData() {
        return this.swRecordLayoutVFixValue.clone();
    }

    public void setSwRecordLayoutVFixValueData(IntegerDatatype newSwRecordLayoutVFixValue) {
        this.swRecordLayoutVFixValue.setRadix((int)newSwRecordLayoutVFixValue.getRadix());
        this.swRecordLayoutVFixValue.setNoOfDigits((int)newSwRecordLayoutVFixValue.getNoOfDigits());
        this.setSwRecordLayoutVFixValue(newSwRecordLayoutVFixValue.getValue());
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetSwRecordLayoutGroupContent((SwRecordLayoutGroupContent)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetSwRecordLayoutGroupContent(null, msgs);
            }
            case 7: {
                return this.basicSetDesc(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 6, SwRecordLayoutGroupContent.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getSwRecordLayoutGroupContent();
            }
            case 5: {
                return this.getShortLabel();
            }
            case 6: {
                return this.getCategory();
            }
            case 7: {
                return this.getDesc();
            }
            case 8: {
                if (resolve) {
                    return this.getBaseType();
                }
                return this.basicGetBaseType();
            }
            case 9: {
                return this.getSwRecordLayoutVAxis();
            }
            case 10: {
                return this.getSwRecordLayoutVProp();
            }
            case 11: {
                return this.getSwRecordLayoutVIndex();
            }
            case 12: {
                if (resolve) {
                    return this.getSwGenericAxisParamType();
                }
                return this.basicGetSwGenericAxisParamType();
            }
            case 13: {
                return this.getSwRecordLayoutVFixValue();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setSwRecordLayoutGroupContent((SwRecordLayoutGroupContent)newValue);
                return;
            }
            case 5: {
                this.setShortLabel((String)newValue);
                return;
            }
            case 6: {
                this.setCategory((String)newValue);
                return;
            }
            case 7: {
                this.setDesc((MultiLanguageOverviewParagraph)newValue);
                return;
            }
            case 8: {
                this.setBaseType((SwBaseType)newValue);
                return;
            }
            case 9: {
                this.setSwRecordLayoutVAxis((String)newValue);
                return;
            }
            case 10: {
                this.setSwRecordLayoutVProp((String)newValue);
                return;
            }
            case 11: {
                this.setSwRecordLayoutVIndex((String)newValue);
                return;
            }
            case 12: {
                this.setSwGenericAxisParamType((SwGenericAxisParamType)newValue);
                return;
            }
            case 13: {
                this.setSwRecordLayoutVFixValue((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setSwRecordLayoutGroupContent(null);
                return;
            }
            case 5: {
                this.unsetShortLabel();
                return;
            }
            case 6: {
                this.unsetCategory();
                return;
            }
            case 7: {
                this.setDesc(null);
                return;
            }
            case 8: {
                this.setBaseType(null);
                return;
            }
            case 9: {
                this.unsetSwRecordLayoutVAxis();
                return;
            }
            case 10: {
                this.unsetSwRecordLayoutVProp();
                return;
            }
            case 11: {
                this.unsetSwRecordLayoutVIndex();
                return;
            }
            case 12: {
                this.setSwGenericAxisParamType(null);
                return;
            }
            case 13: {
                this.unsetSwRecordLayoutVFixValue();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getSwRecordLayoutGroupContent() != null;
            }
            case 5: {
                return this.isSetShortLabel();
            }
            case 6: {
                return this.isSetCategory();
            }
            case 7: {
                return this.desc != null;
            }
            case 8: {
                return this.baseType != null;
            }
            case 9: {
                return this.isSetSwRecordLayoutVAxis();
            }
            case 10: {
                return this.isSetSwRecordLayoutVProp();
            }
            case 11: {
                return this.isSetSwRecordLayoutVIndex();
            }
            case 12: {
                return this.swGenericAxisParamType != null;
            }
            case 13: {
                return this.isSetSwRecordLayoutVFixValue();
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
        result.append(", swRecordLayoutVAxis: ");
        if (this.swRecordLayoutVAxisESet) {
            result.append(this.swRecordLayoutVAxis);
        } else {
            result.append("<unset>");
        }
        result.append(", swRecordLayoutVProp: ");
        if (this.swRecordLayoutVPropESet) {
            result.append(this.swRecordLayoutVProp);
        } else {
            result.append("<unset>");
        }
        result.append(", swRecordLayoutVIndex: ");
        if (this.swRecordLayoutVIndexESet) {
            result.append(this.swRecordLayoutVIndex);
        } else {
            result.append("<unset>");
        }
        result.append(", swRecordLayoutVFixValue: ");
        if (this.swRecordLayoutVFixValueESet) {
            result.append(this.swRecordLayoutVFixValue);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

