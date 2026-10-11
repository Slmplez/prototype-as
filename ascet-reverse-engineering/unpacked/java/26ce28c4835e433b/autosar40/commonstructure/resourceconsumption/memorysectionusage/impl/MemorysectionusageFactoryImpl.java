/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.impl.EFactoryImpl
 *  org.eclipse.emf.ecore.plugin.EcorePlugin
 */
package autosar40.commonstructure.resourceconsumption.memorysectionusage.impl;

import autosar40.commonstructure.resourceconsumption.memorysectionusage.MemorySection;
import autosar40.commonstructure.resourceconsumption.memorysectionusage.MemorysectionusageFactory;
import autosar40.commonstructure.resourceconsumption.memorysectionusage.MemorysectionusagePackage;
import autosar40.commonstructure.resourceconsumption.memorysectionusage.SectionNamePrefix;
import autosar40.commonstructure.resourceconsumption.memorysectionusage.impl.MemorySectionImpl;
import autosar40.commonstructure.resourceconsumption.memorysectionusage.impl.SectionNamePrefixImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class MemorysectionusageFactoryImpl
extends EFactoryImpl
implements MemorysectionusageFactory {
    public static MemorysectionusageFactory init() {
        try {
            MemorysectionusageFactory theMemorysectionusageFactory = (MemorysectionusageFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/cs/rc/msu");
            if (theMemorysectionusageFactory != null) {
                return theMemorysectionusageFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new MemorysectionusageFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createMemorySection();
            }
            case 1: {
                return this.createSectionNamePrefix();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public MemorySection createMemorySection() {
        MemorySectionImpl memorySection = new MemorySectionImpl();
        return memorySection;
    }

    public SectionNamePrefix createSectionNamePrefix() {
        SectionNamePrefixImpl sectionNamePrefix = new SectionNamePrefixImpl();
        return sectionNamePrefix;
    }

    public MemorysectionusagePackage getMemorysectionusagePackage() {
        return (MemorysectionusagePackage)this.getEPackage();
    }

    @Deprecated
    public static MemorysectionusagePackage getPackage() {
        return MemorysectionusagePackage.eINSTANCE;
    }
}

