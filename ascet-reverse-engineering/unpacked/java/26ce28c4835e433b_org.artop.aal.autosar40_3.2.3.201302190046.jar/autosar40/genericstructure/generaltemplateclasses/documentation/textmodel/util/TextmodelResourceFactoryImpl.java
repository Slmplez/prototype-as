/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.impl.EPackageRegistryImpl
 *  org.eclipse.emf.ecore.resource.Resource
 *  org.eclipse.emf.ecore.resource.impl.ResourceFactoryImpl
 *  org.eclipse.emf.ecore.util.BasicExtendedMetaData
 *  org.eclipse.emf.ecore.util.ExtendedMetaData
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.util;

import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.util.TextmodelResourceImpl;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EPackageRegistryImpl;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.impl.ResourceFactoryImpl;
import org.eclipse.emf.ecore.util.BasicExtendedMetaData;
import org.eclipse.emf.ecore.util.ExtendedMetaData;

public class TextmodelResourceFactoryImpl
extends ResourceFactoryImpl {
    protected ExtendedMetaData extendedMetaData = new BasicExtendedMetaData((EPackage.Registry)new EPackageRegistryImpl(EPackage.Registry.INSTANCE));

    public Resource createResource(URI uri) {
        TextmodelResourceImpl result = new TextmodelResourceImpl(uri);
        result.getDefaultSaveOptions().put("EXTENDED_META_DATA", this.extendedMetaData);
        result.getDefaultLoadOptions().put("EXTENDED_META_DATA", this.extendedMetaData);
        result.getDefaultSaveOptions().put("SCHEMA_LOCATION", Boolean.TRUE);
        result.getDefaultLoadOptions().put("USE_ENCODED_ATTRIBUTE_STYLE", Boolean.TRUE);
        result.getDefaultSaveOptions().put("USE_ENCODED_ATTRIBUTE_STYLE", Boolean.TRUE);
        result.getDefaultLoadOptions().put("USE_LEXICAL_HANDLER", Boolean.TRUE);
        return result;
    }
}

