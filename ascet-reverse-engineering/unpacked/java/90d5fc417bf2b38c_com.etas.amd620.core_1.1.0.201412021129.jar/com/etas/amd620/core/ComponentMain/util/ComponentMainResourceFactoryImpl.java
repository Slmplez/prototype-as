/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.impl.EPackageRegistryImpl
 *  org.eclipse.emf.ecore.resource.Resource
 *  org.eclipse.emf.ecore.resource.impl.ResourceFactoryImpl
 *  org.eclipse.emf.ecore.util.BasicExtendedMetaData
 *  org.eclipse.emf.ecore.util.ExtendedMetaData
 */
package com.etas.amd620.core.ComponentMain.util;

import com.etas.amd620.core.ComponentMain.ComponentMainPackage;
import com.etas.amd620.core.ComponentMain.util.ComponentMainResourceImpl;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EPackageRegistryImpl;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.impl.ResourceFactoryImpl;
import org.eclipse.emf.ecore.util.BasicExtendedMetaData;
import org.eclipse.emf.ecore.util.ExtendedMetaData;

public class ComponentMainResourceFactoryImpl
extends ResourceFactoryImpl {
    protected ExtendedMetaData extendedMetaData = new BasicExtendedMetaData((EPackage.Registry)new EPackageRegistryImpl(EPackage.Registry.INSTANCE));

    public ComponentMainResourceFactoryImpl() {
        this.extendedMetaData.putPackage(null, (EPackage)ComponentMainPackage.eINSTANCE);
    }

    public Resource createResource(URI uri) {
        ComponentMainResourceImpl result = new ComponentMainResourceImpl(uri);
        result.getDefaultSaveOptions().put("EXTENDED_META_DATA", this.extendedMetaData);
        result.getDefaultLoadOptions().put("EXTENDED_META_DATA", this.extendedMetaData);
        result.getDefaultSaveOptions().put("SCHEMA_LOCATION", Boolean.TRUE);
        result.getDefaultLoadOptions().put("USE_ENCODED_ATTRIBUTE_STYLE", Boolean.TRUE);
        result.getDefaultSaveOptions().put("USE_ENCODED_ATTRIBUTE_STYLE", Boolean.TRUE);
        result.getDefaultLoadOptions().put("USE_LEXICAL_HANDLER", Boolean.TRUE);
        return result;
    }
}

