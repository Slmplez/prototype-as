/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.pb.tools;

import java.math.BigInteger;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class WeightedObject<T>
implements Comparable<WeightedObject<T>> {
    public final T thing;
    private BigInteger weight;

    private WeightedObject(T t, BigInteger bigInteger) {
        this.thing = t;
        this.weight = bigInteger;
    }

    public BigInteger getWeight() {
        return this.weight;
    }

    public void increaseWeight(BigInteger bigInteger) {
        this.weight = this.weight.add(bigInteger);
    }

    @Override
    public int compareTo(WeightedObject<T> weightedObject) {
        return this.weight.compareTo(weightedObject.getWeight());
    }

    public static <E> WeightedObject<E> newWO(E e, int n) {
        return new WeightedObject<E>(e, BigInteger.valueOf(n));
    }

    public static <E> WeightedObject<E> newWO(E e, long l) {
        return new WeightedObject<E>(e, BigInteger.valueOf(l));
    }

    public static <E> WeightedObject<E> newWO(E e, BigInteger bigInteger) {
        return new WeightedObject<E>(e, bigInteger);
    }

    public int hashCode() {
        int n = 1;
        n = 31 * n + (this.thing == null ? 0 : this.thing.hashCode());
        n = 31 * n + (this.weight == null ? 0 : this.weight.hashCode());
        return n;
    }

    public boolean equals(Object object) {
        if (this == object) {
            return true;
        }
        if (object == null) {
            return false;
        }
        if (this.getClass() != object.getClass()) {
            return false;
        }
        WeightedObject weightedObject = (WeightedObject)object;
        if (this.thing == null ? weightedObject.thing != null : !this.thing.equals(weightedObject.thing)) {
            return false;
        }
        return !(this.weight == null ? weightedObject.weight != null : !this.weight.equals(weightedObject.weight));
    }

    @Override
    public /* synthetic */ int compareTo(Object object) {
        return this.compareTo((WeightedObject)object);
    }
}

