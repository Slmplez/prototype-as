/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.swcomponent.datatype.units;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.datatype.units.PhysicalDimension;
import autosar21.swcomponent.datatype.units.Unit;
import autosar21.swcomponent.datatype.units.UnitGroup;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface UnitSpec
extends ARObject {
    public EList<UnitGroup> getUnitGroups();

    public EList<Unit> getUnits();

    public EList<PhysicalDimension> getPhysicalDimensions();
}

