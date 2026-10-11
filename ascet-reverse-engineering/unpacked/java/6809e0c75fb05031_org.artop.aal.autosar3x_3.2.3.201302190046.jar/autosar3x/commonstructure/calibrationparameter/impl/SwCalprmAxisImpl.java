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
package autosar3x.commonstructure.calibrationparameter.impl;

import autosar3x.commonstructure.basetypes.SwBaseType;
import autosar3x.commonstructure.calibrationparameter.CalibrationparameterPackage;
import autosar3x.commonstructure.calibrationparameter.CalprmAxisCategoryEnum;
import autosar3x.commonstructure.calibrationparameter.SwCalprmAxis;
import autosar3x.commonstructure.calibrationparameter.SwCalprmAxisSet;
import autosar3x.commonstructure.calibrationparameter.SwCalprmAxisTypeProps;
import autosar3x.commonstructure.datadefproperties.SwCalibrationAccessEnum;
import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class SwCalprmAxisImpl
extends ARObjectImpl
implements SwCalprmAxis,
IReferringClass {
    protected static final String SW_AXIS_INDEX_EDEFAULT = "";
    protected String swAxisIndex = "";
    protected boolean swAxisIndexESet;
    protected static final CalprmAxisCategoryEnum CATEGORY_EDEFAULT = CalprmAxisCategoryEnum.STD_AXIS;
    protected CalprmAxisCategoryEnum category = CATEGORY_EDEFAULT;
    protected boolean categoryESet;
    protected SwCalprmAxisTypeProps swCalprmAxisTypeProps;
    protected static final SwCalibrationAccessEnum SW_CALIBRATION_ACCESS_EDEFAULT = SwCalibrationAccessEnum.READ_ONLY;
    protected SwCalibrationAccessEnum swCalibrationAccess = SW_CALIBRATION_ACCESS_EDEFAULT;
    protected boolean swCalibrationAccessESet;
    protected static final String DISPLAY_FORMAT_EDEFAULT = "";
    protected String displayFormat = "";
    protected boolean displayFormatESet;
    protected SwBaseType baseType;

    protected SwCalprmAxisImpl() {
    }

    protected EClass eStaticClass() {
        return CalibrationparameterPackage.Literals.SW_CALPRM_AXIS;
    }

    public SwCalprmAxisSet getSwCalprmAxisSet() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (SwCalprmAxisSet)this.eContainer();
    }

    public NotificationChain basicSetSwCalprmAxisSet(SwCalprmAxisSet newSwCalprmAxisSet, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newSwCalprmAxisSet, 4, msgs);
        return msgs;
    }

    public void setSwCalprmAxisSet(SwCalprmAxisSet newSwCalprmAxisSet) {
        if (newSwCalprmAxisSet != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newSwCalprmAxisSet != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newSwCalprmAxisSet)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newSwCalprmAxisSet != null) {
                msgs = ((InternalEObject)newSwCalprmAxisSet).eInverseAdd((InternalEObject)this, 5, SwCalprmAxisSet.class, msgs);
            }
            if ((msgs = this.basicSetSwCalprmAxisSet(newSwCalprmAxisSet, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newSwCalprmAxisSet, (Object)newSwCalprmAxisSet));
        }
    }

    public String getSwAxisIndex() {
        return this.swAxisIndex;
    }

    public void setSwAxisIndex(String newSwAxisIndex) {
        String oldSwAxisIndex = this.swAxisIndex;
        this.swAxisIndex = newSwAxisIndex;
        boolean oldSwAxisIndexESet = this.swAxisIndexESet;
        this.swAxisIndexESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldSwAxisIndex, (Object)this.swAxisIndex, !oldSwAxisIndexESet));
        }
    }

    public void unsetSwAxisIndex() {
        String oldSwAxisIndex = this.swAxisIndex;
        boolean oldSwAxisIndexESet = this.swAxisIndexESet;
        this.swAxisIndex = "";
        this.swAxisIndexESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldSwAxisIndex, (Object)"", oldSwAxisIndexESet));
        }
    }

    public boolean isSetSwAxisIndex() {
        return this.swAxisIndexESet;
    }

    public CalprmAxisCategoryEnum getCategory() {
        return this.category;
    }

    public void setCategory(CalprmAxisCategoryEnum newCategory) {
        CalprmAxisCategoryEnum oldCategory = this.category;
        this.category = newCategory == null ? CATEGORY_EDEFAULT : newCategory;
        boolean oldCategoryESet = this.categoryESet;
        this.categoryESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldCategory, (Object)this.category, !oldCategoryESet));
        }
    }

    public void unsetCategory() {
        CalprmAxisCategoryEnum oldCategory = this.category;
        boolean oldCategoryESet = this.categoryESet;
        this.category = CATEGORY_EDEFAULT;
        this.categoryESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldCategory, (Object)CATEGORY_EDEFAULT, oldCategoryESet));
        }
    }

    public boolean isSetCategory() {
        return this.categoryESet;
    }

    public SwCalprmAxisTypeProps getSwCalprmAxisTypeProps() {
        return this.swCalprmAxisTypeProps;
    }

    public NotificationChain basicSetSwCalprmAxisTypeProps(SwCalprmAxisTypeProps newSwCalprmAxisTypeProps, NotificationChain msgs) {
        SwCalprmAxisTypeProps oldSwCalprmAxisTypeProps = this.swCalprmAxisTypeProps;
        this.swCalprmAxisTypeProps = newSwCalprmAxisTypeProps;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldSwCalprmAxisTypeProps, (Object)newSwCalprmAxisTypeProps);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setSwCalprmAxisTypeProps(SwCalprmAxisTypeProps newSwCalprmAxisTypeProps) {
        if (newSwCalprmAxisTypeProps != this.swCalprmAxisTypeProps) {
            NotificationChain msgs = null;
            if (this.swCalprmAxisTypeProps != null) {
                msgs = ((InternalEObject)this.swCalprmAxisTypeProps).eInverseRemove((InternalEObject)this, 4, SwCalprmAxisTypeProps.class, msgs);
            }
            if (newSwCalprmAxisTypeProps != null) {
                msgs = ((InternalEObject)newSwCalprmAxisTypeProps).eInverseAdd((InternalEObject)this, 4, SwCalprmAxisTypeProps.class, msgs);
            }
            if ((msgs = this.basicSetSwCalprmAxisTypeProps(newSwCalprmAxisTypeProps, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)newSwCalprmAxisTypeProps, (Object)newSwCalprmAxisTypeProps));
        }
    }

    public SwCalibrationAccessEnum getSwCalibrationAccess() {
        return this.swCalibrationAccess;
    }

    public void setSwCalibrationAccess(SwCalibrationAccessEnum newSwCalibrationAccess) {
        SwCalibrationAccessEnum oldSwCalibrationAccess = this.swCalibrationAccess;
        this.swCalibrationAccess = newSwCalibrationAccess == null ? SW_CALIBRATION_ACCESS_EDEFAULT : newSwCalibrationAccess;
        boolean oldSwCalibrationAccessESet = this.swCalibrationAccessESet;
        this.swCalibrationAccessESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldSwCalibrationAccess, (Object)this.swCalibrationAccess, !oldSwCalibrationAccessESet));
        }
    }

    public void unsetSwCalibrationAccess() {
        SwCalibrationAccessEnum oldSwCalibrationAccess = this.swCalibrationAccess;
        boolean oldSwCalibrationAccessESet = this.swCalibrationAccessESet;
        this.swCalibrationAccess = SW_CALIBRATION_ACCESS_EDEFAULT;
        this.swCalibrationAccessESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 8, (Object)oldSwCalibrationAccess, (Object)SW_CALIBRATION_ACCESS_EDEFAULT, oldSwCalibrationAccessESet));
        }
    }

    public boolean isSetSwCalibrationAccess() {
        return this.swCalibrationAccessESet;
    }

    public String getDisplayFormat() {
        return this.displayFormat;
    }

    public void setDisplayFormat(String newDisplayFormat) {
        String oldDisplayFormat = this.displayFormat;
        this.displayFormat = newDisplayFormat;
        boolean oldDisplayFormatESet = this.displayFormatESet;
        this.displayFormatESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldDisplayFormat, (Object)this.displayFormat, !oldDisplayFormatESet));
        }
    }

    public void unsetDisplayFormat() {
        String oldDisplayFormat = this.displayFormat;
        boolean oldDisplayFormatESet = this.displayFormatESet;
        this.displayFormat = "";
        this.displayFormatESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 9, (Object)oldDisplayFormat, (Object)"", oldDisplayFormatESet));
        }
    }

    public boolean isSetDisplayFormat() {
        return this.displayFormatESet;
    }

    public SwBaseType getBaseType() {
        if (this.baseType != null && this.baseType.eIsProxy()) {
            InternalEObject oldBaseType = (InternalEObject)this.baseType;
            this.baseType = (SwBaseType)this.eResolveProxy(oldBaseType);
            if (this.baseType != oldBaseType && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 10, (Object)oldBaseType, (Object)this.baseType));
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
        AutosarObjectUtil.setDest((EObject)this, (int)10, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldBaseType, (Object)this.baseType));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetSwCalprmAxisSet((SwCalprmAxisSet)otherEnd, msgs);
            }
            case 7: {
                if (this.swCalprmAxisTypeProps != null) {
                    msgs = ((InternalEObject)this.swCalprmAxisTypeProps).eInverseRemove((InternalEObject)this, -8, null, msgs);
                }
                return this.basicSetSwCalprmAxisTypeProps((SwCalprmAxisTypeProps)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetSwCalprmAxisSet(null, msgs);
            }
            case 7: {
                return this.basicSetSwCalprmAxisTypeProps(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 5, SwCalprmAxisSet.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getSwCalprmAxisSet();
            }
            case 5: {
                return this.getSwAxisIndex();
            }
            case 6: {
                return this.getCategory();
            }
            case 7: {
                return this.getSwCalprmAxisTypeProps();
            }
            case 8: {
                return this.getSwCalibrationAccess();
            }
            case 9: {
                return this.getDisplayFormat();
            }
            case 10: {
                if (resolve) {
                    return this.getBaseType();
                }
                return this.basicGetBaseType();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setSwCalprmAxisSet((SwCalprmAxisSet)newValue);
                return;
            }
            case 5: {
                this.setSwAxisIndex((String)newValue);
                return;
            }
            case 6: {
                this.setCategory((CalprmAxisCategoryEnum)((Object)newValue));
                return;
            }
            case 7: {
                this.setSwCalprmAxisTypeProps((SwCalprmAxisTypeProps)newValue);
                return;
            }
            case 8: {
                this.setSwCalibrationAccess((SwCalibrationAccessEnum)((Object)newValue));
                return;
            }
            case 9: {
                this.setDisplayFormat((String)newValue);
                return;
            }
            case 10: {
                this.setBaseType((SwBaseType)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setSwCalprmAxisSet(null);
                return;
            }
            case 5: {
                this.unsetSwAxisIndex();
                return;
            }
            case 6: {
                this.unsetCategory();
                return;
            }
            case 7: {
                this.setSwCalprmAxisTypeProps(null);
                return;
            }
            case 8: {
                this.unsetSwCalibrationAccess();
                return;
            }
            case 9: {
                this.unsetDisplayFormat();
                return;
            }
            case 10: {
                this.setBaseType(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getSwCalprmAxisSet() != null;
            }
            case 5: {
                return this.isSetSwAxisIndex();
            }
            case 6: {
                return this.isSetCategory();
            }
            case 7: {
                return this.swCalprmAxisTypeProps != null;
            }
            case 8: {
                return this.isSetSwCalibrationAccess();
            }
            case 9: {
                return this.isSetDisplayFormat();
            }
            case 10: {
                return this.baseType != null;
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
        result.append(" (swAxisIndex: ");
        if (this.swAxisIndexESet) {
            result.append(this.swAxisIndex);
        } else {
            result.append("<unset>");
        }
        result.append(", category: ");
        if (this.categoryESet) {
            result.append((Object)this.category);
        } else {
            result.append("<unset>");
        }
        result.append(", swCalibrationAccess: ");
        if (this.swCalibrationAccessESet) {
            result.append((Object)this.swCalibrationAccess);
        } else {
            result.append("<unset>");
        }
        result.append(", displayFormat: ");
        if (this.displayFormatESet) {
            result.append(this.displayFormat);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

