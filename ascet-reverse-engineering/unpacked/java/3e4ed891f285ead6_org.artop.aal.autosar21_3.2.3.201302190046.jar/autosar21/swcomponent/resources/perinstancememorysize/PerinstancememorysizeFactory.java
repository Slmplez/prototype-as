/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.swcomponent.resources.perinstancememorysize;

import autosar21.swcomponent.resources.perinstancememorysize.PerInstanceMemorySize;
import autosar21.swcomponent.resources.perinstancememorysize.PerinstancememorysizePackage;
import autosar21.swcomponent.resources.perinstancememorysize.impl.PerinstancememorysizeFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface PerinstancememorysizeFactory
extends EFactory {
    public static final PerinstancememorysizeFactory eINSTANCE = PerinstancememorysizeFactoryImpl.init();

    public PerInstanceMemorySize createPerInstanceMemorySize();

    public PerinstancememorysizePackage getPerinstancememorysizePackage();
}

