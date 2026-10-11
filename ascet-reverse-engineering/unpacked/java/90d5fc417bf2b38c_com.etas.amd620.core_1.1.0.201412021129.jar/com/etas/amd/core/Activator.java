/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Plugin
 *  org.eclipse.emf.ecore.resource.Resource$Factory$Registry
 *  org.osgi.framework.BundleContext
 */
package com.etas.amd.core;

import com.etas.amd620.core.ComponentData.util.ComponentDataResourceFactoryImpl;
import org.eclipse.core.runtime.Plugin;
import org.eclipse.emf.ecore.resource.Resource;
import org.osgi.framework.BundleContext;

public class Activator
extends Plugin {
    public void start(BundleContext context) throws Exception {
        super.start(context);
        Resource.Factory.Registry.INSTANCE.getExtensionToFactoryMap().put("amd", new ComponentDataResourceFactoryImpl());
    }
}

