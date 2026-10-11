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
package com.etas.amd620.core.ComponentSpecification.util;

import com.etas.amd620.core.ComponentSpecification.ComponentSpecificationPackage;
import com.etas.amd620.core.ComponentSpecification.util.ComponentSpecificationResourceImpl;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EPackageRegistryImpl;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.impl.ResourceFactoryImpl;
import org.eclipse.emf.ecore.util.BasicExtendedMetaData;
import org.eclipse.emf.ecore.util.ExtendedMetaData;

public class ComponentSpecificationResourceFactoryImpl
extends ResourceFactoryImpl {
    protected ExtendedMetaData extendedMetaData = new BasicExtendedMetaData((EPackage.Registry)new EPackageRegistryImpl(EPackage.Registry.INSTANCE));

    public ComponentSpecificationResourceFactoryImpl() {
        this.extendedMetaData.putPackage(null, (EPackage)ComponentSpecificationPackage.eINSTANCE);
    }

    public Resource createResource(URI uri) {
        ComponentSpecificationResourceImpl result = new ComponentSpecificationResourceImpl(uri);
        result.getDefaultSaveOptions().put("EXTENDED_META_DATA", this.extendedMetaData);
        result.getDefaultLoadOptions().put("EXTENDED_META_DATA", this.extendedMetaData);
        result.getDefaultSaveOptions().put("SCHEMA_LOCATION", Boolean.TRUE);
        result.getDefaultLoadOptions().put("USE_ENCODED_ATTRIBUTE_STYLE", Boolean.TRUE);
        result.getDefaultSaveOptions().put("USE_ENCODED_ATTRIBUTE_STYLE", Boolean.TRUE);
        result.getDefaultLoadOptions().put("USE_LEXICAL_HANDLER", Boolean.TRUE);
        return result;
    }
}

