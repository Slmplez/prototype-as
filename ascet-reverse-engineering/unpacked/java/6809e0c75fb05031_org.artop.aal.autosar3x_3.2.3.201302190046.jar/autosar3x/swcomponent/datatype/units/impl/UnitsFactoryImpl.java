/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.impl.EFactoryImpl
 *  org.eclipse.emf.ecore.plugin.EcorePlugin
 */
package autosar3x.swcomponent.datatype.units.impl;

import autosar3x.swcomponent.datatype.units.DisplayName;
import autosar3x.swcomponent.datatype.units.PhysicalDimension;
import autosar3x.swcomponent.datatype.units.Unit;
import autosar3x.swcomponent.datatype.units.UnitGroup;
import autosar3x.swcomponent.datatype.units.UnitSpec;
import autosar3x.swcomponent.datatype.units.UnitsFactory;
import autosar3x.swcomponent.datatype.units.UnitsPackage;
import autosar3x.swcomponent.datatype.units.impl.DisplayNameImpl;
import autosar3x.swcomponent.datatype.units.impl.PhysicalDimensionImpl;
import autosar3x.swcomponent.datatype.units.impl.UnitGroupImpl;
import autosar3x.swcomponent.datatype.units.impl.UnitImpl;
import autosar3x.swcomponent.datatype.units.impl.UnitSpecImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class UnitsFactoryImpl
extends EFactoryImpl
implements UnitsFactory {
    public static UnitsFactory init() {
        try {
            UnitsFactory theUnitsFactory = (UnitsFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/3.2.1/autosar3x/swc/d/u");
            if (theUnitsFactory != null) {
                return theUnitsFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new UnitsFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createDisplayName();
            }
            case 1: {
                return this.createPhysicalDimension();
            }
            case 2: {
                return this.createUnitGroup();
            }
            case 3: {
                return this.createUnitSpec();
            }
            case 4: {
                return this.createUnit();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public DisplayName createDisplayName() {
        DisplayNameImpl displayName = new DisplayNameImpl();
        return displayName;
    }

    public PhysicalDimension createPhysicalDimension() {
        PhysicalDimensionImpl physicalDimension = new PhysicalDimensionImpl();
        return physicalDimension;
    }

    public UnitGroup createUnitGroup() {
        UnitGroupImpl unitGroup = new UnitGroupImpl();
        return unitGroup;
    }

    public UnitSpec createUnitSpec() {
        UnitSpecImpl unitSpec = new UnitSpecImpl();
        return unitSpec;
    }

    public Unit createUnit() {
        UnitImpl unit = new UnitImpl();
        return unit;
    }

    public UnitsPackage getUnitsPackage() {
        return (UnitsPackage)this.getEPackage();
    }

    @Deprecated
    public static UnitsPackage getPackage() {
        return UnitsPackage.eINSTANCE;
    }
}

