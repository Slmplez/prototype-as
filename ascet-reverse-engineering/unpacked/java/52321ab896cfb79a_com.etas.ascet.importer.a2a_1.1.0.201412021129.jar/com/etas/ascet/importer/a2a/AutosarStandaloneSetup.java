/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  autosar21.util.Autosar21Package
 *  autosar21.util.Autosar21ReleaseDescriptor
 *  autosar21.util.Autosar21ResourceFactoryImpl
 *  autosar3x.util.Autosar3xPackage
 *  autosar3x.util.Autosar3xReleaseDescriptor
 *  autosar3x.util.Autosar3xResourceFactoryImpl
 *  autosar40.util.Autosar40Package
 *  autosar40.util.Autosar40ReleaseDescriptor
 *  autosar40.util.Autosar40ResourceFactoryImpl
 *  org.artop.aal.common.resource.impl.AutosarResourceFactoryImpl
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.resource.Resource$Factory$Registry
 *  org.eclipse.sphinx.emf.metamodel.IMetaModelDescriptor
 *  org.eclipse.sphinx.emf.metamodel.MetaModelDescriptorRegistry
 */
package com.etas.ascet.importer.a2a;

import autosar21.util.Autosar21Package;
import autosar21.util.Autosar21ReleaseDescriptor;
import autosar21.util.Autosar21ResourceFactoryImpl;
import autosar3x.util.Autosar3xPackage;
import autosar3x.util.Autosar3xReleaseDescriptor;
import autosar3x.util.Autosar3xResourceFactoryImpl;
import autosar40.util.Autosar40Package;
import autosar40.util.Autosar40ReleaseDescriptor;
import autosar40.util.Autosar40ResourceFactoryImpl;
import org.artop.aal.common.resource.impl.AutosarResourceFactoryImpl;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.sphinx.emf.metamodel.IMetaModelDescriptor;
import org.eclipse.sphinx.emf.metamodel.MetaModelDescriptorRegistry;

public class AutosarStandaloneSetup {
    private IMetaModelDescriptor releaseDescriptor;
    private AutosarResourceFactoryImpl resourceFactory;

    public AutosarStandaloneSetup(EPackage arPackage) {
    }

    public static void doSetupForAutosar21() {
        AutosarStandaloneSetup.setup((EPackage)Autosar21Package.eINSTANCE).release((IMetaModelDescriptor)Autosar21ReleaseDescriptor.INSTANCE).factory((AutosarResourceFactoryImpl)new Autosar21ResourceFactoryImpl()).register();
    }

    public static void doSetupForAutosar3x() {
        AutosarStandaloneSetup.setup((EPackage)Autosar3xPackage.eINSTANCE).release((IMetaModelDescriptor)Autosar3xReleaseDescriptor.INSTANCE).factory((AutosarResourceFactoryImpl)new Autosar3xResourceFactoryImpl()).register();
    }

    public static void doSetupForAutosar40() {
        AutosarStandaloneSetup.setup((EPackage)Autosar40Package.eINSTANCE).release((IMetaModelDescriptor)Autosar40ReleaseDescriptor.INSTANCE).factory((AutosarResourceFactoryImpl)new Autosar40ResourceFactoryImpl()).register();
    }

    public AutosarStandaloneSetup factory(AutosarResourceFactoryImpl resourceFactory) {
        this.resourceFactory = resourceFactory;
        return this;
    }

    public AutosarStandaloneSetup release(IMetaModelDescriptor releaseDescriptor) {
        this.releaseDescriptor = releaseDescriptor;
        return this;
    }

    public static AutosarStandaloneSetup setup(EPackage arPackage) {
        return new AutosarStandaloneSetup(arPackage);
    }

    public void register() {
        Resource.Factory.Registry.INSTANCE.getExtensionToFactoryMap().put("arxml", this.resourceFactory);
        if (MetaModelDescriptorRegistry.INSTANCE.getDescriptor(this.releaseDescriptor.getIdentifier()) == null) {
            MetaModelDescriptorRegistry.INSTANCE.addDescriptor(this.releaseDescriptor);
        }
    }
}

