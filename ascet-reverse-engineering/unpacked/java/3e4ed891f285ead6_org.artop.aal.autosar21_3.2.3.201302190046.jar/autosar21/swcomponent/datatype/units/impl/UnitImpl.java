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
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar21.swcomponent.datatype.units.impl;

import autosar21.genericstructure.commonpatterns.singlelanguagedata.SlData3;
import autosar21.genericstructure.infrastructure.identifiable.impl.ARElementImpl;
import autosar21.swcomponent.datatype.units.PhysicalDimension;
import autosar21.swcomponent.datatype.units.Unit;
import autosar21.swcomponent.datatype.units.UnitSpec;
import autosar21.swcomponent.datatype.units.UnitsPackage;
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
import org.eclipse.emf.ecore.util.EcoreUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class UnitImpl
extends ARElementImpl
implements Unit,
IReferringClass {
    protected static final Double GFACTOR_SI_TO_UNIT_EDEFAULT = null;
    protected static final Double GOFFSET_SI_TO_UNIT_EDEFAULT = null;
    protected SlData3 displayName;
    protected static final String FACTOR_SI_TO_UNIT_EDEFAULT = "";
    protected String factorSiToUnit = "";
    protected boolean factorSiToUnitESet;
    protected static final String OFFSET_SI_TO_UNIT_EDEFAULT = "";
    protected String offsetSiToUnit = "";
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
        String tgtFeatureValue = this.getFactorSiToUnit();
        return new Double(tgtFeatureValue);
    }

    public void gSetFactorSiToUnit(Double newGFactorSiToUnit) {
        this.setFactorSiToUnit(newGFactorSiToUnit.toString());
    }

    public void gUnsetFactorSiToUnit() {
        this.unsetFactorSiToUnit();
    }

    public boolean gIsSetFactorSiToUnit() {
        return this.isSetFactorSiToUnit();
    }

    public Double gGetOffsetSiToUnit() {
        String tgtFeatureValue = this.getOffsetSiToUnit();
        return new Double(tgtFeatureValue);
    }

    public void gSetOffsetSiToUnit(Double newGOffsetSiToUnit) {
        this.setOffsetSiToUnit(newGOffsetSiToUnit.toString());
    }

    public void gUnsetOffsetSiToUnit() {
        this.unsetOffsetSiToUnit();
    }

    public boolean gIsSetOffsetSiToUnit() {
        return this.isSetOffsetSiToUnit();
    }

    @Override
    public UnitSpec getUnitSpec() {
        if (this.eContainerFeatureID() != 21) {
            return null;
        }
        return (UnitSpec)this.eContainer();
    }

    public NotificationChain basicSetUnitSpec(UnitSpec newUnitSpec, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newUnitSpec, 21, msgs);
        return msgs;
    }

    @Override
    public void setUnitSpec(UnitSpec newUnitSpec) {
        if (newUnitSpec != this.eInternalContainer() || this.eContainerFeatureID() != 21 && newUnitSpec != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newUnitSpec)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newUnitSpec != null) {
                msgs = ((InternalEObject)newUnitSpec).eInverseAdd((InternalEObject)this, 5, UnitSpec.class, msgs);
            }
            if ((msgs = this.basicSetUnitSpec(newUnitSpec, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)newUnitSpec, (Object)newUnitSpec));
        }
    }

    @Override
    public SlData3 getDisplayName() {
        return this.displayName;
    }

    public NotificationChain basicSetDisplayName(SlData3 newDisplayName, NotificationChain msgs) {
        SlData3 oldDisplayName = this.displayName;
        this.displayName = newDisplayName;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldDisplayName, (Object)newDisplayName);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setDisplayName(SlData3 newDisplayName) {
        if (newDisplayName != this.displayName) {
            NotificationChain msgs = null;
            if (this.displayName != null) {
                msgs = ((InternalEObject)this.displayName).eInverseRemove((InternalEObject)this, 5, SlData3.class, msgs);
            }
            if (newDisplayName != null) {
                msgs = ((InternalEObject)newDisplayName).eInverseAdd((InternalEObject)this, 5, SlData3.class, msgs);
            }
            if ((msgs = this.basicSetDisplayName(newDisplayName, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)newDisplayName, (Object)newDisplayName));
        }
    }

    @Override
    public String getFactorSiToUnit() {
        return this.factorSiToUnit;
    }

    @Override
    public void setFactorSiToUnit(String newFactorSiToUnit) {
        String oldFactorSiToUnit = this.factorSiToUnit;
        this.factorSiToUnit = newFactorSiToUnit;
        boolean oldFactorSiToUnitESet = this.factorSiToUnitESet;
        this.factorSiToUnitESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldFactorSiToUnit, (Object)this.factorSiToUnit, !oldFactorSiToUnitESet));
        }
    }

    @Override
    public void unsetFactorSiToUnit() {
        String oldFactorSiToUnit = this.factorSiToUnit;
        boolean oldFactorSiToUnitESet = this.factorSiToUnitESet;
        this.factorSiToUnit = "";
        this.factorSiToUnitESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 23, (Object)oldFactorSiToUnit, (Object)"", oldFactorSiToUnitESet));
        }
    }

    @Override
    public boolean isSetFactorSiToUnit() {
        return this.factorSiToUnitESet;
    }

    @Override
    public String getOffsetSiToUnit() {
        return this.offsetSiToUnit;
    }

    @Override
    public void setOffsetSiToUnit(String newOffsetSiToUnit) {
        String oldOffsetSiToUnit = this.offsetSiToUnit;
        this.offsetSiToUnit = newOffsetSiToUnit;
        boolean oldOffsetSiToUnitESet = this.offsetSiToUnitESet;
        this.offsetSiToUnitESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldOffsetSiToUnit, (Object)this.offsetSiToUnit, !oldOffsetSiToUnitESet));
        }
    }

    @Override
    public void unsetOffsetSiToUnit() {
        String oldOffsetSiToUnit = this.offsetSiToUnit;
        boolean oldOffsetSiToUnitESet = this.offsetSiToUnitESet;
        this.offsetSiToUnit = "";
        this.offsetSiToUnitESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 24, (Object)oldOffsetSiToUnit, (Object)"", oldOffsetSiToUnitESet));
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
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 25, (Object)oldPhysicalDimension, (Object)this.physicalDimension));
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
        AutosarObjectUtil.setDest((EObject)this, (int)25, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 25, (Object)oldPhysicalDimension, (Object)this.physicalDimension));
        }
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 21: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetUnitSpec((UnitSpec)otherEnd, msgs);
            }
            case 22: {
                if (this.displayName != null) {
                    msgs = ((InternalEObject)this.displayName).eInverseRemove((InternalEObject)this, -23, null, msgs);
                }
                return this.basicSetDisplayName((SlData3)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 21: {
                return this.basicSetUnitSpec(null, msgs);
            }
            case 22: {
                return this.basicSetDisplayName(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 21: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 5, UnitSpec.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                return this.gGetPhysicalDimension();
            }
            case 19: {
                return this.gGetFactorSiToUnit();
            }
            case 20: {
                return this.gGetOffsetSiToUnit();
            }
            case 21: {
                return this.getUnitSpec();
            }
            case 22: {
                return this.getDisplayName();
            }
            case 23: {
                return this.getFactorSiToUnit();
            }
            case 24: {
                return this.getOffsetSiToUnit();
            }
            case 25: {
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
            case 18: {
                this.gSetPhysicalDimension((GPhysicalDimension)newValue);
                return;
            }
            case 19: {
                this.gSetFactorSiToUnit((Double)newValue);
                return;
            }
            case 20: {
                this.gSetOffsetSiToUnit((Double)newValue);
                return;
            }
            case 21: {
                this.setUnitSpec((UnitSpec)newValue);
                return;
            }
            case 22: {
                this.setDisplayName((SlData3)newValue);
                return;
            }
            case 23: {
                this.setFactorSiToUnit((String)newValue);
                return;
            }
            case 24: {
                this.setOffsetSiToUnit((String)newValue);
                return;
            }
            case 25: {
                this.setPhysicalDimension((PhysicalDimension)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 18: {
                this.gSetPhysicalDimension(null);
                return;
            }
            case 19: {
                this.gUnsetFactorSiToUnit();
                return;
            }
            case 20: {
                this.gUnsetOffsetSiToUnit();
                return;
            }
            case 21: {
                this.setUnitSpec(null);
                return;
            }
            case 22: {
                this.setDisplayName(null);
                return;
            }
            case 23: {
                this.unsetFactorSiToUnit();
                return;
            }
            case 24: {
                this.unsetOffsetSiToUnit();
                return;
            }
            case 25: {
                this.setPhysicalDimension(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 18: {
                return this.gGetPhysicalDimension() != null;
            }
            case 19: {
                return this.gIsSetFactorSiToUnit();
            }
            case 20: {
                return this.gIsSetOffsetSiToUnit();
            }
            case 21: {
                return this.getUnitSpec() != null;
            }
            case 22: {
                return this.displayName != null;
            }
            case 23: {
                return this.isSetFactorSiToUnit();
            }
            case 24: {
                return this.isSetOffsetSiToUnit();
            }
            case 25: {
                return this.physicalDimension != null;
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GUnit.class) {
            switch (derivedFeatureID) {
                case 18: {
                    return 7;
                }
                case 19: {
                    return 8;
                }
                case 20: {
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
                    return 18;
                }
                case 8: {
                    return 19;
                }
                case 9: {
                    return 20;
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

