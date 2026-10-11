/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.impl.EPackageRegistryImpl
 *  org.eclipse.emf.ecore.resource.Resource
 *  org.eclipse.emf.ecore.resource.impl.ResourceFactoryImpl
 *  org.eclipse.emf.ecore.util.ExtendedMetaData
 *  org.eclipse.emf.ecore.xmi.XMLResource
 *  org.eclipse.emf.ecore.xmi.XMLResource$ResourceHandler
 *  org.eclipse.sphinx.emf.metamodel.IMetaModelDescriptor
 *  org.eclipse.sphinx.emf.resource.BasicMigrationExtendedMetaData
 *  org.eclipse.sphinx.emf.resource.ResourceHandlerRegistry
 *  org.eclipse.sphinx.emf.resource.SchemaLocationURIHandler
 *  org.eclipse.sphinx.emf.util.EcoreResourceUtil
 */
package org.artop.aal.common.resource.impl;

import java.util.Map;
import org.artop.aal.common.metamodel.AutosarReleaseDescriptor;
import org.artop.aal.common.preferences.IAutosarPreferenceConstants;
import org.artop.aal.common.preferences.IAutosarPreferences;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.Platform;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EPackageRegistryImpl;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.impl.ResourceFactoryImpl;
import org.eclipse.emf.ecore.util.ExtendedMetaData;
import org.eclipse.emf.ecore.xmi.XMLResource;
import org.eclipse.sphinx.emf.metamodel.IMetaModelDescriptor;
import org.eclipse.sphinx.emf.resource.BasicMigrationExtendedMetaData;
import org.eclipse.sphinx.emf.resource.ResourceHandlerRegistry;
import org.eclipse.sphinx.emf.resource.SchemaLocationURIHandler;
import org.eclipse.sphinx.emf.util.EcoreResourceUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class AutosarResourceFactoryImpl
extends ResourceFactoryImpl {
    protected AutosarReleaseDescriptor autosarRelease;
    protected ExtendedMetaData extendedMetaData;
    protected Map<String, String> schemaLocationCatalog;
    protected SchemaLocationURIHandler schemaLocationURIHandler;

    protected AutosarResourceFactoryImpl(AutosarReleaseDescriptor autosarRelease) {
        Assert.isNotNull((Object)autosarRelease);
        Assert.isNotNull((Object)autosarRelease.getRootEPackage());
        this.autosarRelease = autosarRelease;
        this.extendedMetaData = this.createExtendedMetaData();
        this.schemaLocationCatalog = this.createSchemaLocationCatalog();
        this.schemaLocationURIHandler = this.createSchemaLocationURIHandler();
        this.initSchemaLocationBaseURIs();
    }

    protected SchemaLocationURIHandler createSchemaLocationURIHandler() {
        return new SchemaLocationURIHandler(this.schemaLocationCatalog){

            public URI resolve(URI uri) {
                String lastSegment = uri.lastSegment();
                if (lastSegment != null && lastSegment.endsWith("%20xml.xsd")) {
                    uri = URI.createURI((String)"xml.xsd");
                }
                return super.resolve(uri);
            }
        };
    }

    protected ExtendedMetaData createExtendedMetaData() {
        BasicMigrationExtendedMetaData extendedMetaData = new BasicMigrationExtendedMetaData((EPackage.Registry)new EPackageRegistryImpl(EPackage.Registry.INSTANCE)){

            public String getNamespace(EPackage ePackage) {
                String uri = ePackage.getNsURI();
                if (uri != null && uri.startsWith("http://autosar.org")) {
                    return AutosarResourceFactoryImpl.this.autosarRelease.getNamespace();
                }
                return super.getNamespace(ePackage);
            }
        };
        extendedMetaData.putPackage(this.autosarRelease.getNamespace(), this.autosarRelease.getRootEPackage());
        for (java.net.URI compatibleNamespaceURI : this.autosarRelease.getCompatibleNamespaceURIs()) {
            extendedMetaData.putPackage(compatibleNamespaceURI.toString(), this.autosarRelease.getRootEPackage());
        }
        return extendedMetaData;
    }

    protected abstract Map<String, String> createSchemaLocationCatalog();

    protected abstract void initSchemaLocationBaseURIs();

    public void initResource(XMLResource resource) {
        this.initDefaultOptions(resource);
        this.installResourceHandler(resource);
    }

    protected void initDefaultOptions(XMLResource resource) {
        resource.getDefaultLoadOptions().put("EXTENDED_META_DATA", this.extendedMetaData);
        resource.getDefaultSaveOptions().put("EXTENDED_META_DATA", this.extendedMetaData);
        resource.getDefaultLoadOptions().put("USE_ENCODED_ATTRIBUTE_STYLE", Boolean.TRUE);
        resource.getDefaultSaveOptions().put("USE_ENCODED_ATTRIBUTE_STYLE", Boolean.TRUE);
        resource.getDefaultLoadOptions().put("USE_LEXICAL_HANDLER", Boolean.TRUE);
        resource.getDefaultSaveOptions().put("ENCODING", "UTF-8");
        resource.getDefaultSaveOptions().put("SAVE_TYPE_INFORMATION", Boolean.FALSE);
        IMetaModelDescriptor resourceVersionDescriptor = this.getResourceVersionDescriptor((Resource)resource);
        resource.getDefaultLoadOptions().put("RESOURCE_VERSION_DESCRIPTOR", resourceVersionDescriptor);
        resource.getDefaultSaveOptions().put("SCHEMA_LOCATION", Boolean.TRUE);
        resource.getDefaultSaveOptions().put("SCHEMA_LOCATION_CATALOG", this.schemaLocationCatalog);
        resource.getDefaultLoadOptions().put("URI_HANDLER", this.schemaLocationURIHandler);
        resource.getDefaultSaveOptions().put("URI_HANDLER", this.schemaLocationURIHandler);
        resource.getDefaultLoadOptions().put("ENABLE_SCHEMA_VALIDATION", Platform.isRunning() ? (Boolean)IAutosarPreferences.XSD_VALIDATION_ON_LOAD.get() : IAutosarPreferenceConstants.PREF_XSD_VALIDATION_ON_LOAD_DEFAULT);
        resource.getDefaultLoadOptions().put("DEFER_IDREF_RESOLUTION", Boolean.TRUE);
        resource.getDefaultLoadOptions().put("SUPPRESS_DOCUMENT_ROOT", Boolean.TRUE);
    }

    public IMetaModelDescriptor getResourceVersionDescriptor(Resource resource) {
        Assert.isNotNull((Object)resource);
        String resourceNamespace = EcoreResourceUtil.readModelNamespace((Resource)resource);
        if (resourceNamespace != null) {
            if (resourceNamespace.matches(this.autosarRelease.getNamespace())) {
                return this.autosarRelease;
            }
            for (IMetaModelDescriptor compatibleResourceVersionDescriptor : this.autosarRelease.getCompatibleResourceVersionDescriptors()) {
                if (!resourceNamespace.matches(compatibleResourceVersionDescriptor.getNamespace())) continue;
                return compatibleResourceVersionDescriptor;
            }
        }
        return null;
    }

    protected void installResourceHandler(XMLResource resource) {
        XMLResource.ResourceHandler resourceHandler = ResourceHandlerRegistry.INSTANCE.getHandler(this.autosarRelease.getRootEPackage().getNsURI());
        if (resourceHandler != null) {
            resource.getDefaultLoadOptions().put("RESOURCE_HANDLER", resourceHandler);
            resource.getDefaultSaveOptions().put("RESOURCE_HANDLER", resourceHandler);
        }
    }
}

