/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 *  org.eclipse.emf.ecore.EPackage
 */
package org.eclipse.sphinx.emf.metamodel;

import java.net.URI;
import java.util.Collection;
import java.util.List;
import org.eclipse.emf.ecore.EFactory;
import org.eclipse.emf.ecore.EPackage;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IMetaModelDescriptor {
    public static final String LABEL_PATTERN = "%1s (%2s)";

    public String getIdentifier();

    public URI getNamespaceURI();

    public String getNamespace();

    public String getName();

    @Deprecated
    public int getOrdinal();

    @Deprecated
    public String getEPackageNsURIPattern();

    public boolean matchesEPackageNsURIPattern(String var1);

    public Collection<EPackage> getEPackages();

    public EPackage getRootEPackage();

    @Deprecated
    public EPackage getEPackage();

    @Deprecated
    public boolean isEPackageRegistered();

    public EFactory getRootEFactory();

    @Deprecated
    public EFactory getEFactory();

    public List<String> getContentTypeIds();

    public String getDefaultContentTypeId();

    public List<URI> getCompatibleNamespaceURIs();

    public List<String> getCompatibleContentTypeIds();

    public Collection<IMetaModelDescriptor> getCompatibleResourceVersionDescriptors();
}

