/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.swcomponent.swcinternalbehavior.perinstancememory;

import autosar40.swcomponent.swcinternalbehavior.perinstancememory.PerInstanceMemory;
import autosar40.swcomponent.swcinternalbehavior.perinstancememory.PerinstancememoryPackage;
import autosar40.swcomponent.swcinternalbehavior.perinstancememory.impl.PerinstancememoryFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface PerinstancememoryFactory
extends EFactory {
    public static final PerinstancememoryFactory eINSTANCE = PerinstancememoryFactoryImpl.init();

    public PerInstanceMemory createPerInstanceMemory();

    public PerinstancememoryPackage getPerinstancememoryPackage();
}

