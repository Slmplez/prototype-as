/*
 * Decompiled with CFR 0.152.
 */
package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Equivalences;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.collect.CustomConcurrentHashMap;
import com.google.common.collect.GenericMapMaker;
import com.google.common.collect.Interner;
import com.google.common.collect.MapMaker;
import java.util.concurrent.ConcurrentMap;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
@Beta
public final class Interners {
    private Interners() {
    }

    public static <E> Interner<E> newStrongInterner() {
        final ConcurrentMap map = new MapMaker().makeMap();
        return new Interner<E>(){

            @Override
            public E intern(E sample) {
                Object canonical = map.putIfAbsent(Preconditions.checkNotNull(sample), sample);
                return canonical == null ? sample : canonical;
            }
        };
    }

    @GwtIncompatible(value="java.lang.ref.WeakReference")
    public static <E> Interner<E> newWeakInterner() {
        return new CustomInterner<Object>(new MapMaker().weakKeys());
    }

    public static <E> Function<E, E> asFunction(Interner<E> interner) {
        return new InternerFunction<E>(Preconditions.checkNotNull(interner));
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class CustomInterner<E>
    implements Interner<E> {
        private final CustomConcurrentHashMap<E, Dummy> map;

        CustomInterner(GenericMapMaker<? super E, Object> mm) {
            this.map = mm.strongValues().keyEquivalence(Equivalences.equals()).makeCustomMap();
        }

        @Override
        public E intern(E sample) {
            Dummy sneaky;
            do {
                E canonical;
                CustomConcurrentHashMap.ReferenceEntry<E, Dummy> entry;
                if ((entry = this.map.getEntry(sample)) == null || (canonical = entry.getKey()) == null) continue;
                return canonical;
            } while ((sneaky = this.map.putIfAbsent(sample, Dummy.VALUE)) != null);
            return sample;
        }

        /*
         * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
         */
        private static enum Dummy {
            VALUE;

        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class InternerFunction<E>
    implements Function<E, E> {
        private final Interner<E> interner;

        public InternerFunction(Interner<E> interner) {
            this.interner = interner;
        }

        @Override
        public E apply(E input) {
            return this.interner.intern(input);
        }

        public int hashCode() {
            return this.interner.hashCode();
        }

        @Override
        public boolean equals(Object other) {
            if (other instanceof InternerFunction) {
                InternerFunction that = (InternerFunction)other;
                return this.interner.equals(that.interner);
            }
            return false;
        }
    }
}

