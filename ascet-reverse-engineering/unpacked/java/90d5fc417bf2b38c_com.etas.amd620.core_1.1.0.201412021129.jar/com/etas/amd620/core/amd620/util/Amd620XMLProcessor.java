/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.resource.Resource$Factory
 *  org.eclipse.emf.ecore.xmi.util.XMLProcessor
 */
package com.etas.amd620.core.amd620.util;

import com.etas.amd620.core.amd620.Amd620Package;
import com.etas.amd620.core.amd620.util.Amd620ResourceFactoryImpl;
import java.util.Map;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.xmi.util.XMLProcessor;

public class Amd620XMLProcessor
extends XMLProcessor {
    public Amd620XMLProcessor() {
        super(EPackage.Registry.INSTANCE);
        Amd620Package.eINSTANCE.eClass();
    }

    protected Map<String, Resource.Factory> getRegistrations() {
        if (this.registrations == null) {
            super.getRegistrations();
            this.registrations.put("xml", new Amd620ResourceFactoryImpl());
            this.registrations.put("*", new Amd620ResourceFactoryImpl());
        }
        return this.registrations;
    }
}

