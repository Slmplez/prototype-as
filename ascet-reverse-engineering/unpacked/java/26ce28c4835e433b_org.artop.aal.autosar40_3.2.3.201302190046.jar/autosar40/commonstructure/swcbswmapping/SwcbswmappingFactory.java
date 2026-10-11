/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.commonstructure.swcbswmapping;

import autosar40.commonstructure.swcbswmapping.SwcBswMapping;
import autosar40.commonstructure.swcbswmapping.SwcBswRunnableMapping;
import autosar40.commonstructure.swcbswmapping.SwcBswSynchronizedModeGroupPrototype;
import autosar40.commonstructure.swcbswmapping.SwcBswSynchronizedTrigger;
import autosar40.commonstructure.swcbswmapping.SwcbswmappingPackage;
import autosar40.commonstructure.swcbswmapping.impl.SwcbswmappingFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface SwcbswmappingFactory
extends EFactory {
    public static final SwcbswmappingFactory eINSTANCE = SwcbswmappingFactoryImpl.init();

    public SwcBswRunnableMapping createSwcBswRunnableMapping();

    public SwcBswSynchronizedModeGroupPrototype createSwcBswSynchronizedModeGroupPrototype();

    public SwcBswSynchronizedTrigger createSwcBswSynchronizedTrigger();

    public SwcBswMapping createSwcBswMapping();

    public SwcbswmappingPackage getSwcbswmappingPackage();
}

