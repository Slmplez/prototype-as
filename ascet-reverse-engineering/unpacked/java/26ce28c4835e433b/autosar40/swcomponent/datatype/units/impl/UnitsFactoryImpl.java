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
package autosar40.swcomponent.datatype.units.impl;

import autosar40.swcomponent.datatype.units.PhysicalDimension;
import autosar40.swcomponent.datatype.units.Unit;
import autosar40.swcomponent.datatype.units.UnitGroup;
import autosar40.swcomponent.datatype.units.UnitsFactory;
import autosar40.swcomponent.datatype.units.UnitsPackage;
import autosar40.swcomponent.datatype.units.impl.PhysicalDimensionImpl;
import autosar40.swcomponent.datatype.units.impl.UnitGroupImpl;
import autosar40.swcomponent.datatype.units.impl.UnitImpl;
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
            UnitsFactory theUnitsFactory = (UnitsFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/swc/d/u");
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
                return this.createPhysicalDimension();
            }
            case 1: {
                return this.createUnitGroup();
            }
            case 2: {
                return this.createUnit();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public PhysicalDimension createPhysicalDimension() {
        PhysicalDimensionImpl physicalDimension = new PhysicalDimensionImpl();
        return physicalDimension;
    }

    public UnitGroup createUnitGroup() {
        UnitGroupImpl unitGroup = new UnitGroupImpl();
        return unitGroup;
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

