/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar3x.swcomponent.datatype.units.impl;

import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar3x.swcomponent.datatype.units.PhysicalDimension;
import autosar3x.swcomponent.datatype.units.Unit;
import autosar3x.swcomponent.datatype.units.UnitGroup;
import autosar3x.swcomponent.datatype.units.UnitSpec;
import autosar3x.swcomponent.datatype.units.UnitsPackage;
import java.util.Collection;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class UnitSpecImpl
extends ARObjectImpl
implements UnitSpec {
    protected EList<UnitGroup> unitGroups;
    protected EList<Unit> units;
    protected EList<PhysicalDimension> physicalDimensions;

    protected UnitSpecImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return UnitsPackage.Literals.UNIT_SPEC;
    }

    @Override
    public EList<UnitGroup> getUnitGroups() {
        if (this.unitGroups == null) {
            this.unitGroups = new EObjectContainmentWithInverseEList(UnitGroup.class, (InternalEObject)this, 4, 17);
        }
        return this.unitGroups;
    }

    @Override
    public EList<Unit> getUnits() {
        if (this.units == null) {
            this.units = new EObjectContainmentWithInverseEList(Unit.class, (InternalEObject)this, 5, 22);
        }
        return this.units;
    }

    @Override
    public EList<PhysicalDimension> getPhysicalDimensions() {
        if (this.physicalDimensions == null) {
            this.physicalDimensions = new EObjectContainmentWithInverseEList(PhysicalDimension.class, (InternalEObject)this, 6, 26);
        }
        return this.physicalDimensions;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return ((InternalEList)this.getUnitGroups()).basicAdd((Object)otherEnd, msgs);
            }
            case 5: {
                return ((InternalEList)this.getUnits()).basicAdd((Object)otherEnd, msgs);
            }
            case 6: {
                return ((InternalEList)this.getPhysicalDimensions()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return ((InternalEList)this.getUnitGroups()).basicRemove((Object)otherEnd, msgs);
            }
            case 5: {
                return ((InternalEList)this.getUnits()).basicRemove((Object)otherEnd, msgs);
            }
            case 6: {
                return ((InternalEList)this.getPhysicalDimensions()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getUnitGroups();
            }
            case 5: {
                return this.getUnits();
            }
            case 6: {
                return this.getPhysicalDimensions();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.getUnitGroups().clear();
                this.getUnitGroups().addAll((Collection)newValue);
                return;
            }
            case 5: {
                this.getUnits().clear();
                this.getUnits().addAll((Collection)newValue);
                return;
            }
            case 6: {
                this.getPhysicalDimensions().clear();
                this.getPhysicalDimensions().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.getUnitGroups().clear();
                return;
            }
            case 5: {
                this.getUnits().clear();
                return;
            }
            case 6: {
                this.getPhysicalDimensions().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.unitGroups != null && !this.unitGroups.isEmpty();
            }
            case 5: {
                return this.units != null && !this.units.isEmpty();
            }
            case 6: {
                return this.physicalDimensions != null && !this.physicalDimensions.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

