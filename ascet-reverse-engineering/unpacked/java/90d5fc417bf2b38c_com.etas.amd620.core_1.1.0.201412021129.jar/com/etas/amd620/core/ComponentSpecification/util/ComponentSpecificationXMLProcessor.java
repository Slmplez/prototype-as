/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.impl.EPackageRegistryImpl
 *  org.eclipse.emf.ecore.resource.Resource$Factory
 *  org.eclipse.emf.ecore.xmi.util.XMLProcessor
 */
package com.etas.amd620.core.ComponentSpecification.util;

import com.etas.amd620.core.ComponentSpecification.ComponentSpecificationPackage;
import com.etas.amd620.core.ComponentSpecification.util.ComponentSpecificationResourceFactoryImpl;
import java.util.Map;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EPackageRegistryImpl;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.xmi.util.XMLProcessor;

public class ComponentSpecificationXMLProcessor
extends XMLProcessor {
    public ComponentSpecificationXMLProcessor() {
        super((EPackage.Registry)new EPackageRegistryImpl(EPackage.Registry.INSTANCE));
        this.extendedMetaData.putPackage(null, (EPackage)ComponentSpecificationPackage.eINSTANCE);
    }

    protected Map<String, Resource.Factory> getRegistrations() {
        if (this.registrations == null) {
            super.getRegistrations();
            this.registrations.put("xml", new ComponentSpecificationResourceFactoryImpl());
            this.registrations.put("*", new ComponentSpecificationResourceFactoryImpl());
        }
        return this.registrations;
    }
}

