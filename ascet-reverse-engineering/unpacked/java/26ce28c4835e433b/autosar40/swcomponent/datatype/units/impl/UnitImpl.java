/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gdatatype.gunits.GPhysicalDimension
 *  gautosar.gswcomponents.gdatatype.gunits.GUnit
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.swcomponent.datatype.units.impl;

import autosar40.genericstructure.generaltemplateclasses.arpackage.impl.ARElementImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.singlelanguagedata.SingleLanguageUnitNames;
import autosar40.swcomponent.datatype.units.PhysicalDimension;
import autosar40.swcomponent.datatype.units.Unit;
import autosar40.swcomponent.datatype.units.UnitsPackage;
import gautosar.gswcomponents.gdatatype.gunits.GPhysicalDimension;
import gautosar.gswcomponents.gdatatype.gunits.GUnit;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class UnitImpl
extends ARElementImpl
implements Unit,
IReferringClass {
    protected static final Double GFACTOR_SI_TO_UNIT_EDEFAULT = null;
    protected static final Double GOFFSET_SI_TO_UNIT_EDEFAULT = null;
    protected SingleLanguageUnitNames displayName;
    protected static final Double FACTOR_SI_TO_UNIT_EDEFAULT = new Double(0.0);
    protected Double factorSiToUnit = FACTOR_SI_TO_UNIT_EDEFAULT;
    protected boolean factorSiToUnitESet;
    protected static final Double OFFSET_SI_TO_UNIT_EDEFAULT = new Double(0.0);
    protected Double offsetSiToUnit = OFFSET_SI_TO_UNIT_EDEFAULT;
    protected boolean offsetSiToUnitESet;
    protected PhysicalDimension physicalDimension;

    protected UnitImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return UnitsPackage.Literals.UNIT;
    }

    public GPhysicalDimension gGetPhysicalDimension() {
        return this.getPhysicalDimension();
    }

    public void gSetPhysicalDimension(GPhysicalDimension newGPhysicalDimension) {
        this.setPhysicalDimension((PhysicalDimension)newGPhysicalDimension);
    }

    public Double gGetFactorSiToUnit() {
        Double tgtFeatureValue = this.getFactorSiToUnit();
        return tgtFeatureValue;
    }

    public void gSetFactorSiToUnit(Double newGFactorSiToUnit) {
        this.setFactorSiToUnit(newGFactorSiToUnit);
    }

    public void gUnsetFactorSiToUnit() {
        this.unsetFactorSiToUnit();
    }

    public boolean gIsSetFactorSiToUnit() {
        return this.isSetFactorSiToUnit();
    }

    public Double gGetOffsetSiToUnit() {
        Double tgtFeatureValue = this.getOffsetSiToUnit();
        return tgtFeatureValue;
    }

    public void gSetOffsetSiToUnit(Double newGOffsetSiToUnit) {
        this.setOffsetSiToUnit(newGOffsetSiToUnit);
    }

    public void gUnsetOffsetSiToUnit() {
        this.unsetOffsetSiToUnit();
    }

    public boolean gIsSetOffsetSiToUnit() {
        return this.isSetOffsetSiToUnit();
    }

    @Override
    public SingleLanguageUnitNames getDisplayName() {
        return this.displayName;
    }

    public NotificationChain basicSetDisplayName(SingleLanguageUnitNames newDisplayName, NotificationChain msgs) {
        SingleLanguageUnitNames oldDisplayName = this.displayName;
        this.displayName = newDisplayName;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldDisplayName, (Object)newDisplayName);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setDisplayName(SingleLanguageUnitNames newDisplayName) {
        if (newDisplayName != this.displayName) {
            NotificationChain msgs = null;
            if (this.displayName != null) {
                msgs = ((InternalEObject)this.displayName).eInverseRemove((InternalEObject)this, -25, null, msgs);
            }
            if (newDisplayName != null) {
                msgs = ((InternalEObject)newDisplayName).eInverseAdd((InternalEObject)this, -25, null, msgs);
            }
            if ((msgs = this.basicSetDisplayName(newDisplayName, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)newDisplayName, (Object)newDisplayName));
        }
    }

    @Override
    public Double getFactorSiToUnit() {
        return this.factorSiToUnit;
    }

    @Override
    public void setFactorSiToUnit(Double newFactorSiToUnit) {
        Double oldFactorSiToUnit = this.factorSiToUnit;
        this.factorSiToUnit = newFactorSiToUnit;
        boolean oldFactorSiToUnitESet = this.factorSiToUnitESet;
        this.factorSiToUnitESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 25, (Object)oldFactorSiToUnit, (Object)this.factorSiToUnit, !oldFactorSiToUnitESet));
        }
    }

    @Override
    public void unsetFactorSiToUnit() {
        Double oldFactorSiToUnit = this.factorSiToUnit;
        boolean oldFactorSiToUnitESet = this.factorSiToUnitESet;
        this.factorSiToUnit = FACTOR_SI_TO_UNIT_EDEFAULT;
        this.factorSiToUnitESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 25, (Object)oldFactorSiToUnit, (Object)FACTOR_SI_TO_UNIT_EDEFAULT, oldFactorSiToUnitESet));
        }
    }

    @Override
    public boolean isSetFactorSiToUnit() {
        return this.factorSiToUnitESet;
    }

    @Override
    public Double getOffsetSiToUnit() {
        return this.offsetSiToUnit;
    }

    @Override
    public void setOffsetSiToUnit(Double newOffsetSiToUnit) {
        Double oldOffsetSiToUnit = this.offsetSiToUnit;
        this.offsetSiToUnit = newOffsetSiToUnit;
        boolean oldOffsetSiToUnitESet = this.offsetSiToUnitESet;
        this.offsetSiToUnitESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 26, (Object)oldOffsetSiToUnit, (Object)this.offsetSiToUnit, !oldOffsetSiToUnitESet));
        }
    }

    @Override
    public void unsetOffsetSiToUnit() {
        Double oldOffsetSiToUnit = this.offsetSiToUnit;
        boolean oldOffsetSiToUnitESet = this.offsetSiToUnitESet;
        this.offsetSiToUnit = OFFSET_SI_TO_UNIT_EDEFAULT;
        this.offsetSiToUnitESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 26, (Object)oldOffsetSiToUnit, (Object)OFFSET_SI_TO_UNIT_EDEFAULT, oldOffsetSiToUnitESet));
        }
    }

    @Override
    public boolean isSetOffsetSiToUnit() {
        return this.offsetSiToUnitESet;
    }

    @Override
    public PhysicalDimension getPhysicalDimension() {
        if (this.physicalDimension != null && this.physicalDimension.eIsProxy()) {
            InternalEObject oldPhysicalDimension = (InternalEObject)this.physicalDimension;
            this.physicalDimension = (PhysicalDimension)this.eResolveProxy(oldPhysicalDimension);
            if (this.physicalDimension != oldPhysicalDimension && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 27, (Object)oldPhysicalDimension, (Object)this.physicalDimension));
            }
        }
        return this.physicalDimension;
    }

    public PhysicalDimension basicGetPhysicalDimension() {
        return this.physicalDimension;
    }

    @Override
    public void setPhysicalDimension(PhysicalDimension newPhysicalDimension) {
        PhysicalDimension oldPhysicalDimension = this.physicalDimension;
        this.physicalDimension = newPhysicalDimension;
        AutosarObjectUtil.setDest((EObject)this, (int)27, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 27, (Object)oldPhysicalDimension, (Object)this.physicalDimension));
        }
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 24: {
                return this.basicSetDisplayName(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 21: {
                return this.gGetPhysicalDimension();
            }
            case 22: {
                return this.gGetFactorSiToUnit();
            }
            case 23: {
                return this.gGetOffsetSiToUnit();
            }
            case 24: {
                return this.getDisplayName();
            }
            case 25: {
                return this.getFactorSiToUnit();
            }
            case 26: {
                return this.getOffsetSiToUnit();
            }
            case 27: {
                if (resolve) {
                    return this.getPhysicalDimension();
                }
                return this.basicGetPhysicalDimension();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 21: {
                this.gSetPhysicalDimension((GPhysicalDimension)newValue);
                return;
            }
            case 22: {
                this.gSetFactorSiToUnit((Double)newValue);
                return;
            }
            case 23: {
                this.gSetOffsetSiToUnit((Double)newValue);
                return;
            }
            case 24: {
                this.setDisplayName((SingleLanguageUnitNames)newValue);
                return;
            }
            case 25: {
                this.setFactorSiToUnit((Double)newValue);
                return;
            }
            case 26: {
                this.setOffsetSiToUnit((Double)newValue);
                return;
            }
            case 27: {
                this.setPhysicalDimension((PhysicalDimension)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 21: {
                this.gSetPhysicalDimension(null);
                return;
            }
            case 22: {
                this.gUnsetFactorSiToUnit();
                return;
            }
            case 23: {
                this.gUnsetOffsetSiToUnit();
                return;
            }
            case 24: {
                this.setDisplayName(null);
                return;
            }
            case 25: {
                this.unsetFactorSiToUnit();
                return;
            }
            case 26: {
                this.unsetOffsetSiToUnit();
                return;
            }
            case 27: {
                this.setPhysicalDimension(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 21: {
                return this.gGetPhysicalDimension() != null;
            }
            case 22: {
                return this.gIsSetFactorSiToUnit();
            }
            case 23: {
                return this.gIsSetOffsetSiToUnit();
            }
            case 24: {
                return this.displayName != null;
            }
            case 25: {
                return this.isSetFactorSiToUnit();
            }
            case 26: {
                return this.isSetOffsetSiToUnit();
            }
            case 27: {
                return this.physicalDimension != null;
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GUnit.class) {
            switch (derivedFeatureID) {
                case 21: {
                    return 7;
                }
                case 22: {
                    return 8;
                }
                case 23: {
                    return 9;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    @Override
    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == GUnit.class) {
            switch (baseFeatureID) {
                case 7: {
                    return 21;
                }
                case 8: {
                    return 22;
                }
                case 9: {
                    return 23;
                }
            }
            return -1;
        }
        return super.eDerivedStructuralFeatureID(baseFeatureID, baseClass);
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

    @Override
    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (factorSiToUnit: ");
        if (this.factorSiToUnitESet) {
            result.append(this.factorSiToUnit);
        } else {
            result.append("<unset>");
        }
        result.append(", offsetSiToUnit: ");
        if (this.offsetSiToUnitESet) {
            result.append(this.offsetSiToUnit);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

