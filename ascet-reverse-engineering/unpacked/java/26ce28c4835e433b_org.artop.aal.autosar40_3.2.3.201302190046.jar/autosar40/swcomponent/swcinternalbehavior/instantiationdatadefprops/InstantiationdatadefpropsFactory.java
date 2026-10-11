/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.swcomponent.swcinternalbehavior.instantiationdatadefprops;

import autosar40.swcomponent.swcinternalbehavior.instantiationdatadefprops.InstantiationDataDefProps;
import autosar40.swcomponent.swcinternalbehavior.instantiationdatadefprops.InstantiationdatadefpropsPackage;
import autosar40.swcomponent.swcinternalbehavior.instantiationdatadefprops.impl.InstantiationdatadefpropsFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface InstantiationdatadefpropsFactory
extends EFactory {
    public static final InstantiationdatadefpropsFactory eINSTANCE = InstantiationdatadefpropsFactoryImpl.init();

    public InstantiationDataDefProps createInstantiationDataDefProps();

    public InstantiationdatadefpropsPackage getInstantiationdatadefpropsPackage();
}

