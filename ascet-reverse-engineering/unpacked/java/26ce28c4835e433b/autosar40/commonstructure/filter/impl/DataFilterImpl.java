/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
 *  org.artop.aal.common.datatypes.UnlimitedIntegerDatatype
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.util.DiagnosticChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.commonstructure.filter.impl;

import autosar40.commonstructure.filter.DataFilter;
import autosar40.commonstructure.filter.DataFilterTypeEnum;
import autosar40.commonstructure.filter.FilterPackage;
import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import java.math.BigInteger;
import java.util.Map;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;
import org.artop.aal.common.datatypes.UnlimitedIntegerDatatype;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.util.DiagnosticChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class DataFilterImpl
extends ARObjectImpl
implements DataFilter {
    protected static final DataFilterTypeEnum DATA_FILTER_TYPE_EDEFAULT = DataFilterTypeEnum.ALWAYS;
    protected DataFilterTypeEnum dataFilterType = DATA_FILTER_TYPE_EDEFAULT;
    protected boolean dataFilterTypeESet;
    protected static final UnlimitedIntegerDatatype MASK_EDEFAULT = new UnlimitedIntegerDatatype(new BigInteger("0"));
    protected UnlimitedIntegerDatatype mask = MASK_EDEFAULT.clone();
    protected boolean maskESet;
    protected static final UnlimitedIntegerDatatype MAX_EDEFAULT = new UnlimitedIntegerDatatype(new BigInteger("0"));
    protected UnlimitedIntegerDatatype max = MAX_EDEFAULT.clone();
    protected boolean maxESet;
    protected static final UnlimitedIntegerDatatype MIN_EDEFAULT = new UnlimitedIntegerDatatype(new BigInteger("0"));
    protected UnlimitedIntegerDatatype min = MIN_EDEFAULT.clone();
    protected boolean minESet;
    protected static final PositiveIntegerDatatype OFFSET_EDEFAULT = new PositiveIntegerDatatype(new Long(0L).longValue());
    protected PositiveIntegerDatatype offset = OFFSET_EDEFAULT.clone();
    protected boolean offsetESet;
    protected static final PositiveIntegerDatatype PERIOD_EDEFAULT = new PositiveIntegerDatatype(new Long(0L).longValue());
    protected PositiveIntegerDatatype period = PERIOD_EDEFAULT.clone();
    protected boolean periodESet;
    protected static final UnlimitedIntegerDatatype X_EDEFAULT = new UnlimitedIntegerDatatype(new BigInteger("0"));
    protected UnlimitedIntegerDatatype x = X_EDEFAULT.clone();
    protected boolean xESet;

    protected DataFilterImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return FilterPackage.Literals.DATA_FILTER;
    }

    @Override
    public DataFilterTypeEnum getDataFilterType() {
        return this.dataFilterType;
    }

    @Override
    public void setDataFilterType(DataFilterTypeEnum newDataFilterType) {
        DataFilterTypeEnum oldDataFilterType = this.dataFilterType;
        this.dataFilterType = newDataFilterType == null ? DATA_FILTER_TYPE_EDEFAULT : newDataFilterType;
        boolean oldDataFilterTypeESet = this.dataFilterTypeESet;
        this.dataFilterTypeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldDataFilterType, (Object)this.dataFilterType, !oldDataFilterTypeESet));
        }
    }

    @Override
    public void unsetDataFilterType() {
        DataFilterTypeEnum oldDataFilterType = this.dataFilterType;
        boolean oldDataFilterTypeESet = this.dataFilterTypeESet;
        this.dataFilterType = DATA_FILTER_TYPE_EDEFAULT;
        this.dataFilterTypeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 4, (Object)oldDataFilterType, (Object)DATA_FILTER_TYPE_EDEFAULT, oldDataFilterTypeESet));
        }
    }

    @Override
    public boolean isSetDataFilterType() {
        return this.dataFilterTypeESet;
    }

    @Override
    public BigInteger getMask() {
        return (BigInteger)this.mask.basicGetValue();
    }

    @Override
    public void setMask(BigInteger newMask) {
        BigInteger oldMask = (BigInteger)this.mask.basicGetValue();
        this.mask.basicSetValue((Object)newMask);
        boolean oldMaskESet = this.maskESet;
        this.maskESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldMask, (Object)newMask, !oldMaskESet));
        }
    }

    @Override
    public void unsetMask() {
        BigInteger oldMask = (BigInteger)this.mask.basicGetValue();
        boolean oldMaskESet = this.maskESet;
        this.mask = MASK_EDEFAULT.clone();
        this.maskESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldMask, (Object)MASK_EDEFAULT, oldMaskESet));
        }
    }

    @Override
    public boolean isSetMask() {
        return this.maskESet;
    }

    @Override
    public BigInteger getMax() {
        return (BigInteger)this.max.basicGetValue();
    }

    @Override
    public void setMax(BigInteger newMax) {
        BigInteger oldMax = (BigInteger)this.max.basicGetValue();
        this.max.basicSetValue((Object)newMax);
        boolean oldMaxESet = this.maxESet;
        this.maxESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldMax, (Object)newMax, !oldMaxESet));
        }
    }

    @Override
    public void unsetMax() {
        BigInteger oldMax = (BigInteger)this.max.basicGetValue();
        boolean oldMaxESet = this.maxESet;
        this.max = MAX_EDEFAULT.clone();
        this.maxESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldMax, (Object)MAX_EDEFAULT, oldMaxESet));
        }
    }

    @Override
    public boolean isSetMax() {
        return this.maxESet;
    }

    @Override
    public BigInteger getMin() {
        return (BigInteger)this.min.basicGetValue();
    }

    @Override
    public void setMin(BigInteger newMin) {
        BigInteger oldMin = (BigInteger)this.min.basicGetValue();
        this.min.basicSetValue((Object)newMin);
        boolean oldMinESet = this.minESet;
        this.minESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldMin, (Object)newMin, !oldMinESet));
        }
    }

    @Override
    public void unsetMin() {
        BigInteger oldMin = (BigInteger)this.min.basicGetValue();
        boolean oldMinESet = this.minESet;
        this.min = MIN_EDEFAULT.clone();
        this.minESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 7, (Object)oldMin, (Object)MIN_EDEFAULT, oldMinESet));
        }
    }

    @Override
    public boolean isSetMin() {
        return this.minESet;
    }

    @Override
    public Long getOffset() {
        return (Long)this.offset.basicGetValue();
    }

    @Override
    public void setOffset(Long newOffset) {
        Long oldOffset = (Long)this.offset.basicGetValue();
        this.offset.basicSetValue((Object)newOffset);
        boolean oldOffsetESet = this.offsetESet;
        this.offsetESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldOffset, (Object)newOffset, !oldOffsetESet));
        }
    }

    @Override
    public void unsetOffset() {
        Long oldOffset = (Long)this.offset.basicGetValue();
        boolean oldOffsetESet = this.offsetESet;
        this.offset = OFFSET_EDEFAULT.clone();
        this.offsetESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 8, (Object)oldOffset, (Object)OFFSET_EDEFAULT, oldOffsetESet));
        }
    }

    @Override
    public boolean isSetOffset() {
        return this.offsetESet;
    }

    @Override
    public Long getPeriod() {
        return (Long)this.period.basicGetValue();
    }

    @Override
    public void setPeriod(Long newPeriod) {
        Long oldPeriod = (Long)this.period.basicGetValue();
        this.period.basicSetValue((Object)newPeriod);
        boolean oldPeriodESet = this.periodESet;
        this.periodESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldPeriod, (Object)newPeriod, !oldPeriodESet));
        }
    }

    @Override
    public void unsetPeriod() {
        Long oldPeriod = (Long)this.period.basicGetValue();
        boolean oldPeriodESet = this.periodESet;
        this.period = PERIOD_EDEFAULT.clone();
        this.periodESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 9, (Object)oldPeriod, (Object)PERIOD_EDEFAULT, oldPeriodESet));
        }
    }

    @Override
    public boolean isSetPeriod() {
        return this.periodESet;
    }

    @Override
    public BigInteger getX() {
        return (BigInteger)this.x.basicGetValue();
    }

    @Override
    public void setX(BigInteger newX) {
        BigInteger oldX = (BigInteger)this.x.basicGetValue();
        this.x.basicSetValue((Object)newX);
        boolean oldXESet = this.xESet;
        this.xESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldX, (Object)newX, !oldXESet));
        }
    }

    @Override
    public void unsetX() {
        BigInteger oldX = (BigInteger)this.x.basicGetValue();
        boolean oldXESet = this.xESet;
        this.x = X_EDEFAULT.clone();
        this.xESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 10, (Object)oldX, (Object)X_EDEFAULT, oldXESet));
        }
    }

    @Override
    public boolean isSetX() {
        return this.xESet;
    }

    @Override
    public boolean mask0(DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    @Override
    public boolean Periodgreater0(DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    @Override
    public UnlimitedIntegerDatatype getMaskData() {
        return this.mask.clone();
    }

    @Override
    public void setMaskData(UnlimitedIntegerDatatype newMask) {
        this.mask.setRadix((int)newMask.getRadix());
        this.mask.setNoOfDigits((int)newMask.getNoOfDigits());
        this.setMask(newMask.getValue());
    }

    @Override
    public UnlimitedIntegerDatatype getMaxData() {
        return this.max.clone();
    }

    @Override
    public void setMaxData(UnlimitedIntegerDatatype newMax) {
        this.max.setRadix((int)newMax.getRadix());
        this.max.setNoOfDigits((int)newMax.getNoOfDigits());
        this.setMax(newMax.getValue());
    }

    @Override
    public UnlimitedIntegerDatatype getMinData() {
        return this.min.clone();
    }

    @Override
    public void setMinData(UnlimitedIntegerDatatype newMin) {
        this.min.setRadix((int)newMin.getRadix());
        this.min.setNoOfDigits((int)newMin.getNoOfDigits());
        this.setMin(newMin.getValue());
    }

    @Override
    public PositiveIntegerDatatype getOffsetData() {
        return this.offset.clone();
    }

    @Override
    public void setOffsetData(PositiveIntegerDatatype newOffset) {
        this.offset.setRadix((int)newOffset.getRadix());
        this.offset.setNoOfDigits((int)newOffset.getNoOfDigits());
        this.setOffset(newOffset.getValue());
    }

    @Override
    public PositiveIntegerDatatype getPeriodData() {
        return this.period.clone();
    }

    @Override
    public void setPeriodData(PositiveIntegerDatatype newPeriod) {
        this.period.setRadix((int)newPeriod.getRadix());
        this.period.setNoOfDigits((int)newPeriod.getNoOfDigits());
        this.setPeriod(newPeriod.getValue());
    }

    @Override
    public UnlimitedIntegerDatatype getXData() {
        return this.x.clone();
    }

    @Override
    public void setXData(UnlimitedIntegerDatatype newX) {
        this.x.setRadix((int)newX.getRadix());
        this.x.setNoOfDigits((int)newX.getNoOfDigits());
        this.setX(newX.getValue());
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getDataFilterType();
            }
            case 5: {
                return this.getMask();
            }
            case 6: {
                return this.getMax();
            }
            case 7: {
                return this.getMin();
            }
            case 8: {
                return this.getOffset();
            }
            case 9: {
                return this.getPeriod();
            }
            case 10: {
                return this.getX();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setDataFilterType((DataFilterTypeEnum)((Object)newValue));
                return;
            }
            case 5: {
                this.setMask((BigInteger)newValue);
                return;
            }
            case 6: {
                this.setMax((BigInteger)newValue);
                return;
            }
            case 7: {
                this.setMin((BigInteger)newValue);
                return;
            }
            case 8: {
                this.setOffset((Long)newValue);
                return;
            }
            case 9: {
                this.setPeriod((Long)newValue);
                return;
            }
            case 10: {
                this.setX((BigInteger)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.unsetDataFilterType();
                return;
            }
            case 5: {
                this.unsetMask();
                return;
            }
            case 6: {
                this.unsetMax();
                return;
            }
            case 7: {
                this.unsetMin();
                return;
            }
            case 8: {
                this.unsetOffset();
                return;
            }
            case 9: {
                this.unsetPeriod();
                return;
            }
            case 10: {
                this.unsetX();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.isSetDataFilterType();
            }
            case 5: {
                return this.isSetMask();
            }
            case 6: {
                return this.isSetMax();
            }
            case 7: {
                return this.isSetMin();
            }
            case 8: {
                return this.isSetOffset();
            }
            case 9: {
                return this.isSetPeriod();
            }
            case 10: {
                return this.isSetX();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (dataFilterType: ");
        if (this.dataFilterTypeESet) {
            result.append((Object)this.dataFilterType);
        } else {
            result.append("<unset>");
        }
        result.append(", mask: ");
        if (this.maskESet) {
            result.append(this.mask);
        } else {
            result.append("<unset>");
        }
        result.append(", max: ");
        if (this.maxESet) {
            result.append(this.max);
        } else {
            result.append("<unset>");
        }
        result.append(", min: ");
        if (this.minESet) {
            result.append(this.min);
        } else {
            result.append("<unset>");
        }
        result.append(", offset: ");
        if (this.offsetESet) {
            result.append(this.offset);
        } else {
            result.append("<unset>");
        }
        result.append(", period: ");
        if (this.periodESet) {
            result.append(this.period);
        } else {
            result.append("<unset>");
        }
        result.append(", x: ");
        if (this.xESet) {
            result.append(this.x);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

