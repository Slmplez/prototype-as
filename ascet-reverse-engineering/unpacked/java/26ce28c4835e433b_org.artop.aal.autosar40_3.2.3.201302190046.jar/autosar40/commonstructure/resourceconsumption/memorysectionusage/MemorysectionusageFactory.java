/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.commonstructure.resourceconsumption.memorysectionusage;

import autosar40.commonstructure.resourceconsumption.memorysectionusage.MemorySection;
import autosar40.commonstructure.resourceconsumption.memorysectionusage.MemorysectionusagePackage;
import autosar40.commonstructure.resourceconsumption.memorysectionusage.SectionNamePrefix;
import autosar40.commonstructure.resourceconsumption.memorysectionusage.impl.MemorysectionusageFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface MemorysectionusageFactory
extends EFactory {
    public static final MemorysectionusageFactory eINSTANCE = MemorysectionusageFactoryImpl.init();

    public MemorySection createMemorySection();

    public SectionNamePrefix createSectionNamePrefix();

    public MemorysectionusagePackage getMemorysectionusagePackage();
}

