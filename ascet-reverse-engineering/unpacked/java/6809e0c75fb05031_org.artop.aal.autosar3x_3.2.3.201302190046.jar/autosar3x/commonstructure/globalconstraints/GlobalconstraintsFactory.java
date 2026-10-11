/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.commonstructure.globalconstraints;

import autosar3x.commonstructure.globalconstraints.DataConstr;
import autosar3x.commonstructure.globalconstraints.DataConstrRule;
import autosar3x.commonstructure.globalconstraints.GlobalconstraintsPackage;
import autosar3x.commonstructure.globalconstraints.InternalConstrs;
import autosar3x.commonstructure.globalconstraints.PhysConstrs;
import autosar3x.commonstructure.globalconstraints.ScaleConstr;
import autosar3x.commonstructure.globalconstraints.ScaleConstrs;
import autosar3x.commonstructure.globalconstraints.SwConstrObjects;
import autosar3x.commonstructure.globalconstraints.impl.GlobalconstraintsFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface GlobalconstraintsFactory
extends EFactory {
    public static final GlobalconstraintsFactory eINSTANCE = GlobalconstraintsFactoryImpl.init();

    public DataConstr createDataConstr();

    public SwConstrObjects createSwConstrObjects();

    public DataConstrRule createDataConstrRule();

    public PhysConstrs createPhysConstrs();

    public ScaleConstr createScaleConstr();

    public InternalConstrs createInternalConstrs();

    public ScaleConstrs createScaleConstrs();

    public GlobalconstraintsPackage getGlobalconstraintsPackage();
}

