/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.swcomponent.datatype.units;

import autosar3x.swcomponent.datatype.units.DisplayName;
import autosar3x.swcomponent.datatype.units.PhysicalDimension;
import autosar3x.swcomponent.datatype.units.Unit;
import autosar3x.swcomponent.datatype.units.UnitGroup;
import autosar3x.swcomponent.datatype.units.UnitSpec;
import autosar3x.swcomponent.datatype.units.UnitsPackage;
import autosar3x.swcomponent.datatype.units.impl.UnitsFactoryImpl;
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

