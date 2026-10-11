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
package com.etas.amd620.core.ComponentMain.util;

import com.etas.amd620.core.ComponentMain.ComponentMainPackage;
import com.etas.amd620.core.ComponentMain.util.ComponentMainResourceFactoryImpl;
import java.util.Map;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EPackageRegistryImpl;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.xmi.util.XMLProcessor;

public class ComponentMainXMLProcessor
extends XMLProcessor {
    public ComponentMainXMLProcessor() {
        super((EPackage.Registry)new EPackageRegistryImpl(EPackage.Registry.INSTANCE));
        this.extendedMetaData.putPackage(null, (EPackage)ComponentMainPackage.eINSTANCE);
    }

    protected Map<String, Resource.Factory> getRegistrations() {
        if (this.registrations == null) {
            super.getRegistrations();
            this.registrations.put("xml", new ComponentMainResourceFactoryImpl());
            this.registrations.put("*", new ComponentMainResourceFactoryImpl());
        }
        return this.registrations;
    }
}

