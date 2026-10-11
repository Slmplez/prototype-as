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
package autosar40.commonstructure.calibrationvalue.impl;

import autosar40.commonstructure.calibrationparameter.CalprmAxisCategoryEnum;
import autosar40.commonstructure.calibrationvalue.CalibrationvaluePackage;
import autosar40.commonstructure.calibrationvalue.SwAxisCont;
import autosar40.commonstructure.calibrationvalue.SwValues;
import autosar40.commonstructure.constants.ApplicationValueSpecification;
import autosar40.commonstructure.datadefproperties.ValueList;
import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.singlelanguagedata.SingleLanguageUnitNames;
import autosar40.swcomponent.datatype.units.Unit;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class SwAxisContImpl
extends ARObjectImpl
implements SwAxisCont,
IReferringClass {
    protected static final CalprmAxisCategoryEnum CATEGORY_EDEFAULT = CalprmAxisCategoryEnum.STD_AXIS;
    protected CalprmAxisCategoryEnum category = CATEGORY_EDEFAULT;
    protected boolean categoryESet;
    protected Unit unit;
    protected SingleLanguageUnitNames unitDisplayName;
    protected static final String SW_AXIS_INDEX_EDEFAULT = "";
    protected String swAxisIndex = "";
    protected boolean swAxisIndexESet;
    protected ValueList swArraysize;
    protected SwValues swValuesPhys;

    protected SwAxisContImpl() {
    }

    protected EClass eStaticClass() {
        return CalibrationvaluePackage.Literals.SW_AXIS_CONT;
    }

    public ApplicationValueSpecification getApplicationValueSpecification() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (ApplicationValueSpecification)this.eContainer();
    }

    public NotificationChain basicSetApplicationValueSpecification(ApplicationValueSpecification newApplicationValueSpecification, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newApplicationValueSpecification, 4, msgs);
        return msgs;
    }

    public void setApplicationValueSpecification(ApplicationValueSpecification newApplicationValueSpecification) {
        if (newApplicationValueSpecification != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newApplicationValueSpecification != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newApplicationValueSpecification)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newApplicationValueSpecification != null) {
                msgs = ((InternalEObject)newApplicationValueSpecification).eInverseAdd((InternalEObject)this, 7, ApplicationValueSpecification.class, msgs);
            }
            if ((msgs = this.basicSetApplicationValueSpecification(newApplicationValueSpecification, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newApplicationValueSpecification, (Object)newApplicationValueSpecification));
        }
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldCategory, (Object)this.category, !oldCategoryESet));
        }
    }

    public void unsetCategory() {
        CalprmAxisCategoryEnum oldCategory = this.category;
        boolean oldCategoryESet = this.categoryESet;
        this.category = CATEGORY_EDEFAULT;
        this.categoryESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldCategory, (Object)CATEGORY_EDEFAULT, oldCategoryESet));
        }
    }

    public boolean isSetCategory() {
        return this.categoryESet;
    }

    public Unit getUnit() {
        if (this.unit != null && this.unit.eIsProxy()) {
            InternalEObject oldUnit = (InternalEObject)this.unit;
            this.unit = (Unit)this.eResolveProxy(oldUnit);
            if (this.unit != oldUnit && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 6, (Object)oldUnit, (Object)this.unit));
            }
        }
        return this.unit;
    }

    public Unit basicGetUnit() {
        return this.unit;
    }

    public void setUnit(Unit newUnit) {
        Unit oldUnit = this.unit;
        this.unit = newUnit;
        AutosarObjectUtil.setDest((EObject)this, (int)6, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldUnit, (Object)this.unit));
        }
    }

    public SingleLanguageUnitNames getUnitDisplayName() {
        return this.unitDisplayName;
    }

    public NotificationChain basicSetUnitDisplayName(SingleLanguageUnitNames newUnitDisplayName, NotificationChain msgs) {
        SingleLanguageUnitNames oldUnitDisplayName = this.unitDisplayName;
        this.unitDisplayName = newUnitDisplayName;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldUnitDisplayName, (Object)newUnitDisplayName);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setUnitDisplayName(SingleLanguageUnitNames newUnitDisplayName) {
        if (newUnitDisplayName != this.unitDisplayName) {
            NotificationChain msgs = null;
            if (this.unitDisplayName != null) {
                msgs = ((InternalEObject)this.unitDisplayName).eInverseRemove((InternalEObject)this, -8, null, msgs);
            }
            if (newUnitDisplayName != null) {
                msgs = ((InternalEObject)newUnitDisplayName).eInverseAdd((InternalEObject)this, -8, null, msgs);
            }
            if ((msgs = this.basicSetUnitDisplayName(newUnitDisplayName, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)newUnitDisplayName, (Object)newUnitDisplayName));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldSwAxisIndex, (Object)this.swAxisIndex, !oldSwAxisIndexESet));
        }
    }

    public void unsetSwAxisIndex() {
        String oldSwAxisIndex = this.swAxisIndex;
        boolean oldSwAxisIndexESet = this.swAxisIndexESet;
        this.swAxisIndex = SW_AXIS_INDEX_EDEFAULT;
        this.swAxisIndexESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 8, (Object)oldSwAxisIndex, (Object)SW_AXIS_INDEX_EDEFAULT, oldSwAxisIndexESet));
        }
    }

    public boolean isSetSwAxisIndex() {
        return this.swAxisIndexESet;
    }

    public ValueList getSwArraysize() {
        return this.swArraysize;
    }

    public NotificationChain basicSetSwArraysize(ValueList newSwArraysize, NotificationChain msgs) {
        ValueList oldSwArraysize = this.swArraysize;
        this.swArraysize = newSwArraysize;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldSwArraysize, (Object)newSwArraysize);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setSwArraysize(ValueList newSwArraysize) {
        if (newSwArraysize != this.swArraysize) {
            NotificationChain msgs = null;
            if (this.swArraysize != null) {
                msgs = ((InternalEObject)this.swArraysize).eInverseRemove((InternalEObject)this, -10, null, msgs);
            }
            if (newSwArraysize != null) {
                msgs = ((InternalEObject)newSwArraysize).eInverseAdd((InternalEObject)this, -10, null, msgs);
            }
            if ((msgs = this.basicSetSwArraysize(newSwArraysize, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)newSwArraysize, (Object)newSwArraysize));
        }
    }

    public SwValues getSwValuesPhys() {
        return this.swValuesPhys;
    }

    public NotificationChain basicSetSwValuesPhys(SwValues newSwValuesPhys, NotificationChain msgs) {
        SwValues oldSwValuesPhys = this.swValuesPhys;
        this.swValuesPhys = newSwValuesPhys;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldSwValuesPhys, (Object)newSwValuesPhys);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setSwValuesPhys(SwValues newSwValuesPhys) {
        if (newSwValuesPhys != this.swValuesPhys) {
            NotificationChain msgs = null;
            if (this.swValuesPhys != null) {
                msgs = ((InternalEObject)this.swValuesPhys).eInverseRemove((InternalEObject)this, -11, null, msgs);
            }
            if (newSwValuesPhys != null) {
                msgs = ((InternalEObject)newSwValuesPhys).eInverseAdd((InternalEObject)this, -11, null, msgs);
            }
            if ((msgs = this.basicSetSwValuesPhys(newSwValuesPhys, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)newSwValuesPhys, (Object)newSwValuesPhys));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetApplicationValueSpecification((ApplicationValueSpecification)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetApplicationValueSpecification(null, msgs);
            }
            case 7: {
                return this.basicSetUnitDisplayName(null, msgs);
            }
            case 9: {
                return this.basicSetSwArraysize(null, msgs);
            }
            case 10: {
                return this.basicSetSwValuesPhys(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 7, ApplicationValueSpecification.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getApplicationValueSpecification();
            }
            case 5: {
                return this.getCategory();
            }
            case 6: {
                if (resolve) {
                    return this.getUnit();
                }
                return this.basicGetUnit();
            }
            case 7: {
                return this.getUnitDisplayName();
            }
            case 8: {
                return this.getSwAxisIndex();
            }
            case 9: {
                return this.getSwArraysize();
            }
            case 10: {
                return this.getSwValuesPhys();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setApplicationValueSpecification((ApplicationValueSpecification)newValue);
                return;
            }
            case 5: {
                this.setCategory((CalprmAxisCategoryEnum)((Object)newValue));
                return;
            }
            case 6: {
                this.setUnit((Unit)newValue);
                return;
            }
            case 7: {
                this.setUnitDisplayName((SingleLanguageUnitNames)newValue);
                return;
            }
            case 8: {
                this.setSwAxisIndex((String)newValue);
                return;
            }
            case 9: {
                this.setSwArraysize((ValueList)newValue);
                return;
            }
            case 10: {
                this.setSwValuesPhys((SwValues)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setApplicationValueSpecification(null);
                return;
            }
            case 5: {
                this.unsetCategory();
                return;
            }
            case 6: {
                this.setUnit(null);
                return;
            }
            case 7: {
                this.setUnitDisplayName(null);
                return;
            }
            case 8: {
                this.unsetSwAxisIndex();
                return;
            }
            case 9: {
                this.setSwArraysize(null);
                return;
            }
            case 10: {
                this.setSwValuesPhys(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getApplicationValueSpecification() != null;
            }
            case 5: {
                return this.isSetCategory();
            }
            case 6: {
                return this.unit != null;
            }
            case 7: {
                return this.unitDisplayName != null;
            }
            case 8: {
                return this.isSetSwAxisIndex();
            }
            case 9: {
                return this.swArraysize != null;
            }
            case 10: {
                return this.swValuesPhys != null;
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
        result.append(" (category: ");
        if (this.categoryESet) {
            result.append((Object)this.category);
        } else {
            result.append("<unset>");
        }
        result.append(", swAxisIndex: ");
        if (this.swAxisIndexESet) {
            result.append(this.swAxisIndex);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

