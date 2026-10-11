/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.commonstructure.resourceconsumption.memorysectionusage;

import autosar3x.commonstructure.resourceconsumption.memorysectionusage.MemorySection;
import autosar3x.commonstructure.resourceconsumption.memorysectionusage.MemorysectionusagePackage;
import autosar3x.commonstructure.resourceconsumption.memorysectionusage.impl.MemorysectionusageFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface MemorysectionusageFactory
extends EFactory {
    public static final MemorysectionusageFactory eINSTANCE = MemorysectionusageFactoryImpl.init();

    public MemorySection createMemorySection();

    public MemorysectionusagePackage getMemorysectionusagePackage();
}

