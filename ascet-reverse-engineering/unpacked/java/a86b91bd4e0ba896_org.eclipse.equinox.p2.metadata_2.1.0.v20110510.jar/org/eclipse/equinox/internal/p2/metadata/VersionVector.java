/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.metadata;

import java.io.Serializable;
import org.eclipse.equinox.internal.p2.metadata.EnumDefinition;
import org.eclipse.equinox.internal.p2.metadata.VersionFormat;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class VersionVector
implements Comparable<VersionVector>,
Serializable {
    public static final Comparable<Object> MAX_VALUE = new MaxValue();
    public static final Comparable<Object> MAXS_VALUE = new MaxStringValue();
    public static final Comparable<Object> MIN_VALUE = new MinValue();
    public static final String MINS_VALUE = "";
    private static final long serialVersionUID = -8385373304298723744L;
    private final Comparable<?> padValue;
    private final Comparable<?>[] vector;

    static int compare(Comparable<?>[] vectorA, Comparable<?> padA, Comparable<?>[] vectorB, Comparable<?> padB) {
        int top = vectorA.length;
        if (top > vectorB.length) {
            top = vectorB.length;
        }
        int idx = 0;
        while (idx < top) {
            int cmp = VersionVector.compareSegments(vectorA[idx], vectorB[idx]);
            if (cmp != 0) {
                return cmp;
            }
            ++idx;
        }
        if (top < vectorA.length) {
            return padB == null ? 1 : VersionVector.compareReminder(top, vectorA, padA, padB);
        }
        if (top < vectorB.length) {
            return padA == null ? -1 : -VersionVector.compareReminder(top, vectorB, padB, padA);
        }
        return padA == null ? (padB == null ? 0 : -1) : (padB == null ? 1 : VersionVector.compareSegments(padA, padB));
    }

    /*
     * Unable to fully structure code
     */
    static boolean equals(Comparable<?>[] vectorA, Comparable<?> padValueA, Comparable<?>[] vectorB, Comparable<?> padValueB) {
        if (padValueA == null ? padValueB != null : padValueB == null || padValueA.equals(padValueB) == false) {
            return false;
        }
        idx = vectorA.length;
        if (idx == vectorB.length) ** GOTO lbl8
        return false;
lbl-1000:
        // 1 sources

        {
            if (vectorA[idx].equals(vectorB[idx])) continue;
            return false;
lbl8:
            // 2 sources

            ** while (--idx >= 0)
        }
lbl9:
        // 1 sources

        return true;
    }

    static int hashCode(Comparable<?>[] vector, Comparable<?> padValue) {
        int hashCode = padValue == null ? 31 : padValue.hashCode();
        int idx = vector.length;
        while (--idx >= 0) {
            Comparable<?> elem = vector[idx];
            if (elem != null) {
                hashCode += elem.hashCode();
            }
            hashCode *= 31;
        }
        return hashCode;
    }

    static void toString(StringBuffer sb, Comparable<?>[] vector, Comparable<?> padValue, boolean rangeSafe) {
        int top = vector.length;
        if (top == 0) {
            VersionFormat.rawToString(sb, rangeSafe, padValue == null ? MIN_VALUE : padValue);
        } else {
            int idx = 0;
            while (idx < top) {
                if (idx > 0) {
                    sb.append('.');
                }
                VersionFormat.rawToString(sb, rangeSafe, vector[idx]);
                ++idx;
            }
        }
        if (padValue != null) {
            sb.append('p');
            VersionFormat.rawToString(sb, rangeSafe, padValue);
        }
    }

    private static int compareReminder(int idx, Comparable<?>[] vector, Comparable<?> padValue, Comparable<?> othersPad) {
        int cmp = 0;
        while (idx < vector.length && cmp == 0) {
            cmp = VersionVector.compareSegments(vector[idx], othersPad);
            ++idx;
        }
        if (cmp == 0) {
            cmp = padValue == null ? -1 : VersionVector.compareSegments(padValue, othersPad);
        }
        return cmp;
    }

    static int compareSegments(Comparable<?> a, Comparable<?> b) {
        if (a == b) {
            return 0;
        }
        if (a instanceof Integer && b instanceof Integer) {
            int bi;
            int ai = (Integer)a;
            return ai > (bi = ((Integer)b).intValue()) ? 1 : (ai < bi ? -1 : 0);
        }
        if (a instanceof String && b instanceof String) {
            return ((String)((Object)a)).compareTo((String)((Object)b));
        }
        if (a == MAX_VALUE || a == MIN_VALUE || a == MAXS_VALUE) {
            return ((MinMaxComparable)a).compareTo(b);
        }
        if (b == MAX_VALUE || b == MIN_VALUE || b == MAXS_VALUE) {
            return -((MinMaxComparable)b).compareTo(a);
        }
        if (a instanceof Integer) {
            return 1;
        }
        if (b instanceof Integer) {
            return -1;
        }
        if (a instanceof VersionVector) {
            return b instanceof VersionVector ? ((VersionVector)a).compareTo((VersionVector)b) : 1;
        }
        if (b instanceof VersionVector) {
            return -1;
        }
        if (a instanceof EnumDefinition.EnumSegment) {
            return b instanceof EnumDefinition.EnumSegment ? ((EnumDefinition.EnumSegment)a).compareTo((EnumDefinition.EnumSegment)b) : 1;
        }
        if (b instanceof EnumDefinition.EnumSegment) {
            return -1;
        }
        throw new IllegalArgumentException();
    }

    public VersionVector(Comparable<?>[] vector, Comparable<?> pad) {
        this.vector = vector;
        this.padValue = pad == MIN_VALUE ? null : pad;
    }

    @Override
    public int compareTo(VersionVector ov) {
        if (ov == this) {
            return 0;
        }
        return VersionVector.compare(this.vector, this.padValue, ov.vector, ov.padValue);
    }

    public boolean equals(Object o) {
        if (o == this) {
            return true;
        }
        if (!(o instanceof VersionVector)) {
            return false;
        }
        VersionVector ov = (VersionVector)o;
        return VersionVector.equals(this.vector, this.padValue, ov.vector, ov.padValue);
    }

    public Comparable<?> getPad() {
        return this.padValue;
    }

    public Comparable<?> getSegment(int index) {
        return this.vector[index];
    }

    public int getSegmentCount() {
        return this.vector.length;
    }

    Comparable<?>[] getVector() {
        return this.vector;
    }

    public int hashCode() {
        return VersionVector.hashCode(this.vector, this.padValue);
    }

    public String toString() {
        StringBuffer sb = new StringBuffer();
        this.toString(sb);
        return sb.toString();
    }

    public void toString(StringBuffer sb) {
        VersionVector.toString(sb, this.vector, this.padValue, false);
    }

    void toString(StringBuffer sb, boolean rangeSafe) {
        VersionVector.toString(sb, this.vector, this.padValue, rangeSafe);
    }

    private Object readResolve() {
        VersionVector vv = this;
        int idx = this.vector.length;
        while (--idx >= 0) {
            if (!MINS_VALUE.equals(this.vector[idx])) continue;
            this.vector[idx] = MINS_VALUE;
        }
        if (MINS_VALUE.equals(this.padValue)) {
            vv = new VersionVector(this.vector, (Comparable<?>)((Object)MINS_VALUE));
        }
        return vv;
    }

    private static final class MaxStringValue
    implements MinMaxComparable {
        private static final long serialVersionUID = -4936252230441132767L;

        MaxStringValue() {
        }

        public int compareTo(Object o) {
            return o == this ? 0 : (o == MAX_VALUE || o instanceof Integer || o instanceof EnumDefinition.EnumSegment || o instanceof VersionVector ? -1 : 1);
        }

        private Object readResolve() {
            return MAXS_VALUE;
        }

        public String toString() {
            return "m";
        }
    }

    private static final class MaxValue
    implements MinMaxComparable {
        private static final long serialVersionUID = -5889641741635253589L;

        MaxValue() {
        }

        public int compareTo(Object o) {
            return o == this ? 0 : 1;
        }

        private Object readResolve() {
            return MAX_VALUE;
        }

        public String toString() {
            return "M";
        }
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    static interface MinMaxComparable
    extends Comparable<Object>,
    Serializable {
    }

    private static class MinValue
    implements MinMaxComparable {
        private static final long serialVersionUID = -1066323980049812226L;

        MinValue() {
        }

        public int compareTo(Object o) {
            return o == this ? 0 : -1;
        }

        private Object readResolve() {
            return MIN_VALUE;
        }

        public String toString() {
            return "-M";
        }
    }
}

