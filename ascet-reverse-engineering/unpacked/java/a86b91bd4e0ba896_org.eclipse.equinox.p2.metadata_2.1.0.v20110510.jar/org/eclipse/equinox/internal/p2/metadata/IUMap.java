/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.internal.p2.core.helpers.CollectionUtils
 *  org.eclipse.equinox.p2.core.IPool
 */
package org.eclipse.equinox.internal.p2.metadata;

import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import org.eclipse.equinox.internal.p2.core.helpers.CollectionUtils;
import org.eclipse.equinox.p2.core.IPool;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.metadata.Version;
import org.eclipse.equinox.p2.query.CollectionResult;
import org.eclipse.equinox.p2.query.Collector;
import org.eclipse.equinox.p2.query.IQuery;
import org.eclipse.equinox.p2.query.IQueryResult;
import org.eclipse.equinox.p2.query.QueryUtil;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class IUMap
implements Cloneable {
    final Map<String, Object> units = new HashMap<String, Object>();

    public IUMap() {
    }

    private IUMap(IUMap cloneSource) {
        this.units.putAll(cloneSource.units);
    }

    public void add(IInstallableUnit unit) {
        String key = unit.getId();
        Object matching = this.units.get(key);
        if (matching == null) {
            this.units.put(key, unit);
            return;
        }
        if (matching.getClass().isArray()) {
            IInstallableUnit[] iuArr = (IInstallableUnit[])matching;
            int idx = iuArr.length;
            while (--idx >= 0) {
                if (!iuArr[idx].equals(unit)) continue;
                return;
            }
            IInstallableUnit[] iuArrPlus = new IInstallableUnit[iuArr.length + 1];
            System.arraycopy(iuArr, 0, iuArrPlus, 0, iuArr.length);
            iuArrPlus[iuArr.length] = unit;
            this.units.put(unit.getId(), iuArrPlus);
        } else {
            IInstallableUnit old = (IInstallableUnit)matching;
            if (!old.equals(unit)) {
                this.units.put(key, new IInstallableUnit[]{old, unit});
            }
        }
    }

    public void addAll(IInstallableUnit[] toAdd) {
        int i = 0;
        while (i < toAdd.length) {
            this.add(toAdd[i]);
            ++i;
        }
    }

    public void addAll(Collection<IInstallableUnit> toAdd) {
        for (IInstallableUnit unit : toAdd) {
            this.add(unit);
        }
    }

    public void clear() {
        this.units.clear();
    }

    public IUMap clone() {
        return new IUMap(this);
    }

    public Iterator<IInstallableUnit> iterator() {
        return new MapIterator();
    }

    public boolean contains(IInstallableUnit unit) {
        return !this.internalGet(unit.getId(), unit.getVersion()).isEmpty();
    }

    public Collection<IInstallableUnit> getUnits(String id) {
        Object bucket = this.units.get(id);
        if (bucket == null) {
            return CollectionUtils.emptyList();
        }
        return bucket.getClass().isArray() ? CollectionUtils.unmodifiableList((Object[])((IInstallableUnit[])bucket)) : Collections.singletonList((IInstallableUnit)bucket);
    }

    public IQueryResult<IInstallableUnit> get(String id) {
        return this.internalGet(id, null);
    }

    private IQueryResult<IInstallableUnit> internalGet(String id, Version version) {
        if (id == null) {
            IQuery<IInstallableUnit> query = version == null ? QueryUtil.createIUAnyQuery() : QueryUtil.createIUQuery(null, version);
            return query.perform(this.iterator());
        }
        Collection<IInstallableUnit> idUnits = this.getUnits(id);
        if (idUnits.isEmpty()) {
            return Collector.emptyCollector();
        }
        return version == null ? new CollectionResult<IInstallableUnit>(idUnits) : QueryUtil.createIUQuery(id, version).perform(idUnits.iterator());
    }

    public IInstallableUnit get(String id, Version version) {
        IQueryResult<IInstallableUnit> result = this.internalGet(id, version);
        return result.isEmpty() ? null : result.iterator().next();
    }

    public void remove(IInstallableUnit unit) {
        String key = unit.getId();
        Object matching = this.units.get(key);
        if (matching == null) {
            return;
        }
        if (matching instanceof IInstallableUnit) {
            if (matching.equals(unit)) {
                this.units.remove(key);
            }
            return;
        }
        IInstallableUnit[] array = (IInstallableUnit[])matching;
        int idx = array.length;
        while (--idx >= 0) {
            if (!unit.equals(array[idx])) continue;
            if (array.length == 2) {
                this.units.put(key, idx == 0 ? array[1] : array[0]);
                break;
            }
            IInstallableUnit[] newArray = new IInstallableUnit[array.length - 1];
            if (idx > 0) {
                System.arraycopy(array, 0, newArray, 0, idx);
            }
            if (idx + 1 < array.length) {
                System.arraycopy(array, idx + 1, newArray, idx, array.length - (idx + 1));
            }
            this.units.put(key, newArray);
            break;
        }
    }

    public void removeAll(Collection<IInstallableUnit> toRemove) {
        for (IInstallableUnit iu : toRemove) {
            this.remove(iu);
        }
    }

    public void compress(IPool<IInstallableUnit> iuPool) {
        if (iuPool == null) {
            return;
        }
        for (Map.Entry<String, Object> entry : this.units.entrySet()) {
            Object value = entry.getValue();
            if (value.getClass().isArray()) {
                IInstallableUnit[] array = (IInstallableUnit[])value;
                int i = 0;
                while (i < array.length) {
                    array[i] = (IInstallableUnit)iuPool.add((Object)array[i]);
                    ++i;
                }
                continue;
            }
            entry.setValue(iuPool.add((Object)((IInstallableUnit)value)));
        }
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public class MapIterator
    implements Iterator<IInstallableUnit> {
        private final Iterator<Object> unitIterator;
        private IInstallableUnit[] currentBucket;
        private int bucketIndex = 0;
        private IInstallableUnit nextElement = null;

        MapIterator() {
            this.unitIterator = IUMap.this.units.values().iterator();
        }

        @Override
        public boolean hasNext() {
            return this.positionNext();
        }

        @Override
        public IInstallableUnit next() {
            if (!this.positionNext()) {
                throw new NoSuchElementException();
            }
            IInstallableUnit nxt = this.nextElement;
            this.nextElement = null;
            return nxt;
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }

        private boolean positionNext() {
            if (this.nextElement != null) {
                return true;
            }
            if (this.currentBucket != null) {
                this.nextElement = this.currentBucket[this.bucketIndex];
                if (++this.bucketIndex == this.currentBucket.length) {
                    this.currentBucket = null;
                    this.bucketIndex = -1;
                }
                return true;
            }
            if (!this.unitIterator.hasNext()) {
                return false;
            }
            Object val = this.unitIterator.next();
            if (val instanceof IInstallableUnit) {
                this.nextElement = (IInstallableUnit)val;
            } else {
                this.currentBucket = (IInstallableUnit[])val;
                this.nextElement = this.currentBucket[0];
                this.bucketIndex = 1;
            }
            return true;
        }
    }
}

