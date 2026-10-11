/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  javax.annotation.Nullable
 */
package com.google.common.base;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Function;
import com.google.common.base.Joiner;
import com.google.common.base.Platform;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import javax.annotation.Nullable;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
@GwtCompatible
public final class Predicates {
    private static final Joiner commaJoiner = Joiner.on(",");

    private Predicates() {
    }

    @GwtCompatible(serializable=true)
    public static <T> Predicate<T> alwaysTrue() {
        return AlwaysTruePredicate.INSTANCE;
    }

    @GwtCompatible(serializable=true)
    public static <T> Predicate<T> alwaysFalse() {
        return AlwaysFalsePredicate.INSTANCE;
    }

    public static <T> Predicate<T> isNull() {
        return IsNullPredicate.INSTANCE;
    }

    public static <T> Predicate<T> notNull() {
        return NotNullPredicate.INSTANCE;
    }

    public static <T> Predicate<T> not(Predicate<T> predicate) {
        return new NotPredicate(predicate);
    }

    public static <T> Predicate<T> and(Iterable<? extends Predicate<? super T>> components) {
        return new AndPredicate(Predicates.defensiveCopy(components));
    }

    public static <T> Predicate<T> and(Predicate<? super T> ... components) {
        return new AndPredicate(Predicates.defensiveCopy(components));
    }

    public static <T> Predicate<T> and(Predicate<? super T> first, Predicate<? super T> second) {
        return new AndPredicate(Predicates.asList(Preconditions.checkNotNull(first), Preconditions.checkNotNull(second)));
    }

    public static <T> Predicate<T> or(Iterable<? extends Predicate<? super T>> components) {
        return new OrPredicate(Predicates.defensiveCopy(components));
    }

    public static <T> Predicate<T> or(Predicate<? super T> ... components) {
        return new OrPredicate(Predicates.defensiveCopy(components));
    }

    public static <T> Predicate<T> or(Predicate<? super T> first, Predicate<? super T> second) {
        return new OrPredicate(Predicates.asList(Preconditions.checkNotNull(first), Preconditions.checkNotNull(second)));
    }

    public static <T> Predicate<T> equalTo(@Nullable T target) {
        return target == null ? Predicates.isNull() : new IsEqualToPredicate(target);
    }

    @GwtIncompatible(value="Class.isInstance")
    public static Predicate<Object> instanceOf(Class<?> clazz) {
        return new InstanceOfPredicate(clazz);
    }

    public static <T> Predicate<T> in(Collection<? extends T> target) {
        return new InPredicate(target);
    }

    public static <A, B> Predicate<A> compose(Predicate<B> predicate, Function<A, ? extends B> function) {
        return new CompositionPredicate(predicate, function);
    }

    private static boolean iterableElementsEqual(Iterable<?> iterable1, Iterable<?> iterable2) {
        Iterator<?> iterator1 = iterable1.iterator();
        Iterator<?> iterator2 = iterable2.iterator();
        while (iterator1.hasNext()) {
            if (!iterator2.hasNext()) {
                return false;
            }
            if (iterator1.next().equals(iterator2.next())) continue;
            return false;
        }
        return !iterator2.hasNext();
    }

    private static <T> List<Predicate<? super T>> asList(Predicate<? super T> first, Predicate<? super T> second) {
        return Arrays.asList(first, second);
    }

    private static <T> List<T> defensiveCopy(T ... array) {
        return Predicates.defensiveCopy(Arrays.asList(array));
    }

    static <T> List<T> defensiveCopy(Iterable<T> iterable) {
        ArrayList<T> list = new ArrayList<T>();
        for (T element : iterable) {
            list.add(Preconditions.checkNotNull(element));
        }
        return list;
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    static enum AlwaysFalsePredicate implements Predicate<Object>
    {
        INSTANCE;


        @Override
        public boolean apply(Object o) {
            return false;
        }

        public String toString() {
            return "AlwaysFalse";
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    static enum AlwaysTruePredicate implements Predicate<Object>
    {
        INSTANCE;


        @Override
        public boolean apply(Object o) {
            return true;
        }

        public String toString() {
            return "AlwaysTrue";
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class AndPredicate<T>
    implements Predicate<T>,
    Serializable {
        private final Iterable<? extends Predicate<? super T>> components;
        private static final long serialVersionUID = 0L;

        private AndPredicate(Iterable<? extends Predicate<? super T>> components) {
            this.components = components;
        }

        @Override
        public boolean apply(T t) {
            for (Predicate<T> predicate : this.components) {
                if (predicate.apply(t)) continue;
                return false;
            }
            return true;
        }

        public int hashCode() {
            int result = -1;
            for (Predicate<T> predicate : this.components) {
                result &= predicate.hashCode();
            }
            return result;
        }

        @Override
        public boolean equals(Object obj) {
            if (obj instanceof AndPredicate) {
                AndPredicate that = (AndPredicate)obj;
                return Predicates.iterableElementsEqual(this.components, that.components);
            }
            return false;
        }

        public String toString() {
            return "And(" + commaJoiner.join(this.components) + ")";
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class CompositionPredicate<A, B>
    implements Predicate<A>,
    Serializable {
        final Predicate<B> p;
        final Function<A, ? extends B> f;
        private static final long serialVersionUID = 0L;

        private CompositionPredicate(Predicate<B> p, Function<A, ? extends B> f) {
            this.p = Preconditions.checkNotNull(p);
            this.f = Preconditions.checkNotNull(f);
        }

        @Override
        public boolean apply(A a) {
            return this.p.apply(this.f.apply(a));
        }

        @Override
        public boolean equals(Object obj) {
            if (obj instanceof CompositionPredicate) {
                CompositionPredicate that = (CompositionPredicate)obj;
                return ((Object)this.f).equals(that.f) && ((Object)this.p).equals(that.p);
            }
            return false;
        }

        public int hashCode() {
            return this.f.hashCode() ^ this.p.hashCode();
        }

        public String toString() {
            return this.p.toString() + "(" + this.f.toString() + ")";
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class InPredicate<T>
    implements Predicate<T>,
    Serializable {
        private final Collection<?> target;
        private static final long serialVersionUID = 0L;

        private InPredicate(Collection<?> target) {
            this.target = Preconditions.checkNotNull(target);
        }

        @Override
        public boolean apply(T t) {
            try {
                return this.target.contains(t);
            }
            catch (NullPointerException e) {
                return false;
            }
            catch (ClassCastException e) {
                return false;
            }
        }

        @Override
        public boolean equals(Object obj) {
            if (obj instanceof InPredicate) {
                InPredicate that = (InPredicate)obj;
                return ((Object)this.target).equals(that.target);
            }
            return false;
        }

        public int hashCode() {
            return ((Object)this.target).hashCode();
        }

        public String toString() {
            return "In(" + this.target + ")";
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class InstanceOfPredicate
    implements Predicate<Object>,
    Serializable {
        private final Class<?> clazz;
        private static final long serialVersionUID = 0L;

        private InstanceOfPredicate(Class<?> clazz) {
            this.clazz = Preconditions.checkNotNull(clazz);
        }

        @Override
        public boolean apply(Object o) {
            return Platform.isInstance(this.clazz, o);
        }

        public int hashCode() {
            return this.clazz.hashCode();
        }

        @Override
        public boolean equals(Object obj) {
            if (obj instanceof InstanceOfPredicate) {
                InstanceOfPredicate that = (InstanceOfPredicate)obj;
                return this.clazz == that.clazz;
            }
            return false;
        }

        public String toString() {
            return "IsInstanceOf(" + this.clazz.getName() + ")";
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class IsEqualToPredicate<T>
    implements Predicate<T>,
    Serializable {
        private final T target;
        private static final long serialVersionUID = 0L;

        private IsEqualToPredicate(T target) {
            this.target = target;
        }

        @Override
        public boolean apply(T t) {
            return this.target.equals(t);
        }

        public int hashCode() {
            return this.target.hashCode();
        }

        @Override
        public boolean equals(Object obj) {
            if (obj instanceof IsEqualToPredicate) {
                IsEqualToPredicate that = (IsEqualToPredicate)obj;
                return this.target.equals(that.target);
            }
            return false;
        }

        public String toString() {
            return "IsEqualTo(" + this.target + ")";
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static enum IsNullPredicate implements Predicate<Object>
    {
        INSTANCE;


        @Override
        public boolean apply(Object o) {
            return o == null;
        }

        public String toString() {
            return "IsNull";
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static enum NotNullPredicate implements Predicate<Object>
    {
        INSTANCE;


        @Override
        public boolean apply(Object o) {
            return o != null;
        }

        public String toString() {
            return "NotNull";
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class NotPredicate<T>
    implements Predicate<T>,
    Serializable {
        private final Predicate<T> predicate;
        private static final long serialVersionUID = 0L;

        private NotPredicate(Predicate<T> predicate) {
            this.predicate = Preconditions.checkNotNull(predicate);
        }

        @Override
        public boolean apply(T t) {
            return !this.predicate.apply(t);
        }

        public int hashCode() {
            return ~this.predicate.hashCode();
        }

        @Override
        public boolean equals(Object obj) {
            if (obj instanceof NotPredicate) {
                NotPredicate that = (NotPredicate)obj;
                return ((Object)this.predicate).equals(that.predicate);
            }
            return false;
        }

        public String toString() {
            return "Not(" + this.predicate.toString() + ")";
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class OrPredicate<T>
    implements Predicate<T>,
    Serializable {
        private final Iterable<? extends Predicate<? super T>> components;
        private static final long serialVersionUID = 0L;

        private OrPredicate(Iterable<? extends Predicate<? super T>> components) {
            this.components = components;
        }

        @Override
        public boolean apply(T t) {
            for (Predicate<T> predicate : this.components) {
                if (!predicate.apply(t)) continue;
                return true;
            }
            return false;
        }

        public int hashCode() {
            int result = 0;
            for (Predicate<T> predicate : this.components) {
                result |= predicate.hashCode();
            }
            return result;
        }

        @Override
        public boolean equals(Object obj) {
            if (obj instanceof OrPredicate) {
                OrPredicate that = (OrPredicate)obj;
                return Predicates.iterableElementsEqual(this.components, that.components);
            }
            return false;
        }

        public String toString() {
            return "Or(" + commaJoiner.join(this.components) + ")";
        }
    }
}

