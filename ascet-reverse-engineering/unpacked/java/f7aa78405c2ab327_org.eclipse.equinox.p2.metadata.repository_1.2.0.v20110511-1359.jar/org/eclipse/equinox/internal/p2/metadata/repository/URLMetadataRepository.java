/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.URIUtil
 *  org.eclipse.equinox.internal.p2.core.helpers.CollectionUtils
 *  org.eclipse.equinox.internal.p2.metadata.IUMap
 *  org.eclipse.equinox.internal.p2.metadata.TranslationSupport
 *  org.eclipse.equinox.internal.p2.metadata.index.CapabilityIndex
 *  org.eclipse.equinox.internal.p2.metadata.index.IdIndex
 *  org.eclipse.equinox.internal.p2.metadata.index.IndexProvider
 *  org.eclipse.equinox.p2.core.IProvisioningAgent
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.equinox.p2.metadata.KeyWithLocale
 *  org.eclipse.equinox.p2.metadata.index.IIndex
 *  org.eclipse.equinox.p2.metadata.index.IIndexProvider
 *  org.eclipse.equinox.p2.query.IQuery
 *  org.eclipse.equinox.p2.query.IQueryResult
 *  org.eclipse.equinox.p2.query.IQueryable
 *  org.eclipse.equinox.p2.repository.IRepositoryReference
 *  org.eclipse.equinox.p2.repository.metadata.spi.AbstractMetadataRepository
 *  org.eclipse.equinox.p2.repository.metadata.spi.AbstractMetadataRepository$RepositoryState
 */
package org.eclipse.equinox.internal.p2.metadata.repository;

import java.net.URI;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.URIUtil;
import org.eclipse.equinox.internal.p2.core.helpers.CollectionUtils;
import org.eclipse.equinox.internal.p2.metadata.IUMap;
import org.eclipse.equinox.internal.p2.metadata.TranslationSupport;
import org.eclipse.equinox.internal.p2.metadata.index.CapabilityIndex;
import org.eclipse.equinox.internal.p2.metadata.index.IdIndex;
import org.eclipse.equinox.internal.p2.metadata.index.IndexProvider;
import org.eclipse.equinox.p2.core.IProvisioningAgent;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.metadata.KeyWithLocale;
import org.eclipse.equinox.p2.metadata.index.IIndex;
import org.eclipse.equinox.p2.metadata.index.IIndexProvider;
import org.eclipse.equinox.p2.query.IQuery;
import org.eclipse.equinox.p2.query.IQueryResult;
import org.eclipse.equinox.p2.query.IQueryable;
import org.eclipse.equinox.p2.repository.IRepositoryReference;
import org.eclipse.equinox.p2.repository.metadata.spi.AbstractMetadataRepository;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class URLMetadataRepository
extends AbstractMetadataRepository
implements IIndexProvider<IInstallableUnit> {
    public static final String CONTENT_FILENAME = "content";
    protected Collection<IRepositoryReference> references;
    public static final String XML_EXTENSION = ".xml";
    private static final String REPOSITORY_TYPE;
    private static final Integer REPOSITORY_VERSION;
    protected transient URI content;
    protected IUMap units = new IUMap();
    private IIndex<IInstallableUnit> idIndex;
    private IIndex<IInstallableUnit> capabilityIndex;
    private TranslationSupport translationSupport;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.equinox.internal.p2.metadata.repository.URLMetadataRepository");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        REPOSITORY_TYPE = clazz.getName();
        REPOSITORY_VERSION = new Integer(1);
    }

    public static URI getActualLocation(URI base) {
        return URLMetadataRepository.getActualLocation(base, XML_EXTENSION);
    }

    public static URI getActualLocation(URI base, String extension) {
        if (extension == null) {
            extension = XML_EXTENSION;
        }
        return URIUtil.append((URI)base, (String)new StringBuffer(CONTENT_FILENAME).append(extension).toString());
    }

    public URLMetadataRepository(IProvisioningAgent agent) {
        super(agent);
    }

    public URLMetadataRepository(IProvisioningAgent agent, URI location, String name, Map<String, String> properties) {
        super(agent, name == null ? (location != null ? location.toString() : "") : name, REPOSITORY_TYPE, REPOSITORY_VERSION.toString(), location, null, null, properties);
        this.content = URLMetadataRepository.getActualLocation(location);
    }

    protected synchronized URI getContentURL() {
        return this.content;
    }

    public synchronized void initialize(AbstractMetadataRepository.RepositoryState state) {
        this.setName(state.Name);
        this.setType(state.Type);
        this.setVersion(state.Version.toString());
        this.setProvider(state.Provider);
        this.setDescription(state.Description);
        this.setLocation(state.Location);
        this.setProperties(state.Properties);
        this.units.addAll(state.Units);
        this.references = CollectionUtils.unmodifiableList((Object[])state.Repositories);
    }

    public synchronized void initializeAfterLoad(URI repoLocation) {
        this.setLocation(repoLocation);
        this.content = URLMetadataRepository.getActualLocation(repoLocation);
    }

    public Collection<IRepositoryReference> getReferences() {
        return this.references;
    }

    public boolean isModifiable() {
        return false;
    }

    public synchronized IQueryResult<IInstallableUnit> query(IQuery<IInstallableUnit> query, IProgressMonitor monitor) {
        return IndexProvider.query((IIndexProvider)this, query, (IProgressMonitor)monitor);
    }

    public synchronized IIndex<IInstallableUnit> getIndex(String memberName) {
        if ("id".equals(memberName)) {
            if (this.idIndex == null) {
                this.idIndex = new IdIndex(this.units);
            }
            return this.idIndex;
        }
        if ("providedCapabilities".equals(memberName)) {
            if (this.capabilityIndex == null) {
                this.capabilityIndex = new CapabilityIndex(this.units.iterator());
            }
            return this.capabilityIndex;
        }
        return null;
    }

    public synchronized Object getManagedProperty(Object client, String memberName, Object key) {
        if (!(client instanceof IInstallableUnit)) {
            return null;
        }
        IInstallableUnit iu = (IInstallableUnit)client;
        if ("translatedProperties".equals(memberName)) {
            if (this.translationSupport == null) {
                this.translationSupport = new TranslationSupport((IQueryable)this);
            }
            return key instanceof KeyWithLocale ? this.translationSupport.getIUProperty(iu, (KeyWithLocale)key) : this.translationSupport.getIUProperty(iu, key.toString());
        }
        return null;
    }

    public Iterator<IInstallableUnit> everything() {
        return this.units.iterator();
    }
}

