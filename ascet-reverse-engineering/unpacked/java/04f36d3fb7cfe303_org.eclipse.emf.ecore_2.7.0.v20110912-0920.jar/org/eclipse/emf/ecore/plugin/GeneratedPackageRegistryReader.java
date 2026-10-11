/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.emf.common.util.URI
 */
package org.eclipse.emf.ecore.plugin;

import java.util.Map;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.Platform;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.plugin.EcorePlugin;
import org.eclipse.emf.ecore.plugin.RegistryReader;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
class GeneratedPackageRegistryReader
extends RegistryReader {
    static final String TAG_PACKAGE = "package";
    static final String ATT_URI = "uri";
    static final String ATT_CLASS = "class";
    static final String ATT_GEN_MODEL = "genModel";
    protected Map<String, URI> ePackageNsURIToGenModelLocationMap;

    public GeneratedPackageRegistryReader() {
        super(Platform.getExtensionRegistry(), EcorePlugin.getPlugin().getBundle().getSymbolicName(), "generated_package");
    }

    public GeneratedPackageRegistryReader(Map<String, URI> ePackageNsURIToGenModelLocationMap) {
        this();
        this.ePackageNsURIToGenModelLocationMap = ePackageNsURIToGenModelLocationMap;
    }

    @Override
    protected boolean readElement(IConfigurationElement element, boolean add) {
        if (element.getName().equals(TAG_PACKAGE)) {
            String packageURI = element.getAttribute(ATT_URI);
            if (packageURI == null) {
                this.logMissingAttribute(element, ATT_URI);
            } else if (element.getAttribute(ATT_CLASS) == null) {
                this.logMissingAttribute(element, ATT_CLASS);
            } else {
                if (add) {
                    String genModel;
                    RegistryReader.EPackageDescriptor previous = EPackage.Registry.INSTANCE.put(packageURI, new RegistryReader.EPackageDescriptor(element, ATT_CLASS));
                    if (previous instanceof RegistryReader.PluginClassDescriptor) {
                        RegistryReader.PluginClassDescriptor descriptor = previous;
                        EcorePlugin.INSTANCE.log("Both '" + descriptor.element.getContributor().getName() + "' and '" + element.getContributor().getName() + "' register a package for '" + packageURI + "'");
                    }
                    if (this.ePackageNsURIToGenModelLocationMap != null && (genModel = element.getAttribute(ATT_GEN_MODEL)) != null) {
                        URI genModelURI = URI.createURI((String)genModel);
                        if (genModelURI.isRelative()) {
                            genModelURI = URI.createPlatformPluginURI((String)(String.valueOf(element.getDeclaringExtension().getContributor().getName()) + "/" + genModel), (boolean)true);
                        }
                        this.ePackageNsURIToGenModelLocationMap.put(packageURI, genModelURI);
                    }
                    return true;
                }
                EPackage.Registry.INSTANCE.remove(packageURI);
                if (this.ePackageNsURIToGenModelLocationMap != null) {
                    this.ePackageNsURIToGenModelLocationMap.remove(packageURI);
                }
                return true;
            }
        }
        return false;
    }
}

