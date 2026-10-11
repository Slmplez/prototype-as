/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.commonstructure.globalconstraints;

import autosar40.commonstructure.globalconstraints.DataConstr;
import autosar40.commonstructure.globalconstraints.DataConstrRule;
import autosar40.commonstructure.globalconstraints.GlobalconstraintsPackage;
import autosar40.commonstructure.globalconstraints.InternalConstrs;
import autosar40.commonstructure.globalconstraints.PhysConstrs;
import autosar40.commonstructure.globalconstraints.ScaleConstr;
import autosar40.commonstructure.globalconstraints.ScaleConstrs;
import autosar40.commonstructure.globalconstraints.impl.GlobalconstraintsFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface GlobalconstraintsFactory
extends EFactory {
    public static final GlobalconstraintsFactory eINSTANCE = GlobalconstraintsFactoryImpl.init();

    public DataConstrRule createDataConstrRule();

    public InternalConstrs createInternalConstrs();

    public ScaleConstr createScaleConstr();

    public PhysConstrs createPhysConstrs();

    public ScaleConstrs createScaleConstrs();

    public DataConstr createDataConstr();

    public GlobalconstraintsPackage getGlobalconstraintsPackage();
}

