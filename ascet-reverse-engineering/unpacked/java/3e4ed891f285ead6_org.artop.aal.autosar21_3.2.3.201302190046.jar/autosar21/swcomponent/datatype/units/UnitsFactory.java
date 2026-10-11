/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.swcomponent.datatype.units;

import autosar21.swcomponent.datatype.units.DisplayName;
import autosar21.swcomponent.datatype.units.PhysicalDimension;
import autosar21.swcomponent.datatype.units.Unit;
import autosar21.swcomponent.datatype.units.UnitGroup;
import autosar21.swcomponent.datatype.units.UnitSpec;
import autosar21.swcomponent.datatype.units.UnitsPackage;
import autosar21.swcomponent.datatype.units.impl.UnitsFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface UnitsFactory
extends EFactory {
    public static final UnitsFactory eINSTANCE = UnitsFactoryImpl.init();

    public DisplayName createDisplayName();

    public PhysicalDimension createPhysicalDimension();

    public UnitGroup createUnitGroup();

    public UnitSpec createUnitSpec();

    public Unit createUnit();

    public UnitsPackage getUnitsPackage();
}

