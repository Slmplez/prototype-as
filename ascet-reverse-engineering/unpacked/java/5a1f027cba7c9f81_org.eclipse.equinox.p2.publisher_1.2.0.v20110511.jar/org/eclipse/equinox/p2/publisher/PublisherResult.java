/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.internal.p2.metadata.IUMap
 *  org.eclipse.equinox.internal.p2.metadata.expression.CompoundIterator
 *  org.eclipse.equinox.internal.p2.metadata.index.CompoundIndex
 *  org.eclipse.equinox.internal.p2.metadata.index.IdIndex
 *  org.eclipse.equinox.internal.p2.metadata.index.IndexProvider
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.equinox.p2.metadata.Version
 *  org.eclipse.equinox.p2.metadata.index.IIndex
 *  org.eclipse.equinox.p2.query.IQueryResult
 */
package org.eclipse.equinox.p2.publisher;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import org.eclipse.equinox.internal.p2.metadata.IUMap;
import org.eclipse.equinox.internal.p2.metadata.expression.CompoundIterator;
import org.eclipse.equinox.internal.p2.metadata.index.CompoundIndex;
import org.eclipse.equinox.internal.p2.metadata.index.IdIndex;
import org.eclipse.equinox.internal.p2.metadata.index.IndexProvider;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.metadata.Version;
import org.eclipse.equinox.p2.metadata.index.IIndex;
import org.eclipse.equinox.p2.publisher.IPublisherResult;
import org.eclipse.equinox.p2.query.IQueryResult;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class PublisherResult
extends IndexProvider<IInstallableUnit>
implements IPublisherResult {
    final IUMap rootIUs = new IUMap();
    final IUMap nonRootIUs = new IUMap();
    private IIndex<IInstallableUnit> idIndex;

    @Override
    public void addIU(IInstallableUnit iu, String type) {
        if (type == "root") {
            this.rootIUs.add(iu);
        }
        if (type == "non_root") {
            this.nonRootIUs.add(iu);
        }
    }

    @Override
    public void addIUs(Collection<IInstallableUnit> ius, String type) {
        for (IInstallableUnit iu : ius) {
            this.addIU(iu, type);
        }
    }

    @Override
    public IInstallableUnit getIU(String id, Version version, String type) {
        IInstallableUnit result;
        if ((type == null || type == "root") && (result = this.rootIUs.get(id, version)) != null) {
            return result;
        }
        if ((type == null || type == "non_root") && (result = this.nonRootIUs.get(id, version)) != null) {
            return result;
        }
        return null;
    }

    @Override
    public IInstallableUnit getIU(String id, String type) {
        IQueryResult ius;
        if (!(type != null && type != "root" || (ius = this.rootIUs.get(id)).isEmpty())) {
            return (IInstallableUnit)ius.iterator().next();
        }
        if (!(type != null && type != "non_root" || (ius = this.nonRootIUs.get(id)).isEmpty())) {
            return (IInstallableUnit)ius.iterator().next();
        }
        return null;
    }

    @Override
    public Collection<IInstallableUnit> getIUs(String id, String type) {
        if (type == null) {
            ArrayList<IInstallableUnit> result = new ArrayList<IInstallableUnit>();
            result.addAll(this.rootIUs.get(id).toUnmodifiableSet());
            result.addAll(this.nonRootIUs.get(id).toUnmodifiableSet());
            return result;
        }
        if (type == "root") {
            return this.rootIUs.get(id).toUnmodifiableSet();
        }
        if (type == "non_root") {
            return this.nonRootIUs.get(id).toUnmodifiableSet();
        }
        return null;
    }

    @Override
    public void merge(IPublisherResult result, int mode) {
        if (mode == 0) {
            this.addIUs(result.getIUs(null, "root"), "root");
            this.addIUs(result.getIUs(null, "non_root"), "non_root");
        } else if (mode == 1) {
            this.addIUs(result.getIUs(null, "root"), "root");
            this.addIUs(result.getIUs(null, "non_root"), "root");
        } else if (mode == 2) {
            this.addIUs(result.getIUs(null, "root"), "non_root");
            this.addIUs(result.getIUs(null, "non_root"), "non_root");
        }
    }

    public synchronized IIndex<IInstallableUnit> getIndex(String memberName) {
        if ("id".equals(memberName)) {
            if (this.idIndex == null) {
                ArrayList<IdIndex> indexes = new ArrayList<IdIndex>();
                indexes.add(new IdIndex(this.nonRootIUs));
                indexes.add(new IdIndex(this.rootIUs));
                this.idIndex = new CompoundIndex(indexes);
            }
            return this.idIndex;
        }
        return null;
    }

    public Iterator<IInstallableUnit> everything() {
        ArrayList<Iterator> iterators = new ArrayList<Iterator>();
        iterators.add(this.nonRootIUs.iterator());
        iterators.add(this.rootIUs.iterator());
        return new CompoundIterator(iterators.iterator());
    }

    public Object getManagedProperty(Object client, String memberName, Object key) {
        return null;
    }
}

