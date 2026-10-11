/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.internal.p2.core.helpers.CollectionUtils
 *  org.eclipse.equinox.internal.p2.metadata.TranslationSupport
 *  org.eclipse.equinox.internal.p2.metadata.index.CapabilityIndex
 *  org.eclipse.equinox.internal.p2.metadata.index.IndexProvider
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.equinox.p2.metadata.KeyWithLocale
 *  org.eclipse.equinox.p2.metadata.index.IIndex
 *  org.eclipse.equinox.p2.query.IQueryable
 */
package org.eclipse.equinox.internal.p2.director;

import java.util.Iterator;
import java.util.List;
import org.eclipse.equinox.internal.p2.core.helpers.CollectionUtils;
import org.eclipse.equinox.internal.p2.metadata.TranslationSupport;
import org.eclipse.equinox.internal.p2.metadata.index.CapabilityIndex;
import org.eclipse.equinox.internal.p2.metadata.index.IndexProvider;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.metadata.KeyWithLocale;
import org.eclipse.equinox.p2.metadata.index.IIndex;
import org.eclipse.equinox.p2.query.IQueryable;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class QueryableArray
extends IndexProvider<IInstallableUnit> {
    private final List<IInstallableUnit> dataSet;
    private IIndex<IInstallableUnit> capabilityIndex;
    private TranslationSupport translationSupport;

    public QueryableArray(IInstallableUnit[] ius) {
        this.dataSet = CollectionUtils.unmodifiableList((Object[])ius);
    }

    public Iterator<IInstallableUnit> everything() {
        return this.dataSet.iterator();
    }

    public synchronized IIndex<IInstallableUnit> getIndex(String memberName) {
        if ("providedCapabilities".equals(memberName)) {
            if (this.capabilityIndex == null) {
                this.capabilityIndex = new CapabilityIndex(this.dataSet.iterator());
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
}

