/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package gautosar.gswcomponents.gswcinternalbehavior.gperinstancememory;

import gautosar.gswcomponents.gswcinternalbehavior.gperinstancememory.GperinstancememoryPackage;
import gautosar.gswcomponents.gswcinternalbehavior.gperinstancememory.impl.GperinstancememoryFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface GperinstancememoryFactory
extends EFactory {
    public static final GperinstancememoryFactory eINSTANCE = GperinstancememoryFactoryImpl.init();

    public GperinstancememoryPackage getGperinstancememoryPackage();
}

