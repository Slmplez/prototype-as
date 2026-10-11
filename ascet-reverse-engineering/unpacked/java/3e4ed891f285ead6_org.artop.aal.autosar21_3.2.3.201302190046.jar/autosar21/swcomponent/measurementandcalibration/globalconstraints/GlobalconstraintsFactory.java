/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.swcomponent.measurementandcalibration.globalconstraints;

import autosar21.swcomponent.measurementandcalibration.globalconstraints.DataConstr;
import autosar21.swcomponent.measurementandcalibration.globalconstraints.DataConstrRule;
import autosar21.swcomponent.measurementandcalibration.globalconstraints.GlobalconstraintsPackage;
import autosar21.swcomponent.measurementandcalibration.globalconstraints.InternalConstrs;
import autosar21.swcomponent.measurementandcalibration.globalconstraints.PhysConstrs;
import autosar21.swcomponent.measurementandcalibration.globalconstraints.ScaleConstr;
import autosar21.swcomponent.measurementandcalibration.globalconstraints.ScaleConstrs;
import autosar21.swcomponent.measurementandcalibration.globalconstraints.SwConstrObjects;
import autosar21.swcomponent.measurementandcalibration.globalconstraints.impl.GlobalconstraintsFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface GlobalconstraintsFactory
extends EFactory {
    public static final GlobalconstraintsFactory eINSTANCE = GlobalconstraintsFactoryImpl.init();

    public DataConstrRule createDataConstrRule();

    public PhysConstrs createPhysConstrs();

    public InternalConstrs createInternalConstrs();

    public ScaleConstr createScaleConstr();

    public ScaleConstrs createScaleConstrs();

    public SwConstrObjects createSwConstrObjects();

    public DataConstr createDataConstr();

    public GlobalconstraintsPackage getGlobalconstraintsPackage();
}

