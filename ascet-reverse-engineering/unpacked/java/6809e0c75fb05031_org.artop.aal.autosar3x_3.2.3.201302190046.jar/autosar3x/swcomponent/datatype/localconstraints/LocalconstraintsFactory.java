/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.swcomponent.datatype.localconstraints;

import autosar3x.swcomponent.datatype.localconstraints.Limit;
import autosar3x.swcomponent.datatype.localconstraints.LocalconstraintsPackage;
import autosar3x.swcomponent.datatype.localconstraints.impl.LocalconstraintsFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface LocalconstraintsFactory
extends EFactory {
    public static final LocalconstraintsFactory eINSTANCE = LocalconstraintsFactoryImpl.init();

    public Limit createLimit();

    public LocalconstraintsPackage getLocalconstraintsPackage();
}

