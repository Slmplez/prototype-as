/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.swcomponent.internalbehavior.perinstancememory;

import autosar21.swcomponent.internalbehavior.perinstancememory.PerInstanceMemory;
import autosar21.swcomponent.internalbehavior.perinstancememory.PerinstancememoryPackage;
import autosar21.swcomponent.internalbehavior.perinstancememory.impl.PerinstancememoryFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface PerinstancememoryFactory
extends EFactory {
    public static final PerinstancememoryFactory eINSTANCE = PerinstancememoryFactoryImpl.init();

    public PerInstanceMemory createPerInstanceMemory();

    public PerinstancememoryPackage getPerinstancememoryPackage();
}

