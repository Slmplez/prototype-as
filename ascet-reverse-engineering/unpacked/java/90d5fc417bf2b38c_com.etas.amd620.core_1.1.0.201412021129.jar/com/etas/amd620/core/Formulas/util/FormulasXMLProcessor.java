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
package com.etas.amd620.core.Formulas.util;

import com.etas.amd620.core.Formulas.FormulasPackage;
import com.etas.amd620.core.Formulas.util.FormulasResourceFactoryImpl;
import java.util.Map;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EPackageRegistryImpl;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.xmi.util.XMLProcessor;

public class FormulasXMLProcessor
extends XMLProcessor {
    public FormulasXMLProcessor() {
        super((EPackage.Registry)new EPackageRegistryImpl(EPackage.Registry.INSTANCE));
        this.extendedMetaData.putPackage(null, (EPackage)FormulasPackage.eINSTANCE);
    }

    protected Map<String, Resource.Factory> getRegistrations() {
        if (this.registrations == null) {
            super.getRegistrations();
            this.registrations.put("xml", new FormulasResourceFactoryImpl());
            this.registrations.put("*", new FormulasResourceFactoryImpl());
        }
        return this.registrations;
    }
}

