/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.PlatformObject
 *  org.eclipse.emf.common.util.WrappedException
 *  org.eclipse.emf.ecore.EFactory
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.sphinx.platform.util.ReflectUtil
 */
package org.eclipse.sphinx.emf.metamodel;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.regex.Pattern;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.PlatformObject;
import org.eclipse.emf.common.util.WrappedException;
import org.eclipse.emf.ecore.EFactory;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.sphinx.emf.metamodel.IMetaModelDescriptor;
import org.eclipse.sphinx.emf.metamodel.MetaModelVersionData;
import org.eclipse.sphinx.platform.util.ReflectUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class AbstractMetaModelDescriptor
extends PlatformObject
implements IMetaModelDescriptor {
    protected static final String URI_SEGMENT_SEPARATOR = "/";
    private String fIdentifier;
    protected URI fBaseNamespaceURI;
    private String fEPackageNsURIPostfixPattern;
    private MetaModelVersionData fVersionData;
    private String fName = null;
    private URI fNamespaceURI;
    private Pattern fEPackageNsURIPattern;
    private EPackage fRootEPackage = null;
    private Collection<EPackage> fEPackages = null;
    private List<String> fContentTypeIds;
    private EPackage.Registry fEPkgRegistry;

    public EPackage.Registry getEPackageRegistry() {
        if (this.fEPkgRegistry == null) {
            this.fEPkgRegistry = EPackage.Registry.INSTANCE;
        }
        return this.fEPkgRegistry;
    }

    protected void setEPackageRegistry(EPackage.Registry ePkgRegistry) {
        this.fEPkgRegistry = ePkgRegistry;
    }

    protected AbstractMetaModelDescriptor(String identifier, String namespace, String name) {
        this(identifier, namespace, null, name);
    }

    protected AbstractMetaModelDescriptor(String identifier, String baseNamespace, String ePackageNsURIPostfixPattern, String name) {
        Assert.isNotNull((Object)identifier);
        Assert.isNotNull((Object)baseNamespace);
        this.fIdentifier = identifier;
        try {
            this.fBaseNamespaceURI = new URI(baseNamespace);
        }
        catch (URISyntaxException ex) {
            throw new WrappedException((Exception)ex);
        }
        this.fEPackageNsURIPostfixPattern = ePackageNsURIPostfixPattern;
        this.initNamespace();
        this.fName = name;
    }

    protected AbstractMetaModelDescriptor(String identifier, String baseNamespace, MetaModelVersionData versionData) {
        Assert.isNotNull((Object)identifier);
        Assert.isNotNull((Object)baseNamespace);
        this.fIdentifier = identifier;
        try {
            this.fBaseNamespaceURI = new URI(baseNamespace);
        }
        catch (URISyntaxException ex) {
            throw new WrappedException((Exception)ex);
        }
        this.fVersionData = versionData;
        this.initNamespace();
    }

    @Override
    public String getIdentifier() {
        return this.fIdentifier;
    }

    @Override
    public URI getNamespaceURI() {
        return this.fNamespaceURI;
    }

    protected void initNamespace() {
        StringBuilder namespace = new StringBuilder(this.fBaseNamespaceURI.toString());
        if (this.fVersionData != null && this.fVersionData.getNsPostfix() != null && this.fVersionData.getNsPostfix().length() > 0) {
            namespace.append(URI_SEGMENT_SEPARATOR);
            namespace.append(this.fVersionData.getNsPostfix());
        }
        try {
            this.fNamespaceURI = new URI(namespace.toString());
        }
        catch (URISyntaxException ex) {
            throw new WrappedException((Exception)ex);
        }
    }

    protected URI getBaseNamespaceURI() {
        return this.fBaseNamespaceURI;
    }

    protected String getNsPostfix() {
        if (this.fVersionData != null) {
            return this.fVersionData.getNsPostfix();
        }
        return null;
    }

    @Override
    public String getNamespace() {
        return this.getNamespaceURI().toString();
    }

    @Override
    public String getName() {
        if (this.fName == null) {
            this.initName();
        }
        return this.fName;
    }

    protected void initName() {
        this.fName = this.fVersionData != null ? this.fVersionData.getName() : this.getIdentifier();
    }

    @Override
    @Deprecated
    public int getOrdinal() {
        if (this.fVersionData != null) {
            return this.fVersionData.getOrdinal();
        }
        return -1;
    }

    @Override
    @Deprecated
    public String getEPackageNsURIPattern() {
        if (this.fEPackageNsURIPattern == null) {
            this.initEPackageNsURIPattern();
        }
        return this.fEPackageNsURIPattern.pattern();
    }

    @Override
    public boolean matchesEPackageNsURIPattern(String uri) {
        if (this.fEPackageNsURIPattern == null) {
            this.initEPackageNsURIPattern();
        }
        return this.fEPackageNsURIPattern.matcher(uri).matches();
    }

    protected void initEPackageNsURIPattern() {
        StringBuilder buffer = new StringBuilder(this.fBaseNamespaceURI.toString());
        if (this.fEPackageNsURIPostfixPattern != null) {
            buffer.append(URI_SEGMENT_SEPARATOR);
            buffer.append(this.fEPackageNsURIPostfixPattern);
        } else if (this.fVersionData != null) {
            buffer.append(URI_SEGMENT_SEPARATOR);
            buffer.append(this.fVersionData.getEPackageNsURIPostfixPattern());
        }
        this.fEPackageNsURIPattern = Pattern.compile(buffer.toString());
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public Collection<EPackage> getEPackages() {
        EPackage.Registry registry = this.getEPackageRegistry();
        synchronized (registry) {
            if (this.fEPackages == null) {
                this.initEPackages();
            }
        }
        return this.fEPackages;
    }

    protected void initEPackages() {
        HashSet<EPackage> ePackages = new HashSet<EPackage>();
        HashSet safeNsURIs = new HashSet(this.getEPackageRegistry().keySet());
        for (String nsURI : safeNsURIs) {
            if (!this.matchesEPackageNsURIPattern(nsURI)) continue;
            ePackages.add(this.getEPackageRegistry().getEPackage(nsURI));
        }
        this.fEPackages = Collections.unmodifiableSet(ePackages);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public EPackage getRootEPackage() {
        EPackage.Registry registry = this.getEPackageRegistry();
        synchronized (registry) {
            if (this.fRootEPackage == null) {
                this.initRootEPackage();
            }
        }
        return this.fRootEPackage;
    }

    protected void initRootEPackage() {
        this.fRootEPackage = this.getEPackageRegistry().getEPackage(this.getNamespace());
        if (this.fRootEPackage == null) {
            for (URI compatibleNamespaceURI : this.getCompatibleNamespaceURIs()) {
                this.fRootEPackage = this.getEPackageRegistry().getEPackage(compatibleNamespaceURI.toString());
                if (this.fRootEPackage != null) break;
            }
        }
    }

    @Override
    @Deprecated
    public EPackage getEPackage() {
        return this.getRootEPackage();
    }

    @Override
    @Deprecated
    public boolean isEPackageRegistered() {
        return this.getRootEPackage() != null;
    }

    @Override
    public EFactory getRootEFactory() {
        EPackage ePackage = this.getRootEPackage();
        if (ePackage != null) {
            return ePackage.getEFactoryInstance();
        }
        return null;
    }

    @Override
    @Deprecated
    public EFactory getEFactory() {
        return this.getRootEFactory();
    }

    @Override
    public List<String> getContentTypeIds() {
        if (this.fContentTypeIds == null) {
            this.initContentTypeIds();
        }
        return Collections.unmodifiableList(this.fContentTypeIds);
    }

    protected void initContentTypeIds() {
        ArrayList<String> safeContentTypeIds = new ArrayList<String>(1);
        String defaultContentTypeId = this.getDefaultContentTypeId();
        if (defaultContentTypeId != null && defaultContentTypeId.length() > 0) {
            safeContentTypeIds.add(defaultContentTypeId);
        }
        this.fContentTypeIds = safeContentTypeIds;
    }

    @Override
    public abstract String getDefaultContentTypeId();

    @Deprecated
    protected String getRootEPackageContentTypeId() {
        try {
            Object contentTypeId;
            EPackage rootPackage = this.getRootEPackage();
            if (rootPackage != null && (contentTypeId = ReflectUtil.getFieldValue((Object)rootPackage, (String)"eCONTENT_TYPE")) instanceof String) {
                return (String)contentTypeId;
            }
        }
        catch (Exception exception) {}
        return "";
    }

    @Override
    public List<String> getCompatibleContentTypeIds() {
        HashSet<String> compatibleContentTypeIds = new HashSet<String>();
        for (IMetaModelDescriptor resourceVersionDescriptor : this.getCompatibleResourceVersionDescriptors()) {
            if (resourceVersionDescriptor == this) continue;
            compatibleContentTypeIds.addAll(resourceVersionDescriptor.getContentTypeIds());
        }
        return Collections.unmodifiableList(new ArrayList(compatibleContentTypeIds));
    }

    @Override
    public List<URI> getCompatibleNamespaceURIs() {
        ArrayList<URI> compatibleNamespaceURIs = new ArrayList<URI>();
        for (IMetaModelDescriptor resourceVersionDescriptor : this.getCompatibleResourceVersionDescriptors()) {
            if (resourceVersionDescriptor == this) continue;
            compatibleNamespaceURIs.add(resourceVersionDescriptor.getNamespaceURI());
        }
        return Collections.unmodifiableList(compatibleNamespaceURIs);
    }

    @Override
    public Collection<IMetaModelDescriptor> getCompatibleResourceVersionDescriptors() {
        return Collections.emptyList();
    }

    public boolean equals(Object obj) {
        if (obj instanceof AbstractMetaModelDescriptor) {
            AbstractMetaModelDescriptor otherRelease = (AbstractMetaModelDescriptor)obj;
            return this.getIdentifier().equals(otherRelease.getIdentifier());
        }
        return false;
    }

    public int hashCode() {
        return this.fIdentifier.hashCode();
    }

    public String toString() {
        return this.getName();
    }
}

