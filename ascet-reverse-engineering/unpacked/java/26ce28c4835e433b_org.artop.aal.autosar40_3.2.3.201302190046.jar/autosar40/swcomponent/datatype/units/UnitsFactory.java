/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.swcomponent.datatype.units;

import autosar40.swcomponent.datatype.units.PhysicalDimension;
import autosar40.swcomponent.datatype.units.Unit;
import autosar40.swcomponent.datatype.units.UnitGroup;
import autosar40.swcomponent.datatype.units.UnitsPackage;
import autosar40.swcomponent.datatype.units.impl.UnitsFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface UnitsFactory
extends EFactory {
    public static final UnitsFactory eINSTANCE = UnitsFactoryImpl.init();

    public PhysicalDimension createPhysicalDimension();

    public UnitGroup createUnitGroup();

    public Unit createUnit();

    public UnitsPackage getUnitsPackage();
}

