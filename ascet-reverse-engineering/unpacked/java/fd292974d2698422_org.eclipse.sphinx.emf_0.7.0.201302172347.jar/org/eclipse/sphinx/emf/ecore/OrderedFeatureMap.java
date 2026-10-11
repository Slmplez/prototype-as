/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.DelegatingEList
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.util.BasicFeatureMap
 *  org.eclipse.emf.ecore.util.FeatureMap$Entry
 */
package org.eclipse.sphinx.emf.ecore;

import java.util.Collection;
import java.util.List;
import org.eclipse.emf.common.util.DelegatingEList;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.util.BasicFeatureMap;
import org.eclipse.emf.ecore.util.FeatureMap;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class OrderedFeatureMap
extends BasicFeatureMap {
    private static final long serialVersionUID = 1L;
    ListBehavior<FeatureMap.Entry> lb = new OrderedListBehavior<FeatureMap.Entry>((List<FeatureMap.Entry>)new DelegatingEList<FeatureMap.Entry>(){
        private static final long serialVersionUID = 1L;

        protected List<FeatureMap.Entry> delegateList() {
            return OrderedFeatureMap.this;
        }

        public void add(int index, FeatureMap.Entry object) {
            OrderedFeatureMap.super.doAdd(index, object);
        }

        public FeatureMap.Entry set(int index, FeatureMap.Entry object) {
            return OrderedFeatureMap.super.doSet(index, object);
        }
    }, new Order<FeatureMap.Entry>(){

        @Override
        public int order(FeatureMap.Entry e) {
            int order = OrderedFeatureMap.this.owner.eClass().getFeatureID(e.getEStructuralFeature());
            if (order != -1) {
                return order;
            }
            return -1;
        }
    });

    public OrderedFeatureMap(InternalEObject owner, int featureID) {
        super(owner, featureID);
    }

    public OrderedFeatureMap(InternalEObject owner, int featureID, EStructuralFeature eStructuralFeature) {
        super(owner, featureID, eStructuralFeature);
    }

    protected boolean doAdd(FeatureMap.Entry object) {
        this.doAdd(this.size(), object);
        return true;
    }

    public FeatureMap.Entry doSet(int index, FeatureMap.Entry object) {
        return this.lb.set(index, object);
    }

    public void doAdd(int index, FeatureMap.Entry object) {
        this.lb.add(index, object);
    }

    public boolean doAddAll(Collection<? extends FeatureMap.Entry> collection) {
        return this.doAddAll(this.size(), collection);
    }

    public boolean doAddAll(int index, Collection<? extends FeatureMap.Entry> collection) {
        this.lb.addAll(index, collection);
        return collection.size() > 0;
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static interface ListBehavior<T> {
        public void add(int var1, T var2);

        public T set(int var1, T var2);

        public void addAll(int var1, Collection<? extends T> var2);
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static interface Order<T> {
        public int order(T var1);
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static class OrderedListBehavior<T>
    implements ListBehavior<T> {
        private final List<T> list;
        private final Order<T> order;

        public OrderedListBehavior(List<T> list, Order<T> order) {
            this.list = list;
            this.order = order;
        }

        @Override
        public void add(int index, T t) {
            int ot = this.order.order(t);
            if (ot == -1) {
                this.list.add(index, t);
                return;
            }
            int oi = index == this.list.size() ? Integer.MAX_VALUE : this.order.order(this.list.get(index));
            if (ot > oi) {
                while ((oi = ++index == this.list.size() ? Integer.MAX_VALUE : this.order.order(this.list.get(index))) < ot) {
                }
                this.list.add(index, t);
            } else if (ot < oi) {
                while ((oi = --index < 0 ? Integer.MIN_VALUE : this.order.order(this.list.get(index))) > ot) {
                }
                this.list.add(index + 1, t);
            } else {
                this.list.add(index, t);
            }
        }

        @Override
        public T set(int index, T t) {
            T previous = this.list.get(index);
            if (this.order.order(previous) != this.order.order(t)) {
                throw new IllegalStateException("Only elements with equal order may be overwritten by a set operation.");
            }
            return this.list.set(index, t);
        }

        @Override
        public void addAll(int index, Collection<? extends T> c) {
            int i = 0;
            for (T t : c) {
                this.add(index + i, t);
                ++i;
            }
        }
    }
}

